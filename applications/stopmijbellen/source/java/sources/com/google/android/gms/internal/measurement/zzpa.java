package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzpa.class */
public final class zzpa implements zzoz {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;
    public static final zzht<Boolean> zzc;
    public static final zzht<Boolean> zzd;
    public static final zzht<Long> zze;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.sdk.collection.enable_extend_user_property_size", true);
        zzb = zzhrVar.zzb("measurement.sdk.collection.last_deep_link_referrer2", true);
        zzc = zzhrVar.zzb("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        zzd = zzhrVar.zzb("measurement.sdk.collection.last_gclid_from_referrer2", false);
        zze = zzhrVar.zza("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzoz
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoz
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoz
    public final boolean zzc() {
        return zzc.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoz
    public final boolean zzd() {
        return zzd.zze().booleanValue();
    }
}
