package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbw.class */
final class zzbw implements zzfr {
    private final zzbu zzdw;

    private zzbw(zzbu zzbuVar) {
        this.zzdw = (zzbu) zzcm.zza(zzbuVar, "output");
        this.zzdw.zzeh = this;
    }

    public static zzbw zza(zzbu zzbuVar) {
        return zzbuVar.zzeh != null ? zzbuVar.zzeh : new zzbw(zzbuVar);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, double d) throws IOException {
        this.zzdw.zza(i, d);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, float f) throws IOException {
        this.zzdw.zza(i, f);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, long j) throws IOException {
        this.zzdw.zza(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, zzbi zzbiVar) throws IOException {
        this.zzdw.zza(i, zzbiVar);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final <K, V> void zza(int i, zzdk<K, V> zzdkVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzdw.zzb(i, 2);
            this.zzdw.zzm(zzcd.zza(zzdkVar.zzjr, 1, entry.getKey()) + zzcd.zza(zzdkVar.zzjs, 2, entry.getValue()));
            zzbu zzbuVar = this.zzdw;
            K key = entry.getKey();
            V value = entry.getValue();
            zzcd.zza(zzbuVar, zzdkVar.zzjr, 1, key);
            zzcd.zza(zzbuVar, zzdkVar.zzjs, 2, value);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, Object obj) throws IOException {
        if (obj instanceof zzbi) {
            this.zzdw.zzb(i, (zzbi) obj);
        } else {
            this.zzdw.zza(i, (zzdr) obj);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, Object obj, zzef zzefVar) throws IOException {
        this.zzdw.zza(i, (zzdr) obj, zzefVar);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, String str) throws IOException {
        this.zzdw.zza(i, str);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, List<String> list) throws IOException {
        if (list instanceof zzdb) {
            zzdb zzdbVar = (zzdb) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object raw = zzdbVar.getRaw(i2);
                if (raw instanceof String) {
                    this.zzdw.zza(i, (String) raw);
                } else {
                    this.zzdw.zza(i, (zzbi) raw);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.zzdw.zza(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, List<?> list, zzef zzefVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzq(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzl(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzc(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zza(int i, boolean z) throws IOException {
        this.zzdw.zza(i, z);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final int zzad() {
        return zzck.zzd.zzie;
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzb(int i, long j) throws IOException {
        this.zzdw.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzb(int i, Object obj, zzef zzefVar) throws IOException {
        zzbu zzbuVar = this.zzdw;
        zzbuVar.zzb(i, 3);
        zzefVar.zza((zzdr) obj, zzbuVar.zzeh);
        zzbuVar.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzb(int i, List<zzbi> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzdw.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzb(int i, List<?> list, zzef zzefVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzt(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzo(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzf(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzc(int i, int i2) throws IOException {
        this.zzdw.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzc(int i, long j) throws IOException {
        this.zzdw.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zze(list.get(i3).longValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzb(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zza(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzd(int i, int i2) throws IOException {
        this.zzdw.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzf(list.get(i3).longValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzb(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zza(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zze(int i, int i2) throws IOException {
        this.zzdw.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzh(list.get(i3).longValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzd(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzc(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzf(int i, int i2) throws IOException {
        this.zzdw.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzb(list.get(i3).floatValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zza(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zza(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzb(list.get(i3).doubleValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zza(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zza(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzv(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzl(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzc(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzi(int i, long j) throws IOException {
        this.zzdw.zza(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzf(list.get(i3).booleanValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zze(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zza(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzj(int i, long j) throws IOException {
        this.zzdw.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzr(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzm(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzd(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzu(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzo(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzf(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzi(list.get(i3).longValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzd(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzc(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzm(int i, int i2) throws IOException {
        this.zzdw.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzs(list.get(i3).intValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzn(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zze(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzn(int i, int i2) throws IOException {
        this.zzdw.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.zzdw.zzb(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbu.zzg(list.get(i3).longValue());
            }
            this.zzdw.zzm(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.zzdw.zzc(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzdw.zzb(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzy(int i) throws IOException {
        this.zzdw.zzb(i, 3);
    }

    @Override // com.google.android.gms.internal.icing.zzfr
    public final void zzz(int i) throws IOException {
        this.zzdw.zzb(i, 4);
    }
}
