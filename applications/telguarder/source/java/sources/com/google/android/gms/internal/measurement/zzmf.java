package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmf.class */
public final class zzmf implements zzme {
    public static final zzfg<Boolean> zza = new zzfe(zzex.zza("com.google.android.gms.measurement")).zzb("measurement.collection.firebase_global_collection_flag_enabled", true);

    @Override // com.google.android.gms.internal.measurement.zzme
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
