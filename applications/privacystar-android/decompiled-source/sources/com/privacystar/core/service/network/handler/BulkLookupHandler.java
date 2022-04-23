package com.privacystar.core.service.network.handler;

import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.CallerIdRealm;
import com.privacystar.core.data.model.helper.PendingBulkLookupRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.jobs.JobConstants;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.component.CallerIdObject;
import com.privacystar.core.service.network.model.request.BulkLookupRequest;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.service.network.model.response.BulkLookupResponse;
import com.privacystar.core.service.network.util.ObjectCreator;
import com.privacystar.core.util.InformationUtil;
import io.realm.Realm;
import java.util.List;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/BulkLookupHandler.class */
public class BulkLookupHandler extends PSServiceHandler<BulkLookupRequest, BulkLookupResponse> {
    private static final String GROUP_ID = "group_bulk_lookup";
    private static final boolean SHOULD_PERSIST = true;
    private static final String SINGLE_ID = "group_bulk_lookup";
    private static BulkLookupHandler handlerInstance;

    public static BulkLookupRequest generateRequest(List<CallerIdObject> list) {
        BulkLookupRequest bulkLookupRequest = new BulkLookupRequest();
        BulkLookupRequest.Payload instantiatePayload = bulkLookupRequest.instantiatePayload();
        bulkLookupRequest.setPayload(instantiatePayload);
        bulkLookupRequest.setUser(PayloadUtil.generateUserPayload());
        PayloadUtil.applyBasePayload(instantiatePayload);
        instantiatePayload.withNumbers(list).withDevid(InformationUtil.getDevicePinOrNothing(PSApplication.context())).withLookupType(LookupRequest.LookupType.BULK).withPackageName(PSApplication.context().getPackageName());
        return bulkLookupRequest;
    }

    public static BulkLookupHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new BulkLookupHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<BulkLookupResponse> backendRequest(BulkLookupRequest bulkLookupRequest) {
        return PSBackendEndpoint.getLookupInstance().bulkLookup(bulkLookupRequest);
    }

    public void generateAndSendRequest(List<CallerIdObject> list) {
        enqueueRequest(getInstance(), generateRequest(list));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.LOOKUP;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getGroupId() {
        return JobConstants.GROUP_BULK_LOOKUP;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getSingleId() {
        return JobConstants.GROUP_BULK_LOOKUP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(BulkLookupRequest bulkLookupRequest, Response<BulkLookupResponse> response) {
    }

    public void lookupCallers(Realm realm, List<String> list) {
        Timber.m37d("Bulk lookup: getting numbers", new Object[0]);
        List<String> filterUncachedNumbers = CallerIdRealm.filterUncachedNumbers(realm, list);
        if (filterUncachedNumbers == null || filterUncachedNumbers.isEmpty()) {
            Timber.m37d("All numbers checked were already in local cache. No network request required.", new Object[0]);
        } else {
            generateAndSendRequest(ObjectCreator.createCallerIdObjectsFromNumbers(filterUncachedNumbers));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(BulkLookupResponse bulkLookupResponse, BulkLookupRequest bulkLookupRequest) {
        List<CallerIdObject> numbers = bulkLookupRequest.getPayload().getNumbers();
        String statusId = bulkLookupResponse.getStatusId();
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            PendingBulkLookupRealm.storePendingBulkLookup(defaultInstance, statusId, ObjectCreator.createNumbersFromCallerIdObjects(numbers));
            BulkLookupStatusHandler.getInstance().generateAndSendRequest(statusId);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            Timber.m37d("Bulk lookup: got %d numbers", Integer.valueOf(numbers.size()));
            PreferenceUtil.putBulkLookupPerformed(true);
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
