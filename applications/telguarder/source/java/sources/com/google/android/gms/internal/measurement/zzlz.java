package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlz.class */
public final class zzlz implements zzly {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;
    public static final zzfg<Boolean> zzc;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzb = zzfeVar.zzb("measurement.client.sessions.check_on_startup", true);
        zzc = zzfeVar.zzb("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzly
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
