package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.MetroBlockListPullObject;
import com.tmobile.services.nameid.model.MetroBlockListPullRes;
import com.tmobile.services.nameid.model.MetroLicenseCheckObject;
import com.tmobile.services.nameid.model.MetroProcessResponse;
import com.tmobile.services.nameid.model.MetroSubscribeObject;
import io.reactivex.Observable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MetroApi.class */
public interface MetroApi {
    @POST("n/block_list")
    /* renamed from: a */
    Observable<MetroBlockListPullRes> m6750a(@Body MetroBlockListPullObject metroBlockListPullObject);

    @POST("n/license_check")
    /* renamed from: b */
    Call<LicenseResponse> m6749b(@Body MetroLicenseCheckObject metroLicenseCheckObject);

    @POST("n/tmodpi")
    /* renamed from: c */
    Observable<MetroProcessResponse> m6748c(@Body MetroSubscribeObject metroSubscribeObject);

    @POST("n/license_check")
    /* renamed from: d */
    Observable<LicenseResponse> m6747d(@Body MetroLicenseCheckObject metroLicenseCheckObject);
}
