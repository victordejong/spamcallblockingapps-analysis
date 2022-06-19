package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aou.class */
public final class aou {

    /* renamed from: a */
    private final ckz f10139a;

    /* renamed from: b */
    private final C3647yd f10140b;

    /* renamed from: c */
    private final ApplicationInfo f10141c;

    /* renamed from: d */
    private final String f10142d;

    /* renamed from: e */
    private final List<String> f10143e;

    /* renamed from: f */
    private final PackageInfo f10144f;

    /* renamed from: g */
    private final dhn<crt<String>> f10145g;

    /* renamed from: h */
    private final AbstractC3558uw f10146h;

    /* renamed from: i */
    private final String f10147i;

    /* renamed from: j */
    private final cag<Bundle> f10148j;

    public aou(ckz ckzVar, C3647yd c3647yd, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, dhn<crt<String>> dhnVar, AbstractC3558uw abstractC3558uw, String str2, cag<Bundle> cagVar) {
        this.f10139a = ckzVar;
        this.f10140b = c3647yd;
        this.f10141c = applicationInfo;
        this.f10142d = str;
        this.f10143e = list;
        this.f10144f = packageInfo;
        this.f10145g = dhnVar;
        this.f10146h = abstractC3558uw;
        this.f10147i = str2;
        this.f10148j = cagVar;
    }

    /* renamed from: a */
    public final crt<Bundle> m12858a() {
        return this.f10139a.m11163a((ckz) ckw.SIGNALS).m11156a(this.f10148j.m11511a(new Bundle())).m11153a();
    }

    /* renamed from: a */
    public final /* synthetic */ C3423pw m12857a(crt crtVar) {
        return new C3423pw((Bundle) crtVar.get(), this.f10140b, this.f10141c, this.f10142d, this.f10143e, this.f10144f, this.f10145g.mo9430a().get(), this.f10146h.mo7021f(), this.f10147i, null, null);
    }

    /* renamed from: b */
    public final crt<C3423pw> m12856b() {
        crt<Bundle> m12858a = m12858a();
        return this.f10139a.m11161a((ckz) ckw.REQUEST_PARCEL, m12858a, this.f10145g.mo9430a()).m11158a(new Callable(this, m12858a) { // from class: com.google.android.gms.internal.ads.aox

            /* renamed from: a */
            private final aou f10162a;

            /* renamed from: b */
            private final crt f10163b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10162a = this;
                this.f10163b = m12858a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10162a.m12857a(this.f10163b);
            }
        }).m11153a();
    }
}
