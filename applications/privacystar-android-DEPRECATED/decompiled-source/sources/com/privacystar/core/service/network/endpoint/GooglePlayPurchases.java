package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import retrofit2.Call;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/GooglePlayPurchases.class */
public interface GooglePlayPurchases {
    @POST("{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel")
    Call<EmptyObject> cancelSubscription(@Path("packageName") String str, @Path("subscriptionId") String str2, @Path("token") String str3, @Query("access_token") String str4);
}
