package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gr1.class */
public final class gr1 implements cj3<ApplicationInfo> {

    /* renamed from: a */
    private final pj3<Context> f23663a;

    public gr1(pj3<Context> pj3Var) {
        this.f23663a = pj3Var;
    }

    /* renamed from: a */
    public final ApplicationInfo mo8141b() {
        ApplicationInfo applicationInfo = this.f23663a.mo8141b().getApplicationInfo();
        kj3.m13879b(applicationInfo);
        return applicationInfo;
    }
}
