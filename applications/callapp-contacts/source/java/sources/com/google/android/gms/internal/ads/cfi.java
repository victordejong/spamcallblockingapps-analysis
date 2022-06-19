package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfi.class */
public final class cfi implements dsi<cff> {

    /* renamed from: a */
    private final dsv<dbs> f45661a;

    /* renamed from: b */
    private final dsv<cpo> f45662b;

    /* renamed from: c */
    private final dsv<PackageInfo> f45663c;

    /* renamed from: d */
    private final dsv<zzf> f45664d;

    public cfi(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<PackageInfo> dsvVar3, dsv<zzf> dsvVar4) {
        this.f45661a = dsvVar;
        this.f45662b = dsvVar2;
        this.f45663c = dsvVar3;
        this.f45664d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new cff(this.f45661a.mo14005a(), this.f45662b.mo14005a(), this.f45663c.mo14005a(), this.f45664d.mo14005a());
    }
}
