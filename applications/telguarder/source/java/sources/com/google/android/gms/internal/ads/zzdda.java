package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdda.class */
public final class zzdda implements zzeqb<zzdcy> {
    private final zzeqo<zzdzv> zzewf;

    private zzdda(zzeqo<zzdzv> zzeqoVar) {
        this.zzewf = zzeqoVar;
    }

    public static zzdda zzao(zzeqo<zzdzv> zzeqoVar) {
        return new zzdda(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdcy(this.zzewf.get());
    }
}
