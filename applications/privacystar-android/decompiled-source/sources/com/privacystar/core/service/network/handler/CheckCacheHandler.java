package com.privacystar.core.service.network.handler;

import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.model.request.CheckCacheRequest;
import com.privacystar.core.service.network.model.response.CheckCacheResponse;
import com.privacystar.core.util.Text;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/CheckCacheHandler.class */
public class CheckCacheHandler extends PSServiceHandler<CheckCacheRequest, CheckCacheResponse> {
    public static final boolean SHOULD_PERSIST = false;
    private static CheckCacheHandler handlerInstance;

    public static CheckCacheRequest generateRequest() {
        CheckCacheRequest checkCacheRequest = new CheckCacheRequest();
        CheckCacheRequest.Payload instantiatePayload = checkCacheRequest.instantiatePayload();
        checkCacheRequest.setPayload(instantiatePayload);
        instantiatePayload.withToken("google_play_api_access_token").withOperation("read");
        return checkCacheRequest;
    }

    public static CheckCacheHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new CheckCacheHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<CheckCacheResponse> backendRequest(CheckCacheRequest checkCacheRequest) {
        return PSBackendEndpoint.getServicesInstance().checkTokenCache(checkCacheRequest);
    }

    public void generateAndEnqueueRequest() {
        enqueueRequest(getInstance(), generateRequest());
    }

    public void generateAndSendRequest() throws Throwable {
        sendRequest(generateRequest());
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(CheckCacheRequest checkCacheRequest, Response<CheckCacheResponse> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(CheckCacheResponse checkCacheResponse, CheckCacheRequest checkCacheRequest) {
        if (checkCacheResponse.getCachedData() == null) {
            Timber.m31i("Did not receive any cached data in response.", new Object[0]);
        } else if (!Text.isBlank(checkCacheResponse.getCachedData().getAccessToken())) {
            PreferenceUtil.putGoogleApiAccessToken(checkCacheResponse.getCachedData().getAccessToken());
            if (checkCacheResponse.getCachedData().getExpiresOnUtc() != null) {
                PreferenceUtil.putGoogleApiAccessTokenExpiration(checkCacheResponse.getCachedData().getExpiresOnUtc().longValue());
                Timber.m37d("Successfully processed cached token and its expiration.", new Object[0]);
                return;
            }
            Timber.m25w("Did not receive TTL in response - this shouldn't happen.", new Object[0]);
        } else {
            Timber.m25w("Did not receive token in response - this shouldn't happen.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
