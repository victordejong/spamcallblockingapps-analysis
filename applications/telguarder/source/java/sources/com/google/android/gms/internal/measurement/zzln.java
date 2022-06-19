package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzln.class */
public final class zzln implements zzlm {
    public static final zzfg<Boolean> zza = new zzfe(zzex.zza("com.google.android.gms.measurement")).zzb("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzlm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlm
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
