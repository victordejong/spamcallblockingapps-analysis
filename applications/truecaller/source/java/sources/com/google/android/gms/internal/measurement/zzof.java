package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzof.class */
public final class zzof implements zzoe {
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzb = zzhrVar.zze("measurement.client.sessions.check_on_startup", true);
        zzc = zzhrVar.zze("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
