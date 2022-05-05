package com.privacystar.core.service.network.handler;

import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.helper.CallerIdRealm;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.service.network.model.response.LookupResponse;
import com.privacystar.core.service.network.util.ObjectCreator;
import com.privacystar.core.util.InformationUtil;
import io.realm.Realm;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/LookupHandler.class */
public class LookupHandler extends PSServiceHandler<LookupRequest, LookupResponse> {
    private static final boolean SHOULD_PERSIST = false;
    private static LookupHandler handlerInstance;

    public static LookupRequest generateRequest(String str, LookupRequest.LookupType lookupType) {
        LookupRequest lookupRequest = new LookupRequest();
        LookupRequest.Payload instantiatePayload = lookupRequest.instantiatePayload();
        lookupRequest.setPayload(instantiatePayload);
        lookupRequest.setUser(PayloadUtil.generateUserPayload());
        PayloadUtil.applyBasePayload(instantiatePayload);
        instantiatePayload.withCallerId(str).withDevid(InformationUtil.getDevicePinOrNothing(PSApplication.context())).withLookupType(lookupType).withPackageName(PSApplication.context().getPackageName());
        return lookupRequest;
    }

    public static LookupHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new LookupHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<LookupResponse> backendRequest(LookupRequest lookupRequest) {
        return PSBackendEndpoint.getLookupInstance().lookupNumber(lookupRequest);
    }

    public void generateAndSendRequest(String str, LookupRequest.LookupType lookupType) {
        enqueueRequest(getInstance(), generateRequest(str, lookupType));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.LOOKUP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(LookupRequest lookupRequest, Response<LookupResponse> response) {
    }

    public void lookupUncachedCaller(Realm realm, String str, LookupRequest.LookupType lookupType) {
        if (CallerFactory.getInstance().getCaller(str).isUnknownNumber()) {
            Timber.m28v("Canceling lookup request for [%s] because number is classified as 'Unknown'.", str);
        } else if (CallerIdRealm.hasEntry(realm, str)) {
            Timber.m28v("Fetching lookup info for %s: is present in local cache. [Expiration extended.]", str);
            CallerIdRealm.extendExpiration(realm, str);
        } else {
            Timber.m28v("Fetching lookup info for %s: not cached locally, requesting from server.", str);
            generateAndSendRequest(str, lookupType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(LookupResponse lookupResponse, LookupRequest lookupRequest) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            ObjectCreator.storeCallerIdFromLookupResponse(defaultInstance, lookupResponse, lookupRequest.getPayload().getCallerNumber());
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
