package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdce.class */
public final class zzdce implements zzeqb<zzdcc> {
    private final zzeqo<zzdjx> zzfyi;

    private zzdce(zzeqo<zzdjx> zzeqoVar) {
        this.zzfyi = zzeqoVar;
    }

    public static zzdce zzan(zzeqo<zzdjx> zzeqoVar) {
        return new zzdce(zzeqoVar);
    }

    public static zzdcc zzb(zzdjx zzdjxVar) {
        return new zzdcc(zzdjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfyi.get());
    }
}
