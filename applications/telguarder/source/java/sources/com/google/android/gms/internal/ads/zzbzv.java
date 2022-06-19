package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzv.class */
public final class zzbzv implements zzeqb<zzbzw> {
    private final zzeqo<zzbtj> zzfhj;
    private final zzeqo<zzbxw> zzflh;

    private zzbzv(zzeqo<zzbtj> zzeqoVar, zzeqo<zzbxw> zzeqoVar2) {
        this.zzfhj = zzeqoVar;
        this.zzflh = zzeqoVar2;
    }

    public static zzbzv zzt(zzeqo<zzbtj> zzeqoVar, zzeqo<zzbxw> zzeqoVar2) {
        return new zzbzv(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbzw(this.zzfhj.get(), this.zzflh.get());
    }
}
