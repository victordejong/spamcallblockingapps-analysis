package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzjr.class */
public final class zzjr implements zznm {
    private final zzjp zza;

    private zzjr(zzjp zzjpVar) {
        zzjp zzjpVar2 = (zzjp) zzkf.zza(zzjpVar, "output");
        this.zza = zzjpVar2;
        zzjpVar2.zza = this;
    }

    public static zzjr zza(zzjp zzjpVar) {
        zzjr zzjrVar = zzjpVar.zza;
        return zzjrVar != null ? zzjrVar : new zzjr(zzjpVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final int zza() {
        return zznp.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i) throws IOException {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, double d) throws IOException {
        this.zza.zza(i, d);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, float f) throws IOException {
        this.zza.zza(i, f);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, zziy zziyVar) throws IOException {
        this.zza.zza(i, zziyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final <K, V> void zza(int i, zzlf<K, V> zzlfVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zza(i, 2);
            zzjp zzjpVar = this.zza;
            K key = entry.getKey();
            V value = entry.getValue();
            zzjpVar.zzb(zzju.zza(zzlfVar.zzb, 2, value) + zzju.zza(zzlfVar.zza, 1, key));
            zzjp zzjpVar2 = this.zza;
            K key2 = entry.getKey();
            V value2 = entry.getValue();
            zzju.zza(zzjpVar2, zzlfVar.zza, 1, key2);
            zzju.zza(zzjpVar2, zzlfVar.zzb, 2, value2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zziy) {
            this.zza.zzb(i, (zziy) obj);
        } else {
            this.zza.zza(i, (zzlk) obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, Object obj, zzma zzmaVar) throws IOException {
        this.zza.zza(i, (zzlk) obj, zzmaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, String str) throws IOException {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, List<String> list) throws IOException {
        if (!(list instanceof zzkv)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2));
            }
            return;
        }
        zzkv zzkvVar = (zzkv) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zza = zzkvVar.zza(i3);
            if (zza instanceof String) {
                this.zza.zza(i, (String) zza);
            } else {
                this.zza.zza(i, (zziy) zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, List<?> list, zzma zzmaVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzmaVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzf(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zza(int i, boolean z) throws IOException {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i) throws IOException {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i, Object obj, zzma zzmaVar) throws IOException {
        zzjp zzjpVar = this.zza;
        zzjpVar.zza(i, 3);
        zzmaVar.zza((zzma) ((zzlk) obj), (zznm) zzjpVar.zza);
        zzjpVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i, List<zziy> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzb(int i, List<?> list, zzma zzmaVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzmaVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzi(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzc(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzc(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzd(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzd(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zze(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zze(int i, int i2) throws IOException {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zze(int i, long j) throws IOException {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzg(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
    public final void zzf(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzb(list.get(i4).floatValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzb(list.get(i4).doubleValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzk(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzb(list.get(i4).booleanValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzg(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzj(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzh(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzh(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zznm
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
            i3 += zzjp.zzf(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).longValue());
        }
    }
}
