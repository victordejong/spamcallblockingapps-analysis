package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlh.class */
public final class zzlh implements zzlg {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;
    public static final zzfg<Boolean> zzc;
    public static final zzfg<Long> zzd;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.sdk.dynamite.allow_remote_dynamite3", true);
        zzb = zzfeVar.zzb("measurement.collection.init_params_control_enabled", true);
        zzc = zzfeVar.zzb("measurement.sdk.dynamite.use_dynamite3", true);
        zzd = zzfeVar.zza("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
