package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcii.class */
public final class zzcii implements zzeqb<zzcif> {
    private final zzeqo<zzbeb> zzfuu;

    private zzcii(zzeqo<zzbeb> zzeqoVar) {
        this.zzfuu = zzeqoVar;
    }

    public static zzcii zzaa(zzeqo<zzbeb> zzeqoVar) {
        return new zzcii(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcif(this.zzfuu.get());
    }
}
