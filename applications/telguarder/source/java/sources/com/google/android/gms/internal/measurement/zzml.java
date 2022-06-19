package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
public final class zzml implements zzmk {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;
    public static final zzfg<Boolean> zzc;
    public static final zzfg<Boolean> zzd;
    public static final zzfg<Long> zze;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.sdk.collection.enable_extend_user_property_size", true);
        zzb = zzfeVar.zzb("measurement.sdk.collection.last_deep_link_referrer2", true);
        zzc = zzfeVar.zzb("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        zzd = zzfeVar.zzb("measurement.sdk.collection.last_gclid_from_referrer2", false);
        zze = zzfeVar.zza("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzc() {
        return zzc.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzd() {
        return zzd.zze().booleanValue();
    }
}
