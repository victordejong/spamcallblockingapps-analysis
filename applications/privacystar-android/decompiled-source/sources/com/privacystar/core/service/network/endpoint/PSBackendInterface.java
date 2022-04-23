package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSBackendInterface.class */
public interface PSBackendInterface {
    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);
}
