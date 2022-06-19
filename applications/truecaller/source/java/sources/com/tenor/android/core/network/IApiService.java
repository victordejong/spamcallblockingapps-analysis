package com.tenor.android.core.network;

import com.tenor.android.core.network.ApiService;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/network/IApiService.class */
public interface IApiService<T> {
    T create(ApiService.Builder<T> builder);

    T get();

    String getApiKey();

    String getEndpoint();
}
