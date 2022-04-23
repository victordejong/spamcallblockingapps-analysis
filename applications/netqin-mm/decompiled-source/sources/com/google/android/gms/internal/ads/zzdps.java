package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdps.class */
public final class zzdps implements zzeoy<zzayr> {

    /* renamed from: a */
    public final zzdpp f27714a;

    /* renamed from: b */
    public final zzeph<zzdpn> f27715b;

    public zzdps(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        this.f27714a = zzdppVar;
        this.f27715b = zzephVar;
    }

    /* renamed from: a */
    public static zzayr m13327a(zzdpp zzdppVar, zzdpn zzdpnVar) {
        zzayr zzayrVar = zzdpnVar.f27707b;
        zzepe.m12187a(zzayrVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzayrVar;
    }

    /* renamed from: a */
    public static zzdps m13326a(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        return new zzdps(zzdppVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13327a(this.f27714a, this.f27715b.get());
    }
}
