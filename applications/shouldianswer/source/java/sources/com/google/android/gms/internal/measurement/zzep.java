package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzep.class */
final class zzep implements zzis {
    private final zzen zza;

    private zzep(zzen zzenVar) {
        this.zza = (zzen) zzff.zza(zzenVar, "output");
        this.zza.zza = this;
    }

    public static zzep zza(zzen zzenVar) {
        return zzenVar.zza != null ? zzenVar.zza : new zzep(zzenVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final int zza() {
        return zzfd.zze.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i) {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, double d) {
        this.zza.zza(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, float f) {
        this.zza.zza(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, long j) {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, zzdu zzduVar) {
        this.zza.zza(i, zzduVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final <K, V> void zza(int i, zzgf<K, V> zzgfVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zza(i, 2);
            this.zza.zzb(zzgg.zza(zzgfVar, entry.getKey(), entry.getValue()));
            zzgg.zza(this.zza, zzgfVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, Object obj) {
        if (obj instanceof zzdu) {
            this.zza.zzb(i, (zzdu) obj);
        } else {
            this.zza.zza(i, (zzgo) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, Object obj, zzhd zzhdVar) {
        this.zza.zza(i, (zzgo) obj, zzhdVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, String str) {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, List<String> list) {
        if (!(list instanceof zzfv)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2));
            }
            return;
        }
        zzfv zzfvVar = (zzfv) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzb = zzfvVar.zzb(i3);
            if (zzb instanceof String) {
                this.zza.zza(i, (String) zzb);
            } else {
                this.zza.zza(i, (zzdu) zzb);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, List<?> list, zzhd zzhdVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzhdVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzf(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zza(int i, boolean z) {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i) {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, long j) {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, Object obj, zzhd zzhdVar) {
        zzen zzenVar = this.zza;
        zzenVar.zza(i, 3);
        zzhdVar.zza((zzhd) ((zzgo) obj), (zzis) zzenVar.zza);
        zzenVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, List<zzdu> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, List<?> list, zzhd zzhdVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzhdVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzb(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzi(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i, long j) {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzc(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzd(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i, long j) {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzd(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zze(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i, int i2) {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i, long j) {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zze(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzg(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzf(int i, int i2) {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzf(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzb(list.get(i4).floatValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzg(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzb(list.get(i4).doubleValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzh(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzk(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzi(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzb(list.get(i4).booleanValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzj(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzg(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzk(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzj(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzl(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzh(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzm(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzh(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final void zzn(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzen.zzf(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).longValue());
        }
    }
}
