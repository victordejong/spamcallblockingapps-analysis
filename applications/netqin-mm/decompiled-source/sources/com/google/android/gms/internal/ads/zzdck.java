package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdck.class */
public final class zzdck implements zzeoy<zzdci> {

    /* renamed from: a */
    public final zzeph<String> f27119a;

    /* renamed from: b */
    public final zzeph<zzdzb> f27120b;

    /* renamed from: c */
    public final zzeph<zzcku> f27121c;

    public zzdck(zzeph<String> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcku> zzephVar3) {
        this.f27119a = zzephVar;
        this.f27120b = zzephVar2;
        this.f27121c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdck m13654a(zzeph<String> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcku> zzephVar3) {
        return new zzdck(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdci(this.f27119a.get(), this.f27120b.get(), this.f27121c.get());
    }
}
