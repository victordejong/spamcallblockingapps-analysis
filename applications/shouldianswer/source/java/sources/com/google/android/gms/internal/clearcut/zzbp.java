package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbp.class */
final class zzbp implements zzfr {
    private final zzbn zzfo;

    private zzbp(zzbn zzbnVar) {
        this.zzfo = (zzbn) zzci.zza(zzbnVar, "output");
        this.zzfo.zzfz = this;
    }

    public static zzbp zza(zzbn zzbnVar) {
        return zzbnVar.zzfz != null ? zzbnVar.zzfz : new zzbp(zzbnVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, double d) {
        this.zzfo.zza(i, d);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, float f) {
        this.zzfo.zza(i, f);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, long j) {
        this.zzfo.zza(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, zzbb zzbbVar) {
        this.zzfo.zza(i, zzbbVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final <K, V> void zza(int i, zzdh<K, V> zzdhVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzfo.zzb(i, 2);
            this.zzfo.zzo(zzdg.zza(zzdhVar, entry.getKey(), entry.getValue()));
            zzdg.zza(this.zzfo, zzdhVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, Object obj) {
        if (obj instanceof zzbb) {
            this.zzfo.zzb(i, (zzbb) obj);
        } else {
            this.zzfo.zzb(i, (zzdo) obj);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, Object obj, zzef zzefVar) {
        this.zzfo.zza(i, (zzdo) obj, zzefVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, String str) {
        this.zzfo.zza(i, str);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List<String> list) {
        if (!(list instanceof zzcx)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zza(i, list.get(i2));
            }
            return;
        }
        zzcx zzcxVar = (zzcx) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object raw = zzcxVar.getRaw(i3);
            if (raw instanceof String) {
                this.zzfo.zza(i, (String) raw);
            } else {
                this.zzfo.zza(i, (zzbb) raw);
            }
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List<?> list, zzef zzefVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzc(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzs(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzn(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzaa(int i) {
        this.zzfo.zzb(i, 3);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzab(int i) {
        this.zzfo.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final int zzaj() {
        return zzcg.zzg.zzko;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, long j) {
        this.zzfo.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, Object obj, zzef zzefVar) {
        zzbn zzbnVar = this.zzfo;
        zzbnVar.zzb(i, 3);
        zzefVar.zza((zzdo) obj, zzbnVar.zzfz);
        zzbnVar.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List<zzbb> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzfo.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List<?> list, zzef zzefVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzv(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzq(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, boolean z) {
        this.zzfo.zzb(i, z);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, int i2) {
        this.zzfo.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, long j) {
        this.zzfo.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zze(list.get(i4).longValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzb(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzd(int i, int i2) {
        this.zzfo.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzd(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzf(list.get(i4).longValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzb(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zze(int i, int i2) {
        this.zzfo.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zze(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzh(list.get(i4).longValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzd(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzf(int i, int i2) {
        this.zzfo.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzf(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzb(list.get(i4).floatValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zza(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzg(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zza(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzb(list.get(i4).doubleValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zza(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzh(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzc(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzx(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzn(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzi(int i, long j) {
        this.zzfo.zza(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzi(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzb(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzb(list.get(i4).booleanValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zza(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzj(int i, long j) {
        this.zzfo.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzj(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzt(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzo(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzk(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzw(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzq(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzl(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzi(list.get(i4).longValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzd(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzm(int i, int i2) {
        this.zzfo.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzm(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzu(list.get(i4).intValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzp(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzn(int i, int i2) {
        this.zzfo.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzn(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzfo.zzb(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbn.zzg(list.get(i4).longValue());
        }
        this.zzfo.zzo(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzfo.zzc(list.get(i5).longValue());
        }
    }
}
