package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfo.class */
public final class zzfo extends zzkd<zzfo, zzfn> implements zzlj {
    private static final zzfo zzj;
    private int zza;
    private zzkk<zzfs> zze = zzkd.zzbE();
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;

    static {
        zzfo zzfoVar = new zzfo();
        zzj = zzfoVar;
        zzkd.zzby(zzfo.class, zzfoVar);
    }

    private zzfo() {
    }

    public static zzfn zzk() {
        return zzj.zzbt();
    }

    public static /* synthetic */ void zzn(zzfo zzfoVar, int i, zzfs zzfsVar) {
        Objects.requireNonNull(zzfsVar);
        zzfoVar.zzv();
        zzfoVar.zze.set(i, zzfsVar);
    }

    public static /* synthetic */ void zzo(zzfo zzfoVar, zzfs zzfsVar) {
        Objects.requireNonNull(zzfsVar);
        zzfoVar.zzv();
        zzfoVar.zze.add(zzfsVar);
    }

    public static /* synthetic */ void zzp(zzfo zzfoVar, Iterable iterable) {
        zzfoVar.zzv();
        zzio.zzbs(iterable, zzfoVar.zze);
    }

    public static /* synthetic */ void zzr(zzfo zzfoVar, int i) {
        zzfoVar.zzv();
        zzfoVar.zze.remove(i);
    }

    public static /* synthetic */ void zzs(zzfo zzfoVar, String str) {
        Objects.requireNonNull(str);
        zzfoVar.zza |= 1;
        zzfoVar.zzf = str;
    }

    public static /* synthetic */ void zzt(zzfo zzfoVar, long j) {
        zzfoVar.zza |= 2;
        zzfoVar.zzg = j;
    }

    public static /* synthetic */ void zzu(zzfo zzfoVar, long j) {
        zzfoVar.zza |= 4;
        zzfoVar.zzh = j;
    }

    private final void zzv() {
        zzkk<zzfs> zzkkVar = this.zze;
        if (!zzkkVar.zza()) {
            this.zze = zzkd.zzbF(zzkkVar);
        }
    }

    public final List<zzfs> zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zze.size();
    }

    public final zzfs zzc(int i) {
        return this.zze.get(i);
    }

    public final String zzd() {
        return this.zzf;
    }

    public final boolean zze() {
        return (this.zza & 2) != 0;
    }

    public final long zzf() {
        return this.zzg;
    }

    public final boolean zzg() {
        return (this.zza & 4) != 0;
    }

    public final long zzh() {
        return this.zzh;
    }

    public final boolean zzi() {
        return (this.zza & 8) != 0;
    }

    public final int zzj() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", zzfs.class, "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzfo();
            }
            if (i2 == 4) {
                return new zzfn(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
