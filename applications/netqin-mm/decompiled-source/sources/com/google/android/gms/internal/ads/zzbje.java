package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbje.class */
public final class zzbje implements zzeoy<zzctb<zzdpa, zzcuu>> {

    /* renamed from: a */
    public final zzeph<zzcku> f25049a;

    public zzbje(zzbja zzbjaVar, zzeph<zzcku> zzephVar) {
        this.f25049a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcvm zzcvmVar = new zzcvm(this.f25049a.get());
        zzepe.m12187a(zzcvmVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcvmVar;
    }
}
