package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d21.class */
public final class d21 {

    /* renamed from: a */
    private final yn2 f21450a;

    /* renamed from: b */
    private final zzcgz f21451b;

    /* renamed from: c */
    private final ApplicationInfo f21452c;

    /* renamed from: d */
    private final String f21453d;

    /* renamed from: e */
    private final List<String> f21454e;

    /* renamed from: f */
    private final PackageInfo f21455f;

    /* renamed from: g */
    private final vi3<r03<String>> f21456g;

    /* renamed from: h */
    private final String f21457h;

    /* renamed from: i */
    private final ab2<Bundle> f21458i;

    public d21(yn2 yn2Var, zzcgz zzcgzVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, vi3<r03<String>> vi3Var, AbstractC5728q1 abstractC5728q1, String str2, ab2<Bundle> ab2Var) {
        this.f21450a = yn2Var;
        this.f21451b = zzcgzVar;
        this.f21452c = applicationInfo;
        this.f21453d = str;
        this.f21454e = list;
        this.f21455f = packageInfo;
        this.f21456g = vi3Var;
        this.f21457h = str2;
        this.f21458i = ab2Var;
    }

    /* renamed from: a */
    public final r03<Bundle> m15961a() {
        yn2 yn2Var = this.f21450a;
        return kn2.m13844a(this.f21458i.m16652a(new Bundle()), zzfem.SIGNALS, yn2Var).m11833i();
    }

    /* renamed from: b */
    public final r03<zzcbj> m15960b() {
        r03<Bundle> m15961a = m15961a();
        return this.f21450a.m11365f(zzfem.REQUEST_PARCEL, m15961a, this.f21456g.m9997b()).m14585a(new Callable(this, m15961a) { // from class: com.google.android.gms.internal.ads.c21

            /* renamed from: a */
            private final d21 f21074a;

            /* renamed from: b */
            private final r03 f21075b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21074a = this;
                this.f21075b = m15961a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f21074a.m15959c(this.f21075b);
            }
        }).m11833i();
    }

    /* renamed from: c */
    public final /* synthetic */ zzcbj m15959c(r03 r03Var) {
        return new zzcbj((Bundle) r03Var.get(), this.f21451b, this.f21452c, this.f21453d, this.f21454e, this.f21455f, this.f21456g.m9997b().get(), this.f21457h, null, null);
    }
}
