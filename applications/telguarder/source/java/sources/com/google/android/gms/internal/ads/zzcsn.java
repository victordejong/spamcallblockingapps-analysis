package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsn.class */
final /* synthetic */ class zzcsn implements zzbnu {
    private final zzdog zzgts;

    private zzcsn(zzdog zzdogVar) {
        this.zzgts = zzdogVar;
    }

    public static zzbnu zza(zzdog zzdogVar) {
        return new zzcsn(zzdogVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final zzzc getVideoController() {
        return this.zzgts.getVideoController();
    }
}
