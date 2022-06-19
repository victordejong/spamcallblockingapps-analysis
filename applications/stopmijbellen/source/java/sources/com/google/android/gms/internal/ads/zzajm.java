package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends zzgkl<zzajm, zzajl> implements zzglw {
    private static final zzajm zzb;
    private int zze;
    private long zzu;
    private long zzv;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private int zzl = 1000;
    private long zzm = -1;
    private long zzn = -1;
    private long zzo = -1;
    private int zzp = 1000;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzt = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;
    private long zzz = -1;

    static {
        zzajm zzajmVar = new zzajm();
        zzb = zzajmVar;
        zzgkl.zzaK(zzajm.class, zzajmVar);
    }

    private zzajm() {
    }

    public static zzajl zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 1;
        zzajmVar.zzf = j;
    }

    public static /* synthetic */ void zze(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 2;
        zzajmVar.zzg = j;
    }

    public static /* synthetic */ void zzf(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 4;
        zzajmVar.zzh = j;
    }

    public static /* synthetic */ void zzg(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 8;
        zzajmVar.zzi = j;
    }

    public static /* synthetic */ void zzh(zzajm zzajmVar) {
        zzajmVar.zze &= -9;
        zzajmVar.zzi = -1L;
    }

    public static /* synthetic */ void zzi(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 16;
        zzajmVar.zzj = j;
    }

    public static /* synthetic */ void zzj(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 32;
        zzajmVar.zzk = j;
    }

    public static /* synthetic */ void zzk(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 128;
        zzajmVar.zzm = j;
    }

    public static /* synthetic */ void zzl(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 256;
        zzajmVar.zzn = j;
    }

    public static /* synthetic */ void zzm(zzajm zzajmVar, long j) {
        zzajmVar.zze |= AdRequest.MAX_CONTENT_URL_LENGTH;
        zzajmVar.zzo = j;
    }

    public static /* synthetic */ void zzn(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 2048;
        zzajmVar.zzq = j;
    }

    public static /* synthetic */ void zzo(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 4096;
        zzajmVar.zzr = j;
    }

    public static /* synthetic */ void zzp(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 8192;
        zzajmVar.zzs = j;
    }

    public static /* synthetic */ void zzq(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 16384;
        zzajmVar.zzt = j;
    }

    public static /* synthetic */ void zzr(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 32768;
        zzajmVar.zzu = j;
    }

    public static /* synthetic */ void zzs(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 65536;
        zzajmVar.zzv = j;
    }

    public static /* synthetic */ void zzt(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 131072;
        zzajmVar.zzw = j;
    }

    public static /* synthetic */ void zzu(zzajm zzajmVar, long j) {
        zzajmVar.zze |= 262144;
        zzajmVar.zzx = j;
    }

    public static /* synthetic */ void zzv(zzajm zzajmVar, int i) {
        zzajmVar.zzl = i - 1;
        zzajmVar.zze |= 64;
    }

    public static /* synthetic */ void zzw(zzajm zzajmVar, int i) {
        zzajmVar.zzp = i - 1;
        zzajmVar.zze |= 1024;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgkp zzgkpVar = zzajv.zza;
                return zzgkl.zzaJ(zzb, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzgkpVar, "zzm", "zzn", "zzo", "zzp", zzgkpVar, "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz"});
            } else if (i2 == 3) {
                return new zzajm();
            } else {
                if (i2 == 4) {
                    return new zzajl(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
