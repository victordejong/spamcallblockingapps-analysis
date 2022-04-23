package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3476dm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpd.class */
public abstract class zzcpd implements zzdya<zzatc, zzdog> {

    /* renamed from: a */
    public final zzbwr f26364a;

    public zzcpd(zzbwr zzbwrVar) {
        this.f26364a = zzbwrVar;
    }

    /* renamed from: a */
    public abstract zzdzc<zzdog> mo13954a(zzatc zzatcVar) throws zzcof;

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final /* synthetic */ zzdzc<zzdog> mo13006d(zzatc zzatcVar) throws Exception {
        zzatc zzatcVar2 = zzatcVar;
        this.f26364a.mo14002a(zzatcVar2);
        zzdzc<zzdog> a = mo13954a(zzatcVar2);
        zzdyq.m12991a(a, new C3476dm(this), zzbbz.f24769f);
        return a;
    }
}
