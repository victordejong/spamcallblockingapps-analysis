package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h92.class */
public final class h92 implements cj3<g92> {

    /* renamed from: a */
    private final pj3<ApplicationInfo> f23832a;

    /* renamed from: b */
    private final pj3<PackageInfo> f23833b;

    public h92(pj3<ApplicationInfo> pj3Var, pj3<PackageInfo> pj3Var2) {
        this.f23832a = pj3Var;
        this.f23833b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new g92(((gr1) this.f23832a).mo8141b(), this.f23833b.mo8141b());
    }
}
