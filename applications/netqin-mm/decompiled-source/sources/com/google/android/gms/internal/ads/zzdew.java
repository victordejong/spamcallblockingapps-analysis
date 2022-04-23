package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdew.class */
public final class zzdew implements zzeoy<zzdeu> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27220a;

    /* renamed from: b */
    public final zzeph<zzdnt> f27221b;

    public zzdew(zzeph<zzdzb> zzephVar, zzeph<zzdnt> zzephVar2) {
        this.f27220a = zzephVar;
        this.f27221b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdew m13630a(zzeph<zzdzb> zzephVar, zzeph<zzdnt> zzephVar2) {
        return new zzdew(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdeu(this.f27220a.get(), this.f27221b.get());
    }
}
