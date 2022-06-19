package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajo.class */
public final class zzajo extends zzgkl<zzajo, zzajn> implements zzglw {
    private static final zzajo zzb;
    private int zze;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private long zzl = -1;

    static {
        zzajo zzajoVar = new zzajo();
        zzb = zzajoVar;
        zzgkl.zzaK(zzajo.class, zzajoVar);
    }

    private zzajo() {
    }

    public static zzajn zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzajo zzajoVar, long j) {
        zzajoVar.zze |= 4;
        zzajoVar.zzh = j;
    }

    public static /* synthetic */ void zze(zzajo zzajoVar, long j) {
        zzajoVar.zze |= 8;
        zzajoVar.zzi = j;
    }

    public static /* synthetic */ void zzf(zzajo zzajoVar, long j) {
        zzajoVar.zze |= 16;
        zzajoVar.zzj = j;
    }

    public static /* synthetic */ void zzg(zzajo zzajoVar, long j) {
        zzajoVar.zze |= 32;
        zzajoVar.zzk = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
            }
            if (i2 == 3) {
                return new zzajo();
            }
            if (i2 == 4) {
                return new zzajn(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
