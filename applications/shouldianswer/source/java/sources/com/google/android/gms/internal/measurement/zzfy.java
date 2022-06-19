package com.google.android.gms.internal.measurement;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfy.class */
public abstract class zzfy {
    private static final zzfy zza = new zzga();
    private static final zzfy zzb = new zzfz();

    /* JADX INFO: Access modifiers changed from: private */
    public zzfy() {
    }

    public static zzfy zza() {
        return zza;
    }

    public static zzfy zzb() {
        return zzb;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract <L> void zza(Object obj, Object obj2, long j);

    public abstract void zzb(Object obj, long j);
}
