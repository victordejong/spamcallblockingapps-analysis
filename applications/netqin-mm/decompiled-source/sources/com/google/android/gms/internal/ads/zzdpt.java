package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpt.class */
public final class zzdpt implements zzeoy<zzayi> {

    /* renamed from: a */
    public final zzeph<zzdpn> f27716a;

    public zzdpt(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        this.f27716a = zzephVar;
    }

    /* renamed from: a */
    public static zzdpt m13325a(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        return new zzdpt(zzdppVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzayi zzayiVar = this.f27716a.get().f27708c;
        zzepe.m12187a(zzayiVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzayiVar;
    }
}
