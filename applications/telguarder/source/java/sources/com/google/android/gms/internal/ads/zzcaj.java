package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaj.class */
public final class zzcaj implements zzeqb<zzcak> {
    private final zzeqo<zzbsg> zzfyh;

    private zzcaj(zzeqo<zzbsg> zzeqoVar) {
        this.zzfyh = zzeqoVar;
    }

    public static zzcaj zzx(zzeqo<zzbsg> zzeqoVar) {
        return new zzcaj(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcak(this.zzfyh.get());
    }
}
