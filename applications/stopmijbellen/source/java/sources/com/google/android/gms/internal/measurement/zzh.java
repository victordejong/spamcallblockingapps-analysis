package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh {
    public static void zza(String str, int i, List<zzap> list) {
        if (list.size() == i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static void zzb(String str, int i, List<zzap> list) {
        if (list.size() >= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static void zzc(String str, int i, List<zzap> list) {
        if (list.size() <= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static boolean zzd(zzap zzapVar) {
        if (zzapVar == null) {
            return false;
        }
        Double zzd = zzapVar.zzd();
        return !zzd.isNaN() && zzd.doubleValue() >= 0.0d && zzd.equals(Double.valueOf(Math.floor(zzd.doubleValue())));
    }

    public static zzbl zze(String str) {
        zzbl zzblVar = null;
        if (str != null) {
            zzblVar = null;
            if (!str.isEmpty()) {
                zzblVar = zzbl.zza(Integer.parseInt(str));
            }
        }
        if (zzblVar != null) {
            return zzblVar;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static boolean zzf(zzap zzapVar, zzap zzapVar2) {
        if (!zzapVar.getClass().equals(zzapVar2.getClass())) {
            return false;
        }
        if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
            return true;
        }
        if (!(zzapVar instanceof zzah)) {
            return zzapVar instanceof zzat ? zzapVar.zzc().equals(zzapVar2.zzc()) : zzapVar instanceof zzaf ? zzapVar.zze().equals(zzapVar2.zze()) : zzapVar == zzapVar2;
        } else if (!Double.isNaN(zzapVar.zzd().doubleValue()) && !Double.isNaN(zzapVar2.zzd().doubleValue())) {
            return zzapVar.zzd().equals(zzapVar2.zzd());
        } else {
            return false;
        }
    }

    public static int zzg(double d) {
        int i;
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d)) * (i > 0 ? 1 : -1)) % 4.294967296E9d);
    }

    public static long zzh(double d) {
        return zzg(d) & 4294967295L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    public static double zzi(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        char c = d;
        if (!Double.isInfinite(d)) {
            int i = (d > 0.0d ? 1 : (d == 0.0d ? 0 : -1));
            c = d;
            if (i != 0) {
                if (i == 0) {
                    c = d;
                } else {
                    c = Math.floor(Math.abs(d)) * (i > 0 ? 1 : -1);
                }
            }
        }
        return c;
    }

    public static Object zzj(zzap zzapVar) {
        if (zzap.zzg.equals(zzapVar)) {
            return null;
        }
        return zzap.zzf.equals(zzapVar) ? "" : !zzapVar.zzd().isNaN() ? zzapVar.zzd() : zzapVar.zzc();
    }

    public static int zzk(zzg zzgVar) {
        int zzg = zzg(zzgVar.zzh("runtime.counter").zzd().doubleValue() + 1.0d);
        if (zzg <= 1000000) {
            zzgVar.zze("runtime.counter", new zzah(Double.valueOf(zzg)));
            return zzg;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }
}
