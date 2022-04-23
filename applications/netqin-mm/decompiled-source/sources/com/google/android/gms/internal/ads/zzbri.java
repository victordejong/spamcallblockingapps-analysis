package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbri.class */
public final class zzbri implements zzeoy<zzdog> {

    /* renamed from: a */
    public final zzbre f25402a;

    public zzbri(zzbre zzbreVar) {
        this.f25402a = zzbreVar;
    }

    /* renamed from: a */
    public static zzbri m15134a(zzbre zzbreVar) {
        return new zzbri(zzbreVar);
    }

    /* renamed from: b */
    public static zzdog m15133b(zzbre zzbreVar) {
        zzdog a = zzbreVar.m15142a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15133b(this.f25402a);
    }
}
