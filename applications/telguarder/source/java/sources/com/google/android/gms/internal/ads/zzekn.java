package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekn.class */
final class zzekn implements zzeoy {
    private final zzekl zzime;

    private zzekn(zzekl zzeklVar) {
        zzekl zzeklVar2 = (zzekl) zzeld.zza(zzeklVar, "output");
        this.zzime = zzeklVar2;
        zzeklVar2.zzind = this;
    }

    public static zzekn zza(zzekl zzeklVar) {
        return zzeklVar.zzind != null ? zzeklVar.zzind : new zzekn(zzeklVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, float f) throws IOException {
        this.zzime.zza(i, f);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, zzejr zzejrVar) throws IOException {
        this.zzime.zza(i, zzejrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final <K, V> void zza(int i, zzemf<K, V> zzemfVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzime.writeTag(i, 2);
            this.zzime.zzgs(zzemg.zza(zzemfVar, entry.getKey(), entry.getValue()));
            zzemg.zza(this.zzime, zzemfVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, Object obj, zzenj zzenjVar) throws IOException {
        this.zzime.zza(i, (zzemo) obj, zzenjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<String> list) throws IOException {
        if (!(list instanceof zzelv)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzi(i, list.get(i2));
            }
            return;
        }
        zzelv zzelvVar = (zzelv) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzhj = zzelvVar.zzhj(i3);
            if (zzhj instanceof String) {
                this.zzime.zzi(i, (String) zzhj);
            } else {
                this.zzime.zza(i, (zzejr) zzhj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<?> list, zzenj zzenjVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzenjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzac(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzgw(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgr(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzac(int i, int i2) throws IOException {
        this.zzime.zzac(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzad(int i, int i2) throws IOException {
        this.zzime.zzad(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzae(int i, int i2) throws IOException {
        this.zzime.zzae(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzaf(int i, int i2) throws IOException {
        this.zzime.zzaf(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzam(int i, int i2) throws IOException {
        this.zzime.zzaf(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzan(int i, int i2) throws IOException {
        this.zzime.zzac(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, double d) throws IOException {
        this.zzime.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, Object obj, zzenj zzenjVar) throws IOException {
        zzekl zzeklVar = this.zzime;
        zzeklVar.writeTag(i, 3);
        zzenjVar.zza((zzemo) obj, zzeklVar.zzind);
        zzeklVar.writeTag(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<zzejr> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzime.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<?> list, zzenj zzenjVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzenjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzaf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzgz(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgu(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final int zzbhv() {
        return zzeox.zzixh;
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzc(int i, Object obj) throws IOException {
        if (obj instanceof zzejr) {
            this.zzime.zzb(i, (zzejr) obj);
        } else {
            this.zzime.zza(i, (zzemo) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzc(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzi(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzfk(list.get(i4).longValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzfh(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzd(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzi(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzfl(list.get(i4).longValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzfh(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zze(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzk(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzfn(list.get(i4).longValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzfj(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzf(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzg(list.get(i4).floatValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzf(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzb(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzd(list.get(i4).doubleValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzc(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzh(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzac(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzhb(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgr(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzh(int i, boolean z) throws IOException {
        this.zzime.zzh(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzhe(int i) throws IOException {
        this.zzime.writeTag(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzhf(int i) throws IOException {
        this.zzime.writeTag(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, long j) throws IOException {
        this.zzime.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, String str) throws IOException {
        this.zzime.zzi(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzh(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzbs(list.get(i4).booleanValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzbr(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzj(int i, long j) throws IOException {
        this.zzime.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzad(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzgx(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgs(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzk(int i, long j) throws IOException {
        this.zzime.zzk(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzk(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzaf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzha(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgu(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzl(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzk(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzfo(list.get(i4).longValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzfj(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzm(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzae(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzgy(list.get(i4).intValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzgt(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzime.zzj(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzime.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzekl.zzfm(list.get(i4).longValue());
        }
        this.zzime.zzgs(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzime.zzfi(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzq(int i, long j) throws IOException {
        this.zzime.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzr(int i, long j) throws IOException {
        this.zzime.zzk(i, j);
    }
}
