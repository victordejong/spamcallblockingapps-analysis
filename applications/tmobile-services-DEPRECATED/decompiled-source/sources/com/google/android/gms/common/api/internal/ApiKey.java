package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ApiKey.class */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a */
    private final boolean f7033a;

    /* renamed from: b */
    private final int f7034b;

    /* renamed from: c */
    private final Api<O> f7035c;

    /* renamed from: d */
    private final O f7036d;

    private ApiKey(Api<O> api) {
        this.f7033a = true;
        this.f7035c = api;
        this.f7036d = null;
        this.f7034b = System.identityHashCode(this);
    }

    private ApiKey(Api<O> api, O o) {
        this.f7033a = false;
        this.f7035c = api;
        this.f7036d = o;
        this.f7034b = Objects.m14536b(api, o);
    }

    /* renamed from: b */
    public static <O extends Api.ApiOptions> ApiKey<O> m14992b(Api<O> api, O o) {
        return new ApiKey<>(api, o);
    }

    /* renamed from: c */
    public static <O extends Api.ApiOptions> ApiKey<O> m14991c(Api<O> api) {
        return new ApiKey<>(api);
    }

    /* renamed from: a */
    public final String m14993a() {
        return this.f7035c.m15032b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return !this.f7033a && !apiKey.f7033a && Objects.m14537a(this.f7035c, apiKey.f7035c) && Objects.m14537a(this.f7036d, apiKey.f7036d);
    }

    public final int hashCode() {
        return this.f7034b;
    }
}
