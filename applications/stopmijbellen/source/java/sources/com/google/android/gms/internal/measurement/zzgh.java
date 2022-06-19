package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgh.class */
public final class zzgh extends zzkd<zzgh, zzgg> implements zzlj {
    private static final zzgh zzk;
    private int zza;
    private long zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        zzgh zzghVar = new zzgh();
        zzk = zzghVar;
        zzkd.zzby(zzgh.class, zzghVar);
    }

    private zzgh() {
    }

    public static zzgg zzj() {
        return zzk.zzbt();
    }

    public static /* synthetic */ void zzm(zzgh zzghVar, long j) {
        zzghVar.zza |= 1;
        zzghVar.zze = j;
    }

    public static /* synthetic */ void zzn(zzgh zzghVar, String str) {
        Objects.requireNonNull(str);
        zzghVar.zza |= 2;
        zzghVar.zzf = str;
    }

    public static /* synthetic */ void zzo(zzgh zzghVar, String str) {
        Objects.requireNonNull(str);
        zzghVar.zza |= 4;
        zzghVar.zzg = str;
    }

    public static /* synthetic */ void zzp(zzgh zzghVar) {
        zzghVar.zza &= -5;
        zzghVar.zzg = zzk.zzg;
    }

    public static /* synthetic */ void zzq(zzgh zzghVar, long j) {
        zzghVar.zza |= 8;
        zzghVar.zzh = j;
    }

    public static /* synthetic */ void zzr(zzgh zzghVar) {
        zzghVar.zza &= -9;
        zzghVar.zzh = 0L;
    }

    public static /* synthetic */ void zzs(zzgh zzghVar, double d) {
        zzghVar.zza |= 32;
        zzghVar.zzj = d;
    }

    public static /* synthetic */ void zzt(zzgh zzghVar) {
        zzghVar.zza &= -33;
        zzghVar.zzj = 0.0d;
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

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzgh();
            }
            if (i2 == 4) {
                return new zzgg(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            return null;
        }
        return (byte) 1;
    }
}
