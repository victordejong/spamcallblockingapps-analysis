package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnr.class */
public final class zzcnr implements zzeoy<zzcns> {

    /* renamed from: a */
    public final zzeph<zzcng> f26313a;

    /* renamed from: b */
    public final zzeph<zzbix> f26314b;

    public zzcnr(zzeph<zzcng> zzephVar, zzeph<zzbix> zzephVar2) {
        this.f26313a = zzephVar;
        this.f26314b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnr m14004a(zzeph<zzcng> zzephVar, zzeph<zzbix> zzephVar2) {
        return new zzcnr(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcns(this.f26313a.get(), this.f26314b.get());
    }
}
