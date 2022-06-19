package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkv.class */
public final class zzkv implements zzkw {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.client.sessions.check_on_reset_and_enable", false);
        zzb = zzcrVar.zza("measurement.client.sessions.check_on_startup", true);
        zzc = zzcrVar.zza("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzc() {
        return zzb.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkw
    public final boolean zzd() {
        return zzc.zzc().booleanValue();
    }
}
