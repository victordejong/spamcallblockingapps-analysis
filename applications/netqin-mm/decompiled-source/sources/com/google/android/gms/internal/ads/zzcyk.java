package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzabr;
import com.google.android.gms.internal.ads.zzcyk;
import p131c.p161d.p170b.p224d.p252g.p253a.C4113uq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyk.class */
public final class zzcyk<AdT> implements zzcta<AdT> {

    /* renamed from: a */
    public final zzaby f26760a;

    /* renamed from: b */
    public final zzdzb f26761b;

    /* renamed from: c */
    public final zzdsi f26762c;

    /* renamed from: d */
    public final zzcyl<AdT> f26763d;

    public zzcyk(zzdsi zzdsiVar, zzdzb zzdzbVar, zzaby zzabyVar, zzcyl<AdT> zzcylVar) {
        this.f26762c = zzdsiVar;
        this.f26761b = zzdzbVar;
        this.f26760a = zzabyVar;
        this.f26763d = zzcylVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m13772a(zzabr zzabrVar) throws Exception {
        this.f26760a.mo16874a(zzabrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar;
        return (this.f26760a == null || (zzdnyVar = zzdnvVar.f27602r) == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<AdT> mo13769b(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzbcg zzbcgVar = new zzbcg();
        zzcys zzcysVar = new zzcys();
        zzcysVar.m13762a(new C4113uq(this, zzbcgVar, zzdogVar, zzdnvVar, zzcysVar));
        zzdny zzdnyVar = zzdnvVar.f27602r;
        final zzabr zzabrVar = new zzabr(zzcysVar, zzdnyVar.f27620b, zzdnyVar.f27619a);
        return this.f26762c.m13273a((zzdsi) zzdsf.CUSTOM_RENDER_SYN).m13267a(new zzdrs(this, zzabrVar) { // from class: c.d.b.d.g.a.tq

            /* renamed from: a */
            public final zzcyk f15421a;

            /* renamed from: b */
            public final zzabr f15422b;

            {
                this.f15421a = this;
                this.f15422b = zzabrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdrs
            public final void run() {
                this.f15421a.m13772a(this.f15422b);
            }
        }, this.f26761b).m13255a((zzdsa<?>) zzdsf.CUSTOM_RENDER_ACK).m13258a((zzdzc) zzbcgVar).m13263a();
    }
}
