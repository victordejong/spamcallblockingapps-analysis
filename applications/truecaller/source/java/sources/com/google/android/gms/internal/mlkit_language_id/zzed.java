package com.google.android.gms.internal.mlkit_language_id;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzed.class */
public final class zzed implements zzib {
    private final zzea zza;

    private zzed(zzea zzeaVar) {
        zzea zzeaVar2 = (zzea) zzeq.zza(zzeaVar, "output");
        this.zza = zzeaVar2;
        zzeaVar2.zza = this;
    }

    public static zzed zza(zzea zzeaVar) {
        zzed zzedVar = zzeaVar.zza;
        return zzedVar != null ? zzedVar : new zzed(zzeaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final int zza() {
        return zzia.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i) throws IOException {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, double d) throws IOException {
        this.zza.zza(i, d);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, float f) throws IOException {
        this.zza.zza(i, f);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, zzdn zzdnVar) throws IOException {
        this.zza.zza(i, zzdnVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final <K, V> void zza(int i, zzfq<K, V> zzfqVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zza.zza(i, 2);
            zzea zzeaVar = this.zza;
            K key = entry.getKey();
            V value = entry.getValue();
            zzeaVar.zzb(zzej.zza(zzfqVar.zzb, 2, value) + zzej.zza(zzfqVar.zza, 1, key));
            zzea zzeaVar2 = this.zza;
            K key2 = entry.getKey();
            V value2 = entry.getValue();
            zzej.zza(zzeaVar2, zzfqVar.zza, 1, key2);
            zzej.zza(zzeaVar2, zzfqVar.zzb, 2, value2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzdn) {
            this.zza.zzb(i, (zzdn) obj);
        } else {
            this.zza.zza(i, (zzfz) obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, Object obj, zzgp zzgpVar) throws IOException {
        this.zza.zza(i, (zzfz) obj, zzgpVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, String str) throws IOException {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, List<String> list) throws IOException {
        if (!(list instanceof zzfg)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zza(i, list.get(i2));
            }
            return;
        }
        zzfg zzfgVar = (zzfg) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zza = zzfgVar.zza(i3);
            if (zza instanceof String) {
                this.zza.zza(i, (String) zza);
            } else {
                this.zza.zza(i, (zzdn) zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, List<?> list, zzgp zzgpVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzgpVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzf(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, boolean z) throws IOException {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i) throws IOException {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, Object obj, zzgp zzgpVar) throws IOException {
        zzea zzeaVar = this.zza;
        zzeaVar.zza(i, 3);
        zzgpVar.zza((zzgp) ((zzfz) obj), (zzib) zzeaVar.zza);
        zzeaVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, List<zzdn> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, List<?> list, zzgp zzgpVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzgpVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzi(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzc(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzc(int i, long j) throws IOException {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzd(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzd(int i, int i2) throws IOException {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzd(int i, long j) throws IOException {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zze(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zze(int i, int i2) throws IOException {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zze(int i, long j) throws IOException {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzg(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzf(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzb(list.get(i4).floatValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzb(list.get(i4).doubleValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzk(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzb(list.get(i4).booleanValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zza(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzg(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzj(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzd(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzh(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzh(list.get(i4).intValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzc(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
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
            i3 += zzea.zzf(list.get(i4).longValue());
        }
        this.zza.zzb(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).longValue());
        }
    }
}
