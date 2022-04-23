package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbth.class */
public final class zzbth implements zzeoy<zzbwk> {

    /* renamed from: a */
    public final zzeph<zzbwk> f25496a;

    public zzbth(zzeph<zzbwk> zzephVar) {
        this.f25496a = zzephVar;
    }

    /* renamed from: a */
    public static zzbth m15081a(zzeph<zzbwk> zzephVar) {
        return new zzbth(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbwk zzbwkVar = this.f25496a.get();
        zzepe.m12187a(zzbwkVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzbwkVar;
    }
}
