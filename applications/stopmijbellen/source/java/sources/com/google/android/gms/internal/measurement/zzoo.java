package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoo.class */
public final class zzoo implements zzon {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;
    public static final zzht<Boolean> zzc;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.client.sessions.check_on_reset_and_enable2", true);
        zzb = zzhrVar.zzb("measurement.client.sessions.check_on_startup", true);
        zzc = zzhrVar.zzb("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzon
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzon
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
