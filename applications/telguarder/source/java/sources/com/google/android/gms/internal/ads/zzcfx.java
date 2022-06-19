package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfx.class */
public final class zzcfx implements zzeqb<zzcfw> {
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzcbu> zzgir;

    private zzcfx(zzeqo<zzcbu> zzeqoVar, zzeqo<zzccd> zzeqoVar2) {
        this.zzgir = zzeqoVar;
        this.zzgcy = zzeqoVar2;
    }

    public static zzcfx zzv(zzeqo<zzcbu> zzeqoVar, zzeqo<zzccd> zzeqoVar2) {
        return new zzcfx(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfw(this.zzgir.get(), this.zzgcy.get());
    }
}
