package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdou.class */
public final class zzdou implements zzeoy<zzdor> {

    /* renamed from: a */
    public final zzeph<zzcsp> f27674a;

    /* renamed from: b */
    public final zzeph<zzdst> f27675b;

    /* renamed from: c */
    public final zzeph<zzdnv> f27676c;

    /* renamed from: d */
    public final zzeph<zzdnw> f27677d;

    public zzdou(zzeph<zzcsp> zzephVar, zzeph<zzdst> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzdnw> zzephVar4) {
        this.f27674a = zzephVar;
        this.f27675b = zzephVar2;
        this.f27676c = zzephVar3;
        this.f27677d = zzephVar4;
    }

    /* renamed from: a */
    public static zzdou m13390a(zzeph<zzcsp> zzephVar, zzeph<zzdst> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzdnw> zzephVar4) {
        return new zzdou(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdor(this.f27674a.get(), this.f27675b.get(), this.f27676c.get(), this.f27677d.get());
    }
}
