package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfa.class */
public final class zzdfa implements zzeqb<zzdey> {
    private final zzeqo<zzdkv> zzfyi;

    private zzdfa(zzeqo<zzdkv> zzeqoVar) {
        this.zzfyi = zzeqoVar;
    }

    public static zzdfa zzar(zzeqo<zzdkv> zzeqoVar) {
        return new zzdfa(zzeqoVar);
    }

    public static zzdey zzb(zzdkv zzdkvVar) {
        return new zzdey(zzdkvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfyi.get());
    }
}
