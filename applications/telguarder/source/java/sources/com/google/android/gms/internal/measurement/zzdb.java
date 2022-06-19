package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdb.class */
public final class zzdb extends zzhs<zzdb, zzda> implements zziy {
    private static final zzdb zzj;
    private int zza;
    private zzhz<zzdf> zze = zzbE();
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;

    static {
        zzdb zzdbVar = new zzdb();
        zzj = zzdbVar;
        zzhs.zzby(zzdb.class, zzdbVar);
    }

    private zzdb() {
    }

    public static zzda zzk() {
        return zzj.zzbt();
    }

    public static /* synthetic */ void zzn(zzdb zzdbVar, int i, zzdf zzdfVar) {
        zzdfVar.getClass();
        zzdbVar.zzv();
        zzdbVar.zze.set(i, zzdfVar);
    }

    public static /* synthetic */ void zzo(zzdb zzdbVar, zzdf zzdfVar) {
        zzdfVar.getClass();
        zzdbVar.zzv();
        zzdbVar.zze.add(zzdfVar);
    }

    public static /* synthetic */ void zzp(zzdb zzdbVar, Iterable iterable) {
        zzdbVar.zzv();
        zzgb.zzbs(iterable, zzdbVar.zze);
    }

    public static /* synthetic */ void zzr(zzdb zzdbVar, int i) {
        zzdbVar.zzv();
        zzdbVar.zze.remove(i);
    }

    public static /* synthetic */ void zzs(zzdb zzdbVar, String str) {
        str.getClass();
        zzdbVar.zza |= 1;
        zzdbVar.zzf = str;
    }

    public static /* synthetic */ void zzt(zzdb zzdbVar, long j) {
        zzdbVar.zza |= 2;
        zzdbVar.zzg = j;
    }

    public static /* synthetic */ void zzu(zzdb zzdbVar, long j) {
        zzdbVar.zza |= 4;
        zzdbVar.zzh = j;
    }

    private final void zzv() {
        zzhz<zzdf> zzhzVar = this.zze;
        if (!zzhzVar.zza()) {
            this.zze = zzhs.zzbF(zzhzVar);
        }
    }

    public final List<zzdf> zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zze.size();
    }

    public final zzdf zzc(int i) {
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

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", zzdf.class, "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzdb();
            }
            if (i2 == 4) {
                return new zzda(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
