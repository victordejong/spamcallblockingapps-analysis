package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjn.class */
public final class zzcjn implements zzeqb<zzcjk> {
    private final zzeqo<zzdkv> zzfan;
    private final zzeqo<zztu> zzgjp;

    private zzcjn(zzeqo<zztu> zzeqoVar, zzeqo<zzdkv> zzeqoVar2) {
        this.zzgjp = zzeqoVar;
        this.zzfan = zzeqoVar2;
    }

    public static zzcjn zzad(zzeqo<zztu> zzeqoVar, zzeqo<zzdkv> zzeqoVar2) {
        return new zzcjn(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcjk(this.zzgjp.get(), this.zzfan.get());
    }
}
