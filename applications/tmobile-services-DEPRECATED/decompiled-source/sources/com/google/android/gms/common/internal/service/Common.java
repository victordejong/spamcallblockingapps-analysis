package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/Common.class */
public final class Common {

    /* renamed from: b */
    private static final Api.AbstractClientBuilder<zah, Api.ApiOptions.NoOptions> f7534b;
    @KeepForSdk

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f7535c;
    @KeepForSdk

    /* renamed from: a */
    public static final Api.ClientKey<zah> f7533a = new Api.ClientKey<>();

    /* renamed from: d */
    public static final zab f7536d = new zae();

    static {
        zac zacVar = new zac();
        f7534b = zacVar;
        f7535c = new Api<>("Common.API", zacVar, f7533a);
    }
}
