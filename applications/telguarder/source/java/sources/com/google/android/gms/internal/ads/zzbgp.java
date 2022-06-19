package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgp.class */
public final class zzbgp implements zzeqb<zzazn> {
    private final zzbgb zzewc;

    public zzbgp(zzbgb zzbgbVar) {
        this.zzewc = zzbgbVar;
    }

    public static zzazn zzb(zzbgb zzbgbVar) {
        return (zzazn) zzeqh.zza(zzbgbVar.zzaew(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzewc);
    }
}
