package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmz.class */
public final class zzbmz implements zzeoy<zzamk> {

    /* renamed from: a */
    public final zzeph<zzamb> f25220a;

    public zzbmz(zzeph<zzamb> zzephVar) {
        this.f25220a = zzephVar;
    }

    /* renamed from: a */
    public static zzbmz m15299a(zzeph<zzamb> zzephVar) {
        return new zzbmz(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzamk a = this.f25220a.get().m16664a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
