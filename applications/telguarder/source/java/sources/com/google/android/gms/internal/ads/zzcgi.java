package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgi.class */
public final class zzcgi implements zzeqb<zzcgf> {
    private final zzeqo<String> zzfza;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcgi(zzeqo<String> zzeqoVar, zzeqo<zzcbu> zzeqoVar2, zzeqo<zzccd> zzeqoVar3) {
        this.zzfza = zzeqoVar;
        this.zzgir = zzeqoVar2;
        this.zzgcy = zzeqoVar3;
    }

    public static zzcgi zzr(zzeqo<String> zzeqoVar, zzeqo<zzcbu> zzeqoVar2, zzeqo<zzccd> zzeqoVar3) {
        return new zzcgi(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcgf(this.zzfza.get(), this.zzgir.get(), this.zzgcy.get());
    }
}
