package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aqs.class */
public final class aqs {

    /* renamed from: a  reason: collision with root package name */
    final zzbar f23786a;

    /* renamed from: b  reason: collision with root package name */
    final ApplicationInfo f23787b;

    /* renamed from: c  reason: collision with root package name */
    final String f23788c;

    /* renamed from: d  reason: collision with root package name */
    final List<String> f23789d;
    final PackageInfo e;
    final dsb<dbt<String>> f;
    final String g;
    private final cti h;
    private final cha<Bundle> i;

    public aqs(cti ctiVar, zzbar zzbarVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, dsb<dbt<String>> dsbVar, zzf zzfVar, String str2, cha<Bundle> chaVar) {
        this.h = ctiVar;
        this.f23786a = zzbarVar;
        this.f23787b = applicationInfo;
        this.f23788c = str;
        this.f23789d = list;
        this.e = packageInfo;
        this.f = dsbVar;
        this.g = str2;
        this.i = chaVar;
    }

    public final dbt<Bundle> a() {
        return this.h.a((cti) ctj.SIGNALS).a(this.i.a(new Bundle())).a();
    }

    public final dbt<zzauj> b() {
        final dbt<Bundle> a2 = a();
        return this.h.a((cti) ctj.REQUEST_PARCEL, a2, this.f.a()).a(new Callable(this, a2) { // from class: com.google.android.gms.internal.ads.aqv

            /* renamed from: a  reason: collision with root package name */
            private final aqs f23797a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f23798b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23797a = this;
                this.f23798b = a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                aqs aqsVar = this.f23797a;
                return new zzauj((Bundle) this.f23798b.get(), aqsVar.f23786a, aqsVar.f23787b, aqsVar.f23788c, aqsVar.f23789d, aqsVar.e, aqsVar.f.a().get(), aqsVar.g, null, null);
            }
        }).a();
    }
}
