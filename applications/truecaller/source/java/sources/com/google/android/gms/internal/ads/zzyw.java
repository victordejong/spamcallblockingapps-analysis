package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyw.class */
public final class zzyw extends zzgga<zzyw, zzyv> implements zzghj {
    private static final zzyw zzz;
    private int zzb;
    private long zzt;
    private long zzu;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private int zzk = 1000;
    private long zzl = -1;
    private long zzm = -1;
    private long zzn = -1;
    private int zzo = 1000;
    private long zzp = -1;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzv = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;

    static {
        zzyw zzywVar = new zzyw();
        zzz = zzywVar;
        zzgga.zzay(zzyw.class, zzywVar);
    }

    private zzyw() {
    }

    public static zzyv zza() {
        return zzz.zzas();
    }

    public static /* synthetic */ void zzd(zzyw zzywVar, long j) {
        zzywVar.zzb |= 1;
        zzywVar.zze = j;
    }

    public static /* synthetic */ void zze(zzyw zzywVar, long j) {
        zzywVar.zzb |= 2;
        zzywVar.zzf = j;
    }

    public static /* synthetic */ void zzf(zzyw zzywVar, long j) {
        zzywVar.zzb |= 4;
        zzywVar.zzg = j;
    }

    public static /* synthetic */ void zzg(zzyw zzywVar, long j) {
        zzywVar.zzb |= 8;
        zzywVar.zzh = j;
    }

    public static /* synthetic */ void zzh(zzyw zzywVar) {
        zzywVar.zzb &= -9;
        zzywVar.zzh = -1L;
    }

    public static /* synthetic */ void zzi(zzyw zzywVar, long j) {
        zzywVar.zzb |= 16;
        zzywVar.zzi = j;
    }

    public static /* synthetic */ void zzj(zzyw zzywVar, long j) {
        zzywVar.zzb |= 32;
        zzywVar.zzj = j;
    }

    public static /* synthetic */ void zzk(zzyw zzywVar, long j) {
        zzywVar.zzb |= 128;
        zzywVar.zzl = j;
    }

    public static /* synthetic */ void zzl(zzyw zzywVar, long j) {
        zzywVar.zzb |= 256;
        zzywVar.zzm = j;
    }

    public static /* synthetic */ void zzm(zzyw zzywVar, long j) {
        zzywVar.zzb |= 512;
        zzywVar.zzn = j;
    }

    public static /* synthetic */ void zzn(zzyw zzywVar, long j) {
        zzywVar.zzb |= 2048;
        zzywVar.zzp = j;
    }

    public static /* synthetic */ void zzo(zzyw zzywVar, long j) {
        zzywVar.zzb |= 4096;
        zzywVar.zzq = j;
    }

    public static /* synthetic */ void zzp(zzyw zzywVar, long j) {
        zzywVar.zzb |= 8192;
        zzywVar.zzr = j;
    }

    public static /* synthetic */ void zzq(zzyw zzywVar, long j) {
        zzywVar.zzb |= 16384;
        zzywVar.zzs = j;
    }

    public static /* synthetic */ void zzr(zzyw zzywVar, long j) {
        zzywVar.zzb |= 32768;
        zzywVar.zzt = j;
    }

    public static /* synthetic */ void zzs(zzyw zzywVar, long j) {
        zzywVar.zzb |= 65536;
        zzywVar.zzu = j;
    }

    public static /* synthetic */ void zzt(zzyw zzywVar, long j) {
        zzywVar.zzb |= 131072;
        zzywVar.zzv = j;
    }

    public static /* synthetic */ void zzu(zzyw zzywVar, long j) {
        zzywVar.zzb |= 262144;
        zzywVar.zzw = j;
    }

    public static /* synthetic */ void zzv(zzyw zzywVar, int i) {
        zzywVar.zzk = i - 1;
        zzywVar.zzb |= 64;
    }

    public static /* synthetic */ void zzw(zzyw zzywVar, int i) {
        zzywVar.zzo = i - 1;
        zzywVar.zzb |= 1024;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgge zzggeVar = zzzf.zza;
                return zzgga.zzaz(zzz, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzggeVar, "zzl", "zzm", "zzn", "zzo", zzggeVar, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
            } else if (i2 == 3) {
                return new zzyw();
            } else {
                if (i2 == 4) {
                    return new zzyv(null);
                }
                if (i2 == 5) {
                    return zzz;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
