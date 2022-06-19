package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
public final class zzml implements zzmm {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;
    private static final zzcl<Boolean> zzd;
    private static final zzcl<Boolean> zze;
    private static final zzcl<Boolean> zzf;
    private static final zzcl<Long> zzg;
    private static final zzcl<Boolean> zzh;
    private static final zzcl<Boolean> zzi;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.service.audience.scoped_filters_v27", false);
        zzb = zzcrVar.zza("measurement.service.audience.session_scoped_user_engagement", false);
        zzc = zzcrVar.zza("measurement.client.audience.scoped_engagement_removal_when_session_expired", true);
        zzd = zzcrVar.zza("measurement.service.audience.scoped_engagement_removal_when_session_expired", true);
        zze = zzcrVar.zza("measurement.service.audience.session_scoped_event_aggregates", false);
        zzf = zzcrVar.zza("measurement.service.audience.use_bundle_timestamp_for_property_filters", false);
        zzg = zzcrVar.zza("measurement.id.scoped_audience_filters", 0L);
        zzh = zzcrVar.zza("measurement.service.audience.fix_prepending_previous_sequence_timestamp", false);
        zzi = zzcrVar.zza("measurement.service.audience.remove_disabled_session_scoped_user_engagement", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzc() {
        return zzb.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzd() {
        return zzc.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zze() {
        return zzd.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzf() {
        return zze.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzg() {
        return zzf.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzh() {
        return zzh.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmm
    public final boolean zzi() {
        return zzi.zzc().booleanValue();
    }
}
