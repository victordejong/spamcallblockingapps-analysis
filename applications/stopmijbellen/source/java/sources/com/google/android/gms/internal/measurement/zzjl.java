package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjl.class */
final class zzjl {
    private final zzjk zza;

    private zzjl(zzjk zzjkVar) {
        zzkl.zzb(zzjkVar, "output");
        this.zza = zzjkVar;
        zzjkVar.zza = this;
    }

    public static zzjl zza(zzjk zzjkVar) {
        zzjl zzjlVar = zzjkVar.zza;
        return zzjlVar != null ? zzjlVar : new zzjl(zzjkVar);
    }

    public final void zzA(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzm(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    public final void zzB(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzo(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    public final void zzC(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzjk.zzv(list.get(i4).intValue());
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(list.get(i5).intValue());
        }
    }

    public final void zzD(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzg(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzj(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public final void zzE(int i, List<String> list) throws IOException {
        if (!(list instanceof zzks)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, list.get(i2));
            }
            return;
        }
        zzks zzksVar = (zzks) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzg = zzksVar.zzg(i3);
            if (zzg instanceof String) {
                this.zza.zzh(i, (String) zzg);
            } else {
                this.zza.zzi(i, (zzjd) zzg);
            }
        }
    }

    public final void zzF(int i, List<zzjd> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzi(i, list.get(i2));
        }
    }

    public final void zzG(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzc(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzjk.zzw(list.get(i4).intValue());
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzl(list.get(i5).intValue());
        }
    }

    public final void zzH(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzm(list.get(i5).intValue());
        }
    }

    public final void zzI(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzo(list.get(i5).longValue());
        }
    }

    public final void zzJ(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzjk zzjkVar = this.zza;
                int intValue = list.get(i2).intValue();
                zzjkVar.zzc(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += zzjk.zzw((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzjk zzjkVar2 = this.zza;
            int intValue3 = list.get(i5).intValue();
            zzjkVar2.zzl((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    public final void zzK(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzjk zzjkVar = this.zza;
                long longValue = list.get(i2).longValue();
                zzjkVar.zze(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += zzjk.zzx((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzjk zzjkVar2 = this.zza;
            long longValue3 = list.get(i5).longValue();
            zzjkVar2.zzn((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    public final void zzb(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    public final void zzc(int i, long j) throws IOException {
        this.zza.zze(i, j);
    }

    public final void zzd(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    public final void zze(int i, float f) throws IOException {
        this.zza.zzd(i, Float.floatToRawIntBits(f));
    }

    public final void zzf(int i, double d) throws IOException {
        this.zza.zzf(i, Double.doubleToRawLongBits(d));
    }

    public final void zzg(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    public final void zzh(int i, long j) throws IOException {
        this.zza.zze(i, j);
    }

    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzb(i, i2);
    }

    public final void zzj(int i, long j) throws IOException {
        this.zza.zzf(i, j);
    }

    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzd(i, i2);
    }

    public final void zzl(int i, boolean z) throws IOException {
        this.zza.zzg(i, z);
    }

    public final void zzm(int i, String str) throws IOException {
        this.zza.zzh(i, str);
    }

    public final void zzn(int i, zzjd zzjdVar) throws IOException {
        this.zza.zzi(i, zzjdVar);
    }

    public final void zzo(int i, int i2) throws IOException {
        this.zza.zzc(i, i2);
    }

    public final void zzp(int i, int i2) throws IOException {
        this.zza.zzc(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void zzq(int i, long j) throws IOException {
        this.zza.zze(i, (j >> 63) ^ (j + j));
    }

    public final void zzr(int i, Object obj, zzlt zzltVar) throws IOException {
        zzli zzliVar = (zzli) obj;
        zzji zzjiVar = (zzji) this.zza;
        zzjiVar.zzl((i << 3) | 2);
        zzio zzioVar = (zzio) zzliVar;
        int zzbq = zzioVar.zzbq();
        int i2 = zzbq;
        if (zzbq == -1) {
            i2 = zzltVar.zze(zzioVar);
            zzioVar.zzbr(i2);
        }
        zzjiVar.zzl(i2);
        zzltVar.zzm(zzliVar, zzjiVar.zza);
    }

    public final void zzs(int i, Object obj, zzlt zzltVar) throws IOException {
        zzjk zzjkVar = this.zza;
        zzjkVar.zza(i, 3);
        zzltVar.zzm((zzli) obj, zzjkVar.zza);
        zzjkVar.zza(i, 4);
    }

    public final void zzt(int i) throws IOException {
        this.zza.zza(i, 3);
    }

    public final void zzu(int i) throws IOException {
        this.zza.zza(i, 4);
    }

    public final void zzv(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzb(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzjk.zzv(list.get(i4).intValue());
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(list.get(i5).intValue());
        }
    }

    public final void zzw(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzm(list.get(i5).intValue());
        }
    }

    public final void zzx(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzjk.zzx(list.get(i4).longValue());
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzn(list.get(i5).longValue());
        }
    }

    public final void zzy(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zze(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzjk.zzx(list.get(i4).longValue());
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzn(list.get(i5).longValue());
        }
    }

    public final void zzz(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.zza.zzl(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzo(list.get(i5).longValue());
        }
    }
}
