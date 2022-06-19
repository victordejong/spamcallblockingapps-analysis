package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlm.class */
public final class zzlm implements zzlj {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;
    private static final zzcl<Boolean> zzd;
    private static final zzcl<Long> zze;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.sdk.collection.last_deep_link_referrer", false);
        zzb = zzcrVar.zza("measurement.sdk.collection.last_deep_link_referrer_campaign", false);
        zzc = zzcrVar.zza("measurement.sdk.collection.last_gclid_from_referrer", false);
        zzd = zzcrVar.zza("measurement.sdk.collection.worker_thread_referrer", true);
        zze = zzcrVar.zza("measurement.id.sdk.collection.last_deep_link_referrer", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzc() {
        return zzb.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzd() {
        return zzc.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zze() {
        return zzd.zzc().booleanValue();
    }
}
