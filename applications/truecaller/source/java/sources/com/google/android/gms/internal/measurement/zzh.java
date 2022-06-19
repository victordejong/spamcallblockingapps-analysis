package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    public static double zza(double d) {
        if (Double.isNaN(d)) {
            return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        }
        char c = d;
        if (!Double.isInfinite(d)) {
            int i = (d > PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 1 : (d == PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 0 : -1));
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

    public static int zzb(double d) {
        int i;
        if (Double.isNaN(d) || Double.isInfinite(d) || d == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d)) * (i > 0 ? 1 : -1)) % 4.294967296E9d);
    }

    public static int zzc(zzg zzgVar) {
        int zzb = zzb(zzgVar.zzd("runtime.counter").zzh().doubleValue() + 1.0d);
        if (zzb <= 1000000) {
            zzgVar.zzg("runtime.counter", new zzah(Double.valueOf(zzb)));
            return zzb;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }

    public static long zzd(double d) {
        return zzb(d) & 4294967295L;
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

    public static Object zzf(zzap zzapVar) {
        if (zzap.zzg.equals(zzapVar)) {
            return null;
        }
        if (zzap.zzf.equals(zzapVar)) {
            return "";
        }
        if (zzapVar instanceof zzam) {
            return zzg((zzam) zzapVar);
        }
        if (!(zzapVar instanceof zzae)) {
            return !zzapVar.zzh().isNaN() ? zzapVar.zzh() : zzapVar.zzi();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((zzae) zzapVar).iterator();
        while (it.hasNext()) {
            Object zzf = zzf((zzap) it.next());
            if (zzf != null) {
                arrayList.add(zzf);
            }
        }
        return arrayList;
    }

    public static Map zzg(zzam zzamVar) {
        HashMap hashMap = new HashMap();
        for (String str : zzamVar.zzb()) {
            Object zzf = zzf(zzamVar.zzf(str));
            if (zzf != null) {
                hashMap.put(str, zzf);
            }
        }
        return hashMap;
    }

    public static void zzh(String str, int i, List list) {
        if (list.size() == i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static void zzi(String str, int i, List list) {
        if (list.size() >= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static void zzj(String str, int i, List list) {
        if (list.size() <= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    public static boolean zzk(zzap zzapVar) {
        if (zzapVar == null) {
            return false;
        }
        Double zzh = zzapVar.zzh();
        return !zzh.isNaN() && zzh.doubleValue() >= PlaceLikelihood.LIKELIHOOD_MIN_VALUE && zzh.equals(Double.valueOf(Math.floor(zzh.doubleValue())));
    }

    public static boolean zzl(zzap zzapVar, zzap zzapVar2) {
        if (!zzapVar.getClass().equals(zzapVar2.getClass())) {
            return false;
        }
        if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
            return true;
        }
        if (!(zzapVar instanceof zzah)) {
            return zzapVar instanceof zzat ? zzapVar.zzi().equals(zzapVar2.zzi()) : zzapVar instanceof zzaf ? zzapVar.zzg().equals(zzapVar2.zzg()) : zzapVar == zzapVar2;
        } else if (!Double.isNaN(zzapVar.zzh().doubleValue()) && !Double.isNaN(zzapVar2.zzh().doubleValue())) {
            return zzapVar.zzh().equals(zzapVar2.zzh());
        } else {
            return false;
        }
    }
}
