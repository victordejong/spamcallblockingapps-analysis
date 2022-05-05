package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.TmoUserStatusResponse;
import io.reactivex.Observable;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoAccountApi.class */
public interface TmoAccountApi {
    @GET("myaccountservice/getuserstatus")
    /* renamed from: a */
    Observable<TmoUserStatusResponse> mo6681a();

    @POST("myaccountservice/addremovesoc")
    /* renamed from: b */
    Observable<TmoUserStatusResponse> mo6680b(@Body RequestBody requestBody);
}
