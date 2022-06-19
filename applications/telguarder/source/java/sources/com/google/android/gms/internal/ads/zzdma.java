package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdma.class */
public final class zzdma implements zzeqb<zzdlh> {
    private final zzeqo<zzdov> zzhfz;

    private zzdma(zzeqo<zzdov> zzeqoVar) {
        this.zzhfz = zzeqoVar;
    }

    public static zzdma zzas(zzeqo<zzdov> zzeqoVar) {
        return new zzdma(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdlh(this.zzhfz.get());
    }
}
