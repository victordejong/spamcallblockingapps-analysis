package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmq.class */
public final class zzmq implements zzmn {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.service.sessions.remove_disabled_session_number", true);
        zzb = zzcrVar.zza("measurement.service.sessions.session_number_enabled", true);
        zzc = zzcrVar.zza("measurement.service.sessions.session_number_backfill_enabled", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zzb() {
        return zzb.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zzc() {
        return zzc.zzc().booleanValue();
    }
}
