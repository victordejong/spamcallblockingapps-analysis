package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmx.class */
public final class zzmx implements zzmy {

    /* renamed from: a */
    private static final zzdh<Boolean> f8722a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8723b;

    /* renamed from: c */
    private static final zzdh<Boolean> f8724c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        zzdmVar.m12757d("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f8722a = zzdmVar.m12757d("measurement.audience.refresh_event_count_filters_timestamp", false);
        f8723b = zzdmVar.m12757d("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f8724c = zzdmVar.m12757d("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzmy
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmy
    public final boolean zzb() {
        return f8722a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmy
    public final boolean zzc() {
        return f8723b.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmy
    public final boolean zzd() {
        return f8724c.m12764o().booleanValue();
    }
}
