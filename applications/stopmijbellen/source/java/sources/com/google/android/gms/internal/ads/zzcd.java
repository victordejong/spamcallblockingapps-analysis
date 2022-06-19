package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcd.class */
public abstract class zzcd {
    public static final zzcd zza = new zzby();
    public static final zzj<zzcd> zzb = zzbx.zza;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcd)) {
            return false;
        }
        zzcd zzcdVar = (zzcd) obj;
        if (zzcdVar.zzc() != zzc() || zzcdVar.zzb() != zzb()) {
            return false;
        }
        zzcc zzccVar = new zzcc();
        zzca zzcaVar = new zzca();
        zzcc zzccVar2 = new zzcc();
        zzca zzcaVar2 = new zzca();
        for (int i = 0; i < zzc(); i++) {
            if (!zze(i, zzccVar, 0L).equals(zzcdVar.zze(i, zzccVar2, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < zzb(); i2++) {
            if (!zzd(i2, zzcaVar, true).equals(zzcdVar.zzd(i2, zzcaVar2, true))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        zzcc zzccVar = new zzcc();
        zzca zzcaVar = new zzca();
        int zzc = zzc() + 217;
        for (int i = 0; i < zzc(); i++) {
            zzc = (zzc * 31) + zze(i, zzccVar, 0L).hashCode();
        }
        int zzb2 = zzb() + (zzc * 31);
        for (int i2 = 0; i2 < zzb(); i2++) {
            zzb2 = (zzb2 * 31) + zzd(i2, zzcaVar, true).hashCode();
        }
        return zzb2;
    }

    public abstract int zza(Object obj);

    public abstract int zzb();

    public abstract int zzc();

    public abstract zzca zzd(int i, zzca zzcaVar, boolean z);

    public abstract zzcc zze(int i, zzcc zzccVar, long j);

    public abstract Object zzf(int i);

    public int zzg(boolean z) {
        return zzo() ? -1 : 0;
    }

    public int zzh(boolean z) {
        if (zzo()) {
            return -1;
        }
        return zzc() - 1;
    }

    public final int zzi(int i, zzca zzcaVar, zzcc zzccVar, int i2, boolean z) {
        int i3 = zzd(i, zzcaVar, false).zzd;
        if (zze(i3, zzccVar, 0L).zzp == i) {
            int zzj = zzj(i3, i2, z);
            if (zzj != -1) {
                return zze(zzj, zzccVar, 0L).zzo;
            }
            return -1;
        }
        return i + 1;
    }

    public int zzj(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i != zzh(z)) {
                return i + 1;
            }
            return -1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == zzh(z) ? zzg(z) : i + 1;
        }
    }

    public int zzk(int i, int i2, boolean z) {
        if (i == zzg(false)) {
            return -1;
        }
        return i - 1;
    }

    public final Pair<Object, Long> zzl(zzcc zzccVar, zzca zzcaVar, int i, long j) {
        Pair<Object, Long> zzm = zzm(zzccVar, zzcaVar, i, j, 0L);
        Objects.requireNonNull(zzm);
        return zzm;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    public final Pair<Object, Long> zzm(zzcc zzccVar, zzca zzcaVar, int i, long j, long j2) {
        zzdy.zza(i, 0, zzc());
        zze(i, zzccVar, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            long j3 = zzccVar.zzm;
            c = 0;
        }
        int i2 = zzccVar.zzo;
        zzd(i2, zzcaVar, false);
        while (i2 < zzccVar.zzp) {
            long j4 = zzcaVar.zzf;
            int i3 = (c > 0L ? 1 : (c == 0L ? 0 : -1));
            if (i3 == 0) {
                break;
            }
            int i4 = i2 + 1;
            long j5 = zzd(i4, zzcaVar, false).zzf;
            if (i3 < 0) {
                break;
            }
            i2 = i4;
        }
        zzd(i2, zzcaVar, true);
        long j6 = zzcaVar.zzf;
        long j7 = zzcaVar.zze;
        char c2 = c;
        if (j7 != -9223372036854775807L) {
            c2 = Math.min((long) c, j7 - 1);
        }
        long max = Math.max(0L, (long) c2);
        Object obj = zzcaVar.zzc;
        Objects.requireNonNull(obj);
        return Pair.create(obj, Long.valueOf(max));
    }

    public zzca zzn(Object obj, zzca zzcaVar) {
        return zzd(zza(obj), zzcaVar, true);
    }

    public final boolean zzo() {
        return zzc() == 0;
    }
}
