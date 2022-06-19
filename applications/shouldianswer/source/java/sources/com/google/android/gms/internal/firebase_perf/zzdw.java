package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdu;
import com.google.android.gms.internal.firebase-perf.zzge;
import com.google.android.gms.internal.firebase-perf.zzhq;
import com.google.android.gms.internal.firebase_perf.zzeh;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdw.class */
final class zzdw implements zzhq {
    private final zzdu zzmn;

    private zzdw(zzdu zzduVar) {
        this.zzmn = (zzdu) zzei.zza(zzduVar, "output");
        this.zzmn.zzmw = this;
    }

    public static com.google.android.gms.internal.firebase-perf.zzdw zza(zzdu zzduVar) {
        return zzduVar.zzmw != null ? zzduVar.zzmw : new zzdw(zzduVar);
    }

    public final void zza(int i, double d) {
        this.zzmn.zza(i, d);
    }

    public final void zza(int i, float f) {
        this.zzmn.zza(i, f);
    }

    public final void zza(int i, long j) {
        this.zzmn.zza(i, j);
    }

    public final void zza(int i, zzdd zzddVar) {
        this.zzmn.zza(i, zzddVar);
    }

    public final <K, V> void zza(int i, zzfi<K, V> zzfiVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzmn.zze(i, 2);
            this.zzmn.zzv(zzfj.zza(zzfiVar, entry.getKey(), entry.getValue()));
            zzdu zzduVar = this.zzmn;
            K key = entry.getKey();
            V value = entry.getValue();
            zzdz.zza(zzduVar, zzfiVar.zzsd, 1, key);
            zzdz.zza(zzduVar, zzfiVar.zzsf, 2, value);
        }
    }

    public final void zza(int i, Object obj) {
        if (obj instanceof zzdd) {
            this.zzmn.zzb(i, (zzdd) obj);
        } else {
            this.zzmn.zza(i, (zzfr) obj);
        }
    }

    public final void zza(int i, Object obj, zzge zzgeVar) {
        this.zzmn.zza(i, (zzfr) obj, zzgeVar);
    }

    public final void zza(int i, String str) {
        this.zzmn.zza(i, str);
    }

    public final void zza(int i, List<String> list) {
        if (!(list instanceof zzey)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2));
            }
            return;
        }
        zzey zzeyVar = (zzey) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object raw = zzeyVar.getRaw(i3);
            if (raw instanceof String) {
                this.zzmn.zza(i, (String) raw);
            } else {
                this.zzmn.zza(i, (zzdd) raw);
            }
        }
    }

    public final void zza(int i, List<?> list, zzge zzgeVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), (zzge) zzgeVar);
        }
    }

    public final void zza(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzz(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzu(list.get(i5).intValue());
        }
    }

    public final void zza(int i, boolean z) {
        this.zzmn.zza(i, z);
    }

    public final void zzai(int i) {
        this.zzmn.zze(i, 3);
    }

    public final void zzaj(int i) {
        this.zzmn.zze(i, 4);
    }

    public final void zzb(int i, long j) {
        this.zzmn.zzb(i, j);
    }

    public final void zzb(int i, Object obj, zzge zzgeVar) {
        zzdu zzduVar = this.zzmn;
        zzduVar.zze(i, 3);
        zzgeVar.zza((zzfr) obj, zzduVar.zzmw);
        zzduVar.zze(i, 4);
    }

    public final void zzb(int i, List<zzdd> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzmn.zza(i, list.get(i2));
        }
    }

    public final void zzb(int i, List<?> list, zzge zzgeVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), (zzge) zzgeVar);
        }
    }

    public final void zzb(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzi(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzac(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzx(list.get(i5).intValue());
        }
    }

    public final void zzc(int i, long j) {
        this.zzmn.zzc(i, j);
    }

    public final void zzc(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzan(list.get(i4).longValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzak(list.get(i5).longValue());
        }
    }

    public final void zzd(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzao(list.get(i4).longValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzak(list.get(i5).longValue());
        }
    }

    public final void zze(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzaq(list.get(i4).longValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzam(list.get(i5).longValue());
        }
    }

    public final void zzf(int i, int i2) {
        this.zzmn.zzf(i, i2);
    }

    public final void zzf(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzb(list.get(i4).floatValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zza(list.get(i5).floatValue());
        }
    }

    public final int zzfx() {
        return zzeh.zzd.zzqr;
    }

    public final void zzg(int i, int i2) {
        this.zzmn.zzg(i, i2);
    }

    public final void zzg(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzb(list.get(i4).doubleValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zza(list.get(i5).doubleValue());
        }
    }

    public final void zzh(int i, int i2) {
        this.zzmn.zzh(i, i2);
    }

    public final void zzh(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzae(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzu(list.get(i5).intValue());
        }
    }

    public final void zzi(int i, int i2) {
        this.zzmn.zzi(i, i2);
    }

    public final void zzi(int i, long j) {
        this.zzmn.zza(i, j);
    }

    public final void zzi(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zza(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zze(list.get(i4).booleanValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzd(list.get(i5).booleanValue());
        }
    }

    public final void zzj(int i, long j) {
        this.zzmn.zzc(i, j);
    }

    public final void zzj(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzg(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzaa(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzv(list.get(i5).intValue());
        }
    }

    public final void zzk(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzi(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzad(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzx(list.get(i5).intValue());
        }
    }

    public final void zzl(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzar(list.get(i4).longValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzam(list.get(i5).longValue());
        }
    }

    public final void zzm(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzh(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzab(list.get(i4).intValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzw(list.get(i5).intValue());
        }
    }

    public final void zzn(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzmn.zzb(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzmn.zze(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzdu.zzap(list.get(i4).longValue());
        }
        this.zzmn.zzv(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzmn.zzal(list.get(i5).longValue());
        }
    }

    public final void zzp(int i, int i2) {
        this.zzmn.zzi(i, i2);
    }

    public final void zzq(int i, int i2) {
        this.zzmn.zzf(i, i2);
    }
}
