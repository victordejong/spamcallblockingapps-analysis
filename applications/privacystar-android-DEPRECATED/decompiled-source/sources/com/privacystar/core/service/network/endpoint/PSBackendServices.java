package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.BlockListRequest;
import com.privacystar.core.service.network.model.request.CallLogUpdateRequest;
import com.privacystar.core.service.network.model.request.CallWatchPaymentRequest;
import com.privacystar.core.service.network.model.request.CheckCacheRequest;
import com.privacystar.core.service.network.model.request.ComplaintRequest;
import com.privacystar.core.service.network.model.request.FeedbackRequest;
import com.privacystar.core.service.network.model.request.FullShortNameRequest;
import com.privacystar.core.service.network.model.request.MessageTrackingRequest;
import com.privacystar.core.service.network.model.request.RefreshTokenRequest;
import com.privacystar.core.service.network.model.request.RegistrationRequest;
import com.privacystar.core.service.network.model.response.BlockListResponse;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.service.network.model.response.CheckCacheResponse;
import com.privacystar.core.service.network.model.response.FullShortNameResponse;
import com.privacystar.core.service.network.model.response.LicenseResponse;
import com.privacystar.core.service.network.model.response.MessageTrackingResponse;
import com.privacystar.core.service.network.model.response.RefreshTokenResponse;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSBackendServices.class */
public interface PSBackendServices {
    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);

    @POST("n/check_cache")
    Call<CheckCacheResponse> checkTokenCache(@Body CheckCacheRequest checkCacheRequest);

    @POST("n/msgtrack_callback")
    Call<MessageTrackingResponse> fetchMessage(@Body MessageTrackingRequest messageTrackingRequest);

    @POST("n/full_short_name")
    Call<FullShortNameResponse> fetchShortName(@Body FullShortNameRequest fullShortNameRequest);

    @POST("n/block_list")
    Call<BlockListResponse> getBlockList(@Body BlockListRequest blockListRequest);

    @POST("n/cwdpi")
    Call<CallWatchPaymentResponse> makeCWPayment(@Body CallWatchPaymentRequest callWatchPaymentRequest);

    @POST("n/calllog_update")
    Call<EmptyObject> postCallLog(@Body CallLogUpdateRequest callLogUpdateRequest);

    @POST("n/complaint")
    Call<EmptyObject> postComplaint(@Body ComplaintRequest complaintRequest);

    @POST("n/feedback")
    Call<EmptyObject> postFeedback(@Body FeedbackRequest feedbackRequest);

    @POST("n/block_list")
    Call<EmptyObject> putBlockList(@Body BlockListRequest blockListRequest);

    @POST("n/refresh_token")
    Call<RefreshTokenResponse> refreshUserToken(@Body RefreshTokenRequest refreshTokenRequest);

    @POST("n/register")
    Call<LicenseResponse> registerDevice(@Body RegistrationRequest registrationRequest);

    @POST("n/msgtrack_nocallback")
    Call<EmptyObject> trackMessage(@Body MessageTrackingRequest messageTrackingRequest);
}
