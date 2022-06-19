package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgd.class */
public final class zzgd extends zzkd<zzgd, zzgc> implements zzlj {
    private static final zzgd zzh;
    private zzkj zza = zzkd.zzbC();
    private zzkj zze = zzkd.zzbC();
    private zzkk<zzfm> zzf = zzkd.zzbE();
    private zzkk<zzgf> zzg = zzkd.zzbE();

    static {
        zzgd zzgdVar = new zzgd();
        zzh = zzgdVar;
        zzkd.zzby(zzgd.class, zzgdVar);
    }

    private zzgd() {
    }

    public static zzgc zzk() {
        return zzh.zzbt();
    }

    public static zzgd zzm() {
        return zzh;
    }

    public static /* synthetic */ void zzo(zzgd zzgdVar, Iterable iterable) {
        zzkj zzkjVar = zzgdVar.zza;
        if (!zzkjVar.zza()) {
            zzgdVar.zza = zzkd.zzbD(zzkjVar);
        }
        zzio.zzbs(iterable, zzgdVar.zza);
    }

    public static /* synthetic */ void zzq(zzgd zzgdVar, Iterable iterable) {
        zzkj zzkjVar = zzgdVar.zze;
        if (!zzkjVar.zza()) {
            zzgdVar.zze = zzkd.zzbD(zzkjVar);
        }
        zzio.zzbs(iterable, zzgdVar.zze);
    }

    public static /* synthetic */ void zzs(zzgd zzgdVar, Iterable iterable) {
        zzgdVar.zzw();
        zzio.zzbs(iterable, zzgdVar.zzf);
    }

    public static /* synthetic */ void zzt(zzgd zzgdVar, int i) {
        zzgdVar.zzw();
        zzgdVar.zzf.remove(i);
    }

    public static /* synthetic */ void zzu(zzgd zzgdVar, Iterable iterable) {
        zzgdVar.zzx();
        zzio.zzbs(iterable, zzgdVar.zzg);
    }

    public static /* synthetic */ void zzv(zzgd zzgdVar, int i) {
        zzgdVar.zzx();
        zzgdVar.zzg.remove(i);
    }

    private final void zzw() {
        zzkk<zzfm> zzkkVar = this.zzf;
        if (!zzkkVar.zza()) {
            this.zzf = zzkd.zzbF(zzkkVar);
        }
    }

    private final void zzx() {
        zzkk<zzgf> zzkkVar = this.zzg;
        if (!zzkkVar.zza()) {
            this.zzg = zzkd.zzbF(zzkkVar);
        }
    }

    public final List<Long> zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zza.size();
    }

    public final List<Long> zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zze.size();
    }

    public final List<zzfm> zze() {
        return this.zzf;
    }

    public final int zzf() {
        return this.zzf.size();
    }

    public final zzfm zzg(int i) {
        return this.zzf.get(i);
    }

    public final List<zzgf> zzh() {
        return this.zzg;
    }

    public final int zzi() {
        return this.zzg.size();
    }

    public final zzgf zzj(int i) {
        return this.zzg.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzh, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zza", "zze", "zzf", zzfm.class, "zzg", zzgf.class});
            }
            if (i2 == 3) {
                return new zzgd();
            }
            if (i2 == 4) {
                return new zzgc(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
