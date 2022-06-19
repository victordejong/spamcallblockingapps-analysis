package com.tenor.android.core.network;

import com.tenor.android.core.network.constant.Protocol;
import e.m.e.k;
import java.io.Serializable;
import java.util.List;
import u3.b0;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/network/ApiService$IBuilder.class */
public interface ApiService$IBuilder<T> extends Serializable {
    ApiService$IBuilder<T> apiKey(String str);

    IApiService<T> build();

    ApiService$IBuilder<T> endpoint(String str);

    ApiService$IBuilder<T> gson(k kVar);

    ApiService$IBuilder<T> interceptor(b0 b0Var);

    ApiService$IBuilder<T> interceptors(List<b0> list);

    ApiService$IBuilder<T> protocol(@Protocol String str);

    ApiService$IBuilder<T> server(String str);

    ApiService$IBuilder<T> timeout(int i);
}
