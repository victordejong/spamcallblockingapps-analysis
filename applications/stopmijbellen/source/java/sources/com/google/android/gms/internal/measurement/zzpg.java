package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzpg.class */
public final class zzpg implements zzpf {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.sdk.screen.manual_screen_view_logging", true);
        zzb = zzhrVar.zzb("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzpf
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpf
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpf
    public final boolean zzc() {
        return zzb.zze().booleanValue();
    }
}
