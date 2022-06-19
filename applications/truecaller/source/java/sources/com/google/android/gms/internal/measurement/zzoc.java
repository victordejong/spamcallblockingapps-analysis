package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzoc.class */
public final class zzoc implements zzob {
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;
    public static final zzhu zzd;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        zzb = zzhrVar.zze("measurement.audience.refresh_event_count_filters_timestamp", false);
        zzc = zzhrVar.zze("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        zzd = zzhrVar.zze("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zzb() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zzc() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zzd() {
        return ((Boolean) zzd.zzb()).booleanValue();
    }
}
