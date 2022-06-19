package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x60.class */
public final class x60 {

    /* renamed from: a */
    private final qp1 f9088a;

    /* renamed from: b */
    private final zzbbq f9089b;

    /* renamed from: c */
    private final ApplicationInfo f9090c;

    /* renamed from: d */
    private final String f9091d;

    /* renamed from: e */
    private final List<String> f9092e;

    /* renamed from: f */
    private final PackageInfo f9093f;

    /* renamed from: g */
    private final yg2<rz1<String>> f9094g;

    /* renamed from: h */
    private final String f9095h;

    /* renamed from: i */
    private final ld1<Bundle> f9096i;

    public x60(qp1 qp1Var, zzbbq zzbbqVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, yg2<rz1<String>> yg2Var, AbstractC1409a1 abstractC1409a1, String str2, ld1<Bundle> ld1Var) {
        this.f9088a = qp1Var;
        this.f9089b = zzbbqVar;
        this.f9090c = applicationInfo;
        this.f9091d = str;
        this.f9092e = list;
        this.f9093f = packageInfo;
        this.f9094g = yg2Var;
        this.f9095h = str2;
        this.f9096i = ld1Var;
    }

    /* renamed from: a */
    public final rz1<Bundle> m4964a() {
        qp1 qp1Var = this.f9088a;
        return bp1.m7932a(this.f9096i.m6703a(new Bundle()), zzduy.SIGNALS, qp1Var).m7251i();
    }

    /* renamed from: b */
    public final rz1<zzawc> m4963b() {
        rz1<Bundle> m4964a = m4964a();
        return this.f9088a.m7120b(zzduy.REQUEST_PARCEL, m4964a, this.f9094g.m4759b()).m4560a(new Callable(this, m4964a) { // from class: com.google.android.gms.internal.ads.w60

            /* renamed from: a */
            private final x60 f8983a;

            /* renamed from: b */
            private final rz1 f8984b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8983a = this;
                this.f8984b = m4964a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8983a.m4962c(this.f8984b);
            }
        }).m7251i();
    }

    /* renamed from: c */
    public final /* synthetic */ zzawc m4962c(rz1 rz1Var) {
        return new zzawc((Bundle) rz1Var.get(), this.f9089b, this.f9090c, this.f9091d, this.f9092e, this.f9093f, this.f9094g.m4759b().get(), this.f9095h, (zzdsy) null, (String) null);
    }
}
