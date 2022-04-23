package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtu.class */
public final class zzbtu implements zzeoy<String> {

    /* renamed from: a */
    public final zzbtp f25537a;

    /* renamed from: b */
    public final zzeph<zzbsa> f25538b;

    public zzbtu(zzbtp zzbtpVar, zzeph<zzbsa> zzephVar) {
        this.f25537a = zzbtpVar;
        this.f25538b = zzephVar;
    }

    /* renamed from: a */
    public static zzbtu m15047a(zzbtp zzbtpVar, zzeph<zzbsa> zzephVar) {
        return new zzbtu(zzbtpVar, zzephVar);
    }

    /* renamed from: a */
    public static String m15048a(zzbtp zzbtpVar, zzbsa zzbsaVar) {
        String a = zzbsaVar.m15109a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15048a(this.f25537a, this.f25538b.get());
    }
}
