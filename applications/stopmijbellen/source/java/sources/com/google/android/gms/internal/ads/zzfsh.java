package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsh.class */
public abstract class zzfsh {
    private static final zzfsh zza = new zzfse();
    private static final zzfsh zzb = new zzfsf(-1);
    private static final zzfsh zzc = new zzfsf(1);

    public /* synthetic */ zzfsh(zzfsg zzfsgVar) {
    }

    public static zzfsh zzj() {
        return zza;
    }

    public abstract int zza();

    public abstract zzfsh zzb(int i, int i2);

    public abstract <T> zzfsh zzc(T t, T t2, Comparator<T> comparator);

    public abstract zzfsh zzd(boolean z, boolean z2);

    public abstract zzfsh zze(boolean z, boolean z2);
}
