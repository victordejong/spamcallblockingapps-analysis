package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzqb.class */
public final class zzqb implements zzqa {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.client.reject_blank_user_id", true);

    @Override // com.google.android.gms.internal.measurement.zzqa
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
