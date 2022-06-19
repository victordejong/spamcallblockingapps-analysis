package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ApiKey.class */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a */
    public final int f5733a;

    /* renamed from: b */
    public final Api<O> f5734b;

    /* renamed from: c */
    public final O f5735c;

    /* renamed from: d */
    public final String f5736d;

    public ApiKey(Api<O> api, O o, String str) {
        this.f5734b = api;
        this.f5735c = o;
        this.f5736d = str;
        this.f5733a = Arrays.hashCode(new Object[]{api, o, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.m38910a(this.f5734b, apiKey.f5734b) && Objects.m38910a(this.f5735c, apiKey.f5735c) && Objects.m38910a(this.f5736d, apiKey.f5736d);
    }

    public final int hashCode() {
        return this.f5733a;
    }
}
