package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzff.class */
public final class zzff implements zzjd {
    private final zzfc zza;

    private zzff(zzfc zzfcVar) {
        zzfc zzfcVar2 = (zzfc) zzfs.zza(zzfcVar, "output");
        this.zza = zzfcVar2;
        zzfcVar2.zza = this;
    }

    public static zzff zza(zzfc zzfcVar) {
        zzff zzffVar = zzfcVar.zza;
        return zzffVar != null ? zzffVar : new zzff(zzfcVar);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final int zza() {
        return zzjc.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i) throws IOException {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, double d) throws IOException {
        this.zza.zza(i, d);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, float f) throws IOException {
        this.zza.zza(i, f);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, zzep zzepVar) throws IOException {
        this.zza.zza(i, zzepVar);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final <K, V> void zza(int i, zzgs<K, V> zzgsVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zza(i, 2);
            zzfc zzfcVar = this.zza;
            K key = entry.getKey();
            V value = entry.getValue();
            zzfcVar.zzb(zzfl.zza(zzgsVar.zzb, 2, value) + zzfl.zza(zzgsVar.zza, 1, key));
            zzfc zzfcVar2 = this.zza;
            K key2 = entry.getKey();
            V value2 = entry.getValue();
            zzfl.zza(zzfcVar2, zzgsVar.zza, 1, key2);
            zzfl.zza(zzfcVar2, zzgsVar.zzb, 2, value2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzep) {
            this.zza.zzb(i, (zzep) obj);
        } else {
            this.zza.zza(i, (zzhb) obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, Object obj, zzhr zzhrVar) throws IOException {
        this.zza.zza(i, (zzhb) obj, zzhrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, String str) throws IOException {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, List<String> list) throws IOException {
        if (!(list instanceof zzgi)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2));
            }
            return;
        }
        zzgi zzgiVar = (zzgi) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zza = zzgiVar.zza(i3);
            if (zza instanceof String) {
                this.zza.zza(i, (String) zza);
            } else {
                this.zza.zza(i, (zzep) zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, List<?> list, zzhr zzhrVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzhrVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzf(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zza(int i, boolean z) throws IOException {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i) throws IOException {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, Object obj, zzhr zzhrVar) throws IOException {
        zzfc zzfcVar = this.zza;
        zzfcVar.zza(i, 3);
        zzhrVar.zza((zzhr) ((zzhb) obj), (zzjd) zzfcVar.zza);
        zzfcVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, List<zzep> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, List<?> list, zzhr zzhrVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzhrVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzi(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzc(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzc(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzd(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzd(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zze(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zze(int i, int i2) throws IOException {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zze(int i, long j) throws IOException {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzg(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzf(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzb(list.get(i4).floatValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzb(list.get(i4).doubleValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzk(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzb(list.get(i4).booleanValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzg(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzj(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzh(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzh(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzjd
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzfc.zzf(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).longValue());
        }
    }
}
