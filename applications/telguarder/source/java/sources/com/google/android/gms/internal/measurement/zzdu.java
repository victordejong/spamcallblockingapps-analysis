package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdu.class */
public final class zzdu extends zzhs<zzdu, zzdt> implements zziy {
    private static final zzdu zzk;
    private int zza;
    private long zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        zzdu zzduVar = new zzdu();
        zzk = zzduVar;
        zzhs.zzby(zzdu.class, zzduVar);
    }

    private zzdu() {
    }

    public static zzdt zzj() {
        return zzk.zzbt();
    }

    public static /* synthetic */ void zzm(zzdu zzduVar, long j) {
        zzduVar.zza |= 1;
        zzduVar.zze = j;
    }

    public static /* synthetic */ void zzn(zzdu zzduVar, String str) {
        str.getClass();
        zzduVar.zza |= 2;
        zzduVar.zzf = str;
    }

    public static /* synthetic */ void zzo(zzdu zzduVar, String str) {
        str.getClass();
        zzduVar.zza |= 4;
        zzduVar.zzg = str;
    }

    public static /* synthetic */ void zzp(zzdu zzduVar) {
        zzduVar.zza &= -5;
        zzduVar.zzg = zzk.zzg;
    }

    public static /* synthetic */ void zzq(zzdu zzduVar, long j) {
        zzduVar.zza |= 8;
        zzduVar.zzh = j;
    }

    public static /* synthetic */ void zzr(zzdu zzduVar) {
        zzduVar.zza &= -9;
        zzduVar.zzh = 0L;
    }

    public static /* synthetic */ void zzs(zzdu zzduVar, double d) {
        zzduVar.zza |= 32;
        zzduVar.zzj = d;
    }

    public static /* synthetic */ void zzt(zzdu zzduVar) {
        zzduVar.zza &= -33;
        zzduVar.zzj = 0.0d;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final long zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final boolean zzd() {
        return (this.zza & 4) != 0;
    }

    public final String zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return (this.zza & 8) != 0;
    }

    public final long zzg() {
        return this.zzh;
    }

    public final boolean zzh() {
        return (this.zza & 32) != 0;
    }

    public final double zzi() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzdu();
            }
            if (i2 == 4) {
                return new zzdt(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
