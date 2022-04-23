package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrd.class */
public final class zzbrd implements zzeoy<zzdnv> {

    /* renamed from: a */
    public final zzbre f25394a;

    public zzbrd(zzbre zzbreVar) {
        this.f25394a = zzbreVar;
    }

    /* renamed from: a */
    public static zzbrd m15144a(zzbre zzbreVar) {
        return new zzbrd(zzbreVar);
    }

    /* renamed from: b */
    public static zzdnv m15143b(zzbre zzbreVar) {
        zzdnv b = zzbreVar.m15141b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15143b(this.f25394a);
    }
}
