package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlt.class */
public final class zzlt implements zzls {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Long> zzb;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.sdk.referrer.delayed_install_referrer_api", false);
        zzb = zzfeVar.zza("measurement.id.sdk.referrer.delayed_install_referrer_api", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzls
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzls
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
