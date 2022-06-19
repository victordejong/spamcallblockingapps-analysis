package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjf.class */
public final class zzjf {
    private final zzje zza;

    private zzjf(zzje zzjeVar) {
        zzkf.zzf(zzjeVar, "output");
        this.zza = zzjeVar;
        zzjeVar.zza = this;
    }

    public static zzjf zza(zzje zzjeVar) {
        zzjf zzjfVar = zzjeVar.zza;
        return zzjfVar != null ? zzjfVar : new zzjf(zzjeVar);
    }

    public final void zzA(int i, int i2) throws IOException {
        this.zza.zzp(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void zzB(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzje zzjeVar = this.zza;
                int intValue = ((Integer) list.get(i2)).intValue();
                zzjeVar.zzp(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += zzje.zzA((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzje zzjeVar2 = this.zza;
            int intValue3 = ((Integer) list.get(i5)).intValue();
            zzjeVar2.zzq((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    public final void zzC(int i, long j) throws IOException {
        this.zza.zzr(i, (j >> 63) ^ (j + j));
    }

    public final void zzD(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzje zzjeVar = this.zza;
                long longValue = ((Long) list.get(i2)).longValue();
                zzjeVar.zzr(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += zzje.zzB((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            zzje zzjeVar2 = this.zza;
            long longValue3 = ((Long) list.get(i5)).longValue();
            zzjeVar2.zzs((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    @Deprecated
    public final void zzE(int i) throws IOException {
        this.zza.zzo(i, 3);
    }

    public final void zzF(int i, String str) throws IOException {
        this.zza.zzm(i, str);
    }

    public final void zzG(int i, List list) throws IOException {
        if (!(list instanceof zzkm)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzm(i, (String) list.get(i2));
            }
            return;
        }
        zzkm zzkmVar = (zzkm) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzf = zzkmVar.zzf(i3);
            if (zzf instanceof String) {
                this.zza.zzm(i, (String) zzf);
            } else {
                this.zza.zze(i, (zzix) zzf);
            }
        }
    }

    public final void zzH(int i, int i2) throws IOException {
        this.zza.zzp(i, i2);
    }

    public final void zzI(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzp(i, ((Integer) list.get(i2)).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzje.zzA(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzq(((Integer) list.get(i5)).intValue());
        }
    }

    public final void zzJ(int i, long j) throws IOException {
        this.zza.zzr(i, j);
    }

    public final void zzK(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzr(i, ((Long) list.get(i2)).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzje.zzB(((Long) list.get(i4)).longValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzs(((Long) list.get(i5)).longValue());
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzd(i, z);
    }

    public final void zzc(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzd(i, ((Boolean) list.get(i2)).booleanValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzb(((Boolean) list.get(i5)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public final void zzd(int i, zzix zzixVar) throws IOException {
        this.zza.zze(i, zzixVar);
    }

    public final void zze(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zze(i, (zzix) list.get(i2));
        }
    }

    public final void zzf(int i, double d) throws IOException {
        this.zza.zzh(i, Double.doubleToRawLongBits(d));
    }

    public final void zzg(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(Double.doubleToRawLongBits(((Double) list.get(i5)).doubleValue()));
        }
    }

    @Deprecated
    public final void zzh(int i) throws IOException {
        this.zza.zzo(i, 4);
    }

    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    public final void zzj(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzje.zzv(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(((Integer) list.get(i5)).intValue());
        }
    }

    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    public final void zzl(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(((Integer) list.get(i5)).intValue());
        }
    }

    public final void zzm(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    public final void zzn(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(((Long) list.get(i5)).longValue());
        }
    }

    public final void zzo(int i, float f) throws IOException {
        this.zza.zzf(i, Float.floatToRawIntBits(f));
    }

    public final void zzp(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(Float.floatToRawIntBits(((Float) list.get(i5)).floatValue()));
        }
    }

    public final void zzq(int i, Object obj, zzln zzlnVar) throws IOException {
        zzje zzjeVar = this.zza;
        zzjeVar.zzo(i, 3);
        zzlnVar.zzm((zzlc) obj, zzjeVar.zza);
        zzjeVar.zzo(i, 4);
    }

    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    public final void zzs(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzje.zzv(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzk(((Integer) list.get(i5)).intValue());
        }
    }

    public final void zzt(int i, long j) throws IOException {
        this.zza.zzr(i, j);
    }

    public final void zzu(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzr(i, ((Long) list.get(i2)).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzje.zzB(((Long) list.get(i4)).longValue());
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzs(((Long) list.get(i5)).longValue());
        }
    }

    public final void zzv(int i, Object obj, zzln zzlnVar) throws IOException {
        Object obj2 = (zzlc) obj;
        zzjc zzjcVar = (zzjc) this.zza;
        zzjcVar.zzq((i << 3) | 2);
        zzih zzihVar = (zzih) obj2;
        int zzbm = zzihVar.zzbm();
        int i2 = zzbm;
        if (zzbm == -1) {
            i2 = zzlnVar.zza(zzihVar);
            zzihVar.zzbp(i2);
        }
        zzjcVar.zzq(i2);
        zzlnVar.zzm(obj2, zzjcVar.zza);
    }

    public final void zzw(int i, int i2) throws IOException {
        this.zza.zzf(i, i2);
    }

    public final void zzx(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzf(i, ((Integer) list.get(i2)).intValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzg(((Integer) list.get(i5)).intValue());
        }
    }

    public final void zzy(int i, long j) throws IOException {
        this.zza.zzh(i, j);
    }

    public final void zzz(int i, List list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zza.zzh(i, ((Long) list.get(i2)).longValue());
            }
            return;
        }
        this.zza.zzo(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzq(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zza.zzi(((Long) list.get(i5)).longValue());
        }
    }
}
