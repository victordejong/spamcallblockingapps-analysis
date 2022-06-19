package com.google.android.gms.common.internal.service;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.p1657a.C24962a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/service/Common.class */
public final class Common {
    @RecentlyNonNull
    @KeepForSdk

    /* renamed from: a */
    public static final Api.ClientKey<zah> f6007a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zah, Api.ApiOptions.NoOptions> f6008b;

    static {
        Api.ClientKey<zah> clientKey = new Api.ClientKey<>();
        f6007a = clientKey;
        C24962a c24962a = new C24962a();
        f6008b = c24962a;
        new Api("Common.API", c24962a, clientKey);
        new zae();
    }
}
