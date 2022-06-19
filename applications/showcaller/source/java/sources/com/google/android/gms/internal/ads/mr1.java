package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p272k.C6198c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mr1.class */
public final class mr1 implements cj3<PackageInfo> {

    /* renamed from: a */
    private final pj3<Context> f26838a;

    /* renamed from: b */
    private final pj3<ApplicationInfo> f26839b;

    public mr1(pj3<Context> pj3Var, pj3<ApplicationInfo> pj3Var2) {
        this.f26838a = pj3Var;
        this.f26839b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        PackageInfo packageInfo;
        try {
            packageInfo = C6198c.m16885a(this.f26838a.mo8141b()).m16888f(((gr1) this.f26839b).mo8141b().packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo;
    }
}
