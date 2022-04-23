package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpr.class */
public final class zzdpr implements zzeoy<zzdpn> {

    /* renamed from: a */
    public final zzeph<zzdpl> f27712a;

    /* renamed from: b */
    public final zzeph<String> f27713b;

    public zzdpr(zzdpp zzdppVar, zzeph<zzdpl> zzephVar, zzeph<String> zzephVar2) {
        this.f27712a = zzephVar;
        this.f27713b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdpr m13328a(zzdpp zzdppVar, zzeph<zzdpl> zzephVar, zzeph<String> zzephVar2) {
        return new zzdpr(zzdppVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzdpn a = this.f27712a.get().m13331a(this.f27713b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
