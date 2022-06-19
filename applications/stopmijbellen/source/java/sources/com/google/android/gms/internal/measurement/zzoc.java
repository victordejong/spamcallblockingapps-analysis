package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoc.class */
public final class zzoc implements zzob {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzob
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
