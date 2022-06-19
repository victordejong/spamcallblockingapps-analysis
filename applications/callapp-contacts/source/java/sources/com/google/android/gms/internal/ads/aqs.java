package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqs.class */
public final class aqs {

    /* renamed from: a */
    final zzbar f43047a;

    /* renamed from: b */
    final ApplicationInfo f43048b;

    /* renamed from: c */
    final String f43049c;

    /* renamed from: d */
    final List<String> f43050d;

    /* renamed from: e */
    final PackageInfo f43051e;

    /* renamed from: f */
    final dsb<dbt<String>> f43052f;

    /* renamed from: g */
    final String f43053g;

    /* renamed from: h */
    private final cti f43054h;

    /* renamed from: i */
    private final cha<Bundle> f43055i;

    public aqs(cti ctiVar, zzbar zzbarVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, dsb<dbt<String>> dsbVar, zzf zzfVar, String str2, cha<Bundle> chaVar) {
        this.f43054h = ctiVar;
        this.f43047a = zzbarVar;
        this.f43048b = applicationInfo;
        this.f43049c = str;
        this.f43050d = list;
        this.f43051e = packageInfo;
        this.f43052f = dsbVar;
        this.f43053g = str2;
        this.f43055i = chaVar;
    }

    /* renamed from: a */
    public final dbt<Bundle> m18460a() {
        return this.f43054h.m17260a((cti) ctj.SIGNALS).m17253a(this.f43055i.m17461a(new Bundle())).m17251a();
    }

    /* renamed from: b */
    public final dbt<zzauj> m18459b() {
        dbt<Bundle> m18460a = m18460a();
        return this.f43054h.m17258a((cti) ctj.REQUEST_PARCEL, m18460a, this.f43052f.mo14005a()).m17255a(new Callable(this, m18460a) { // from class: com.google.android.gms.internal.ads.aqv

            /* renamed from: a */
            private final aqs f43069a;

            /* renamed from: b */
            private final dbt f43070b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43069a = this;
                this.f43070b = m18460a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                aqs aqsVar = this.f43069a;
                return new zzauj((Bundle) this.f43070b.get(), aqsVar.f43047a, aqsVar.f43048b, aqsVar.f43049c, aqsVar.f43050d, aqsVar.f43051e, aqsVar.f43052f.mo14005a().get(), aqsVar.f43053g, null, null);
            }
        }).m17251a();
    }
}
