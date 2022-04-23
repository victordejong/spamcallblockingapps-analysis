package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdco.class */
public final class zzdco implements zzeoy<zzdcm> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27127a;

    /* renamed from: b */
    public final zzeph<zzdok> f27128b;

    /* renamed from: c */
    public final zzeph<zzbbx> f27129c;

    public zzdco(zzeph<zzdzb> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzbbx> zzephVar3) {
        this.f27127a = zzephVar;
        this.f27128b = zzephVar2;
        this.f27129c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdco m13652a(zzeph<zzdzb> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzbbx> zzephVar3) {
        return new zzdco(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdcm(this.f27127a.get(), this.f27128b.get(), this.f27129c.get());
    }
}
