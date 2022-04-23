package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfi.class */
public final class cfi implements dsi<cff> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25726a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<cpo> f25727b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<PackageInfo> f25728c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<zzf> f25729d;

    public cfi(dsv<dbs> dsvVar, dsv<cpo> dsvVar2, dsv<PackageInfo> dsvVar3, dsv<zzf> dsvVar4) {
        this.f25726a = dsvVar;
        this.f25727b = dsvVar2;
        this.f25728c = dsvVar3;
        this.f25729d = dsvVar4;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cff(this.f25726a.a(), this.f25727b.a(), this.f25728c.a(), this.f25729d.a());
    }
}
