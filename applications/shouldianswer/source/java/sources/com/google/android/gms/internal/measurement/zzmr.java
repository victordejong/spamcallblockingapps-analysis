package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmr.class */
public final class zzmr implements zzms {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;
    private static final zzcl<Boolean> zzd;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.client.sessions.background_sessions_enabled", true);
        zzb = zzcrVar.zza("measurement.client.sessions.immediate_start_enabled_foreground", true);
        zzc = zzcrVar.zza("measurement.client.sessions.remove_expired_session_properties_enabled", true);
        zzd = zzcrVar.zza("measurement.client.sessions.session_id_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zzb() {
        return zzc.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzms
    public final boolean zzc() {
        return zzd.zzc().booleanValue();
    }
}
