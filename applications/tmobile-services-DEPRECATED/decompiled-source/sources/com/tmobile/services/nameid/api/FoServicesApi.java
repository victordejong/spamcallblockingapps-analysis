package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.AnalyticsBody;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.RegistrationRequest;
import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/FoServicesApi.class */
public interface FoServicesApi {
    @POST("FO.PrivacyStar.Analytics/v2/report")
    /* renamed from: a */
    Observable<Response<Void>> mo5489a(@Body AnalyticsBody analyticsBody);

    @POST("n/register")
    /* renamed from: b */
    Observable<LicenseResponse> mo5488b(@Body RegistrationRequest registrationRequest);
}
