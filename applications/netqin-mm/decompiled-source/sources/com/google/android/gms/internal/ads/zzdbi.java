package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbi.class */
public final class zzdbi implements zzeoy<zzdzc<zzdbm>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f26872a;

    /* renamed from: b */
    public final zzeph<zzdbl> f26873b;

    /* renamed from: c */
    public final zzeph<zzbtm> f26874c;

    public zzdbi(zzeph<zzdsi> zzephVar, zzeph<zzdbl> zzephVar2, zzeph<zzbtm> zzephVar3) {
        this.f26872a = zzephVar;
        this.f26873b = zzephVar2;
        this.f26874c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdsi zzdsiVar = this.f26872a.get();
        zzdrr a = zzdsiVar.m13272a((zzdsi) zzdsf.GENERATE_SIGNALS, (zzdzc) this.f26874c.get().m15076b()).m13260a((zzdya<I, O2>) this.f26873b.get()).m13262a(((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS).m13263a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
