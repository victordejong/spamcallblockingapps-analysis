package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjt.class */
public final class zzgjt {
    private final zzgjs zza;

    private zzgjt(zzgjs zzgjsVar) {
        zzgkv.zzf(zzgjsVar, "output");
        this.zza = zzgjsVar;
        zzgjsVar.zza = this;
    }

    public static zzgjt zza(zzgjs zzgjsVar) {
        zzgjt zzgjtVar = zzgjsVar.zza;
        return zzgjtVar != null ? zzgjtVar : new zzgjt(zzgjsVar);
    }

    public final void zzA(int i, int i2) throws IOException {
        this.zza.zzp(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void zzB(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzgjs zzgjsVar = this.zza;
                int intValue = list.get(i2).intValue();
                zzgjsVar.zzp(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += zzgjs.zzA((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzgjs zzgjsVar2 = this.zza;
            int intValue3 = list.get(i5).intValue();
            zzgjsVar2.zzq((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    public final void zzC(int i, long j) throws IOException {
        this.zza.zzr(i, (j >> 63) ^ (j + j));
    }

    public final void zzD(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzgjs zzgjsVar = this.zza;
                long longValue = list.get(i2).longValue();
                zzgjsVar.zzr(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += zzgjs.zzB((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzgjs zzgjsVar2 = this.zza;
            long longValue3 = list.get(i5).longValue();
            zzgjsVar2.zzs((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    public final void zzE(int i) throws IOException {
        this.zza.zzo(i, 3);
    }

    public final void zzF(int i, String str) throws IOException {
        this.zza.zzm(i, str);
    }

    public final void zzG(int i, List<String> list) throws IOException {
        if (!(list instanceof zzgld)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzm(i, list.get(i2));
            }
            return;
        }
        zzgld zzgldVar = (zzgld) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzf = zzgldVar.zzf(i3);
            if (zzf instanceof String) {
                this.zza.zzm(i, (String) zzf);
            } else {
                this.zza.zze(i, (zzgjf) zzf);
            }
        }
    }

    public final void zzH(int i, int i2) throws IOException {
        this.zza.zzp(i, i2);
    }

    public final void zzI(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzp(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgjs.zzA(list.get(i4).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzq(list.get(i5).intValue());
        }
    }

    public final void zzJ(int i, long j) throws IOException {
        this.zza.zzr(i, j);
    }

    public final void zzK(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzr(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgjs.zzB(list.get(i4).longValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzs(list.get(i5).longValue());
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzd(i, z);
    }

    public final void zzc(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public final void zzd(int i, zzgjf zzgjfVar) throws IOException {
        this.zza.zze(i, zzgjfVar);
    }

    public final void zze(int i, List<zzgjf> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zze(i, list.get(i2));
        }
    }

    public final void zzf(int i, double d) throws IOException {
        this.zza.zzh(i, Double.doubleToRawLongBits(d));
    }

    public final void zzg(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    public final void zzh(int i) throws IOException {
        this.zza.zzo(i, 4);
    }

    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    public final void zzj(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzj(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgjs.zzv(list.get(i4).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(list.get(i5).intValue());
        }
    }

    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    public final void zzl(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(list.get(i5).intValue());
        }
    }

    public final void zzm(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    public final void zzn(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(list.get(i5).longValue());
        }
    }

    public final void zzo(int i, float f) throws IOException {
        this.zza.zzf(i, Float.floatToRawIntBits(f));
    }

    public final void zzp(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    public final void zzq(int i, Object obj, zzgmo zzgmoVar) throws IOException {
        zzgjs zzgjsVar = this.zza;
        zzgjsVar.zzo(i, 3);
        zzgmoVar.zzn((zzglv) obj, zzgjsVar.zza);
        zzgjsVar.zzo(i, 4);
    }

    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    public final void zzs(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzj(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgjs.zzv(list.get(i4).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(list.get(i5).intValue());
        }
    }

    public final void zzt(int i, long j) throws IOException {
        this.zza.zzr(i, j);
    }

    public final void zzu(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzr(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgjs.zzB(list.get(i4).longValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzs(list.get(i5).longValue());
        }
    }

    public final void zzv(int i, Object obj, zzgmo zzgmoVar) throws IOException {
        zzglv zzglvVar = (zzglv) obj;
        zzgjp zzgjpVar = (zzgjp) this.zza;
        zzgjpVar.zzq((i << 3) | 2);
        zzgin zzginVar = (zzgin) zzglvVar;
        int zzan = zzginVar.zzan();
        int i2 = zzan;
        if (zzan == -1) {
            i2 = zzgmoVar.zza(zzginVar);
            zzginVar.zzaq(i2);
        }
        zzgjpVar.zzq(i2);
        zzgmoVar.zzn(zzglvVar, zzgjpVar.zza);
    }

    public final void zzw(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    public final void zzx(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(list.get(i5).intValue());
        }
    }

    public final void zzy(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    public final void zzz(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, list.get(i2).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(list.get(i5).longValue());
        }
    }
}
