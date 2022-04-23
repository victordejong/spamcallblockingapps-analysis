package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSOffenderDeltas.class */
public interface PSOffenderDeltas {
    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);

    @Headers({"Content-Type: application/octet-stream"})
    @GET("{short_name}")
    Call<ResponseBody> getOffenderDelta(@Path("short_name") String str);
}
