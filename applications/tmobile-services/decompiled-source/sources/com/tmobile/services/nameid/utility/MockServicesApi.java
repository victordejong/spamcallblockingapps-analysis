package com.tmobile.services.nameid.utility;

import com.google.android.gms.common.api.Api;
import com.tmobile.services.nameid.api.FoServicesApi;
import com.tmobile.services.nameid.model.AnalyticsBody;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.RegistrationRequest;
import io.reactivex.Observable;
import java.util.Date;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.http.Body;
import retrofit2.mock.BehaviorDelegate;
import retrofit2.mock.MockRetrofit;
import retrofit2.mock.NetworkBehavior;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MockServicesApi.class */
public class MockServicesApi implements FoServicesApi {

    /* renamed from: a */
    private BehaviorDelegate<FoServicesApi> f14404a;

    /* renamed from: b */
    private NetworkBehavior f14405b = NetworkBehavior.create();

    public MockServicesApi(Retrofit retrofit) {
        this.f14404a = new MockRetrofit.Builder(retrofit).networkBehavior(this.f14405b).build().create(FoServicesApi.class);
    }

    @Override // com.tmobile.services.nameid.api.FoServicesApi
    /* renamed from: a */
    public Observable<Response<Void>> mo5489a(@Body AnalyticsBody analyticsBody) {
        return this.f14404a.returningResponse(Response.success(null)).mo5489a(analyticsBody);
    }

    @Override // com.tmobile.services.nameid.api.FoServicesApi
    /* renamed from: b */
    public Observable<LicenseResponse> mo5488b(@Body RegistrationRequest registrationRequest) {
        LicenseResponse licenseResponse = new LicenseResponse();
        licenseResponse.setAdsAvailable(Boolean.FALSE);
        licenseResponse.setBillingSoc("blk");
        licenseResponse.setLicExpireDate(new Date());
        licenseResponse.setLicState(LicenseResponse.LicenseState.ACTIVE);
        licenseResponse.setLicFeatures("feature1, feature2");
        licenseResponse.setLicTrialEnd(DateUtils.m5794a(new Date(), 7));
        licenseResponse.setToken("some_token");
        licenseResponse.setTokenTtl(Integer.valueOf((int) Api.BaseClientBuilder.API_PRIORITY_OTHER));
        return this.f14404a.returningResponse(licenseResponse).mo5488b(registrationRequest);
    }
}
