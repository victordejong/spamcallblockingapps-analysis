package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.AnalyticsEventRequest;
import com.privacystar.core.service.network.model.response.AnalyticsEventResponse;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSBackendAnalytics.class */
public interface PSBackendAnalytics {
    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);

    @POST("FO.PrivacyStar.Analytics/v2/report")
    Call<AnalyticsEventResponse> reportEvent(@Body AnalyticsEventRequest analyticsEventRequest);
}
