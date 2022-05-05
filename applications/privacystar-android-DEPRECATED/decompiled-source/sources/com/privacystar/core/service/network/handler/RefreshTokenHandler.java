package com.privacystar.core.service.network.handler;

import com.privacystar.core.BuildConfig;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.RefreshTokenRequest;
import com.privacystar.core.service.network.model.response.RefreshTokenResponse;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import java.util.Date;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/RefreshTokenHandler.class */
public class RefreshTokenHandler extends PSServiceHandler<RefreshTokenRequest, RefreshTokenResponse> {
    public static final boolean SHOULD_PERSIST = false;
    private static RefreshTokenHandler handlerInstance;

    public static RefreshTokenRequest generateRequest() {
        String userToken = PreferenceUtil.getUserToken();
        if (Text.isBlank(userToken)) {
            Timber.m25w("Can't generate a License check request before registering.", new Object[0]);
            return null;
        }
        RefreshTokenRequest refreshTokenRequest = new RefreshTokenRequest();
        RefreshTokenRequest.Payload instantiatePayload = refreshTokenRequest.instantiatePayload();
        refreshTokenRequest.setPayload(instantiatePayload);
        refreshTokenRequest.setUser(PayloadUtil.generateUserPayload());
        long currentTimeMillis = System.currentTimeMillis();
        PreferenceUtil.putLastTokenRefreshDeviceTime(currentTimeMillis);
        instantiatePayload.withToken(userToken).withApk(BuildConfig.VERSION_NAME).withDevts(Long.valueOf(currentTimeMillis)).withDevtz(InformationUtil.getTimeZoneTZ()).withDevds(Boolean.valueOf(InformationUtil.getDtsActive()));
        return refreshTokenRequest;
    }

    public static RefreshTokenHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new RefreshTokenHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<RefreshTokenResponse> backendRequest(RefreshTokenRequest refreshTokenRequest) {
        return PSBackendEndpoint.getServicesInstance().refreshUserToken(refreshTokenRequest);
    }

    public void generateAndSendRequest() {
        enqueueRequest(getInstance(), generateRequest());
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(RefreshTokenRequest refreshTokenRequest, Response<RefreshTokenResponse> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(RefreshTokenResponse refreshTokenResponse, RefreshTokenRequest refreshTokenRequest) {
        if (!Text.isBlank(refreshTokenResponse.getToken())) {
            PreferenceUtil.putUserToken(refreshTokenResponse.getToken());
            if (refreshTokenResponse.getTokenTtl() != null) {
                PreferenceUtil.putUserTokenExpiration(LicenseHandler.calculateTokenTtlTimestamp(refreshTokenResponse.getTokenTtl().intValue()));
                Timber.m28v("Processed new user token: %s - expires: %s.", refreshTokenResponse.getToken(), new Date(PreferenceUtil.getUserTokenExpiration()));
                return;
            }
            Timber.m25w("Did not receive TTL in response - this shouldn't happen.", new Object[0]);
            return;
        }
        Timber.m25w("Did not receive token in response - this shouldn't happen.", new Object[0]);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
