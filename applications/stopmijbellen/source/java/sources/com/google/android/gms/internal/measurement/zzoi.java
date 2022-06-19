package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoi.class */
public final class zzoi implements zzoh {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;
    public static final zzht<Boolean> zzc;
    public static final zzht<Boolean> zzd;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        zzb = zzhrVar.zzb("measurement.audience.refresh_event_count_filters_timestamp", false);
        zzc = zzhrVar.zzb("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        zzd = zzhrVar.zzb("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzoh
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoh
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoh
    public final boolean zzc() {
        return zzc.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoh
    public final boolean zzd() {
        return zzd.zze().booleanValue();
    }
}
