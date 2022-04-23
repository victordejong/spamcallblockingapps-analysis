package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpn.class */
public final class zzbpn implements zzeoy<zzcta<zzboq>> {

    /* renamed from: a */
    public final zzeph<Boolean> f25327a;

    /* renamed from: b */
    public final zzeph<zzcwd> f25328b;

    /* renamed from: c */
    public final zzeph<zzcxv<zzboq, zzdpa, zzcuu>> f25329c;

    public zzbpn(zzeph<Boolean> zzephVar, zzeph<zzcwd> zzephVar2, zzeph<zzcxv<zzboq, zzdpa, zzcuu>> zzephVar3) {
        this.f25327a = zzephVar;
        this.f25328b = zzephVar2;
        this.f25329c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        boolean booleanValue = this.f25327a.get().booleanValue();
        zzcxv<zzboq, zzdpa, zzcuu> zzcxvVar = this.f25328b.get();
        zzcxvVar = this.f25329c.get();
        if (!booleanValue) {
        }
        zzepe.m12187a(zzcxvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxvVar;
    }
}
