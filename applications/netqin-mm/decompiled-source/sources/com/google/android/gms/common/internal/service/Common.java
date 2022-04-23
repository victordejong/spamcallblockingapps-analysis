package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import p131c.p161d.p170b.p224d.p238d.p243d.p244a.C3293a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/Common.class */
public final class Common {
    @KeepForSdk

    /* renamed from: a */
    public static final Api.ClientKey<zaj> f23458a = new Api.ClientKey<>();

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zaj, Api.ApiOptions.NoOptions> f23459b;

    static {
        C3293a aVar = new C3293a();
        f23459b = aVar;
        new Api("Common.API", aVar, f23458a);
        new zac();
    }
}
