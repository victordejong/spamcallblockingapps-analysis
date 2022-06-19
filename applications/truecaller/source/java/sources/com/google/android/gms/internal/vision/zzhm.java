package com.google.android.gms.internal.vision;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhm.class */
public abstract class zzhm {
    private static final zzhm zzye = new zzho((zzhl) null);
    private static final zzhm zzyf = new zzhn((zzhl) null);

    private zzhm() {
    }

    public static zzhm zzgz() {
        return zzye;
    }

    public static zzhm zzha() {
        return zzyf;
    }

    public abstract <L> List<L> zza(Object obj, long j);

    public abstract <L> void zza(Object obj, Object obj2, long j);

    public abstract void zzb(Object obj, long j);
}
