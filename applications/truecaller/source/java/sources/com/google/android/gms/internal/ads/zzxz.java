package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxz.class */
public final class zzxz extends zzgga<zzxz, zzxv> implements zzghj {
    private static final zzxz zzr;
    private int zzb;
    private long zzf;
    private long zzj;
    private long zzk;
    private long zzm;
    private int zzq;
    private String zze = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzl = "";
    private String zzn = "";
    private String zzo = "";
    private zzggj<zzxx> zzp = zzgga.zzaE();

    static {
        zzxz zzxzVar = new zzxz();
        zzr = zzxzVar;
        zzgga.zzay(zzxz.class, zzxzVar);
    }

    private zzxz() {
    }

    public static zzxv zza() {
        return zzr.zzas();
    }

    public static /* synthetic */ void zzd(zzxz zzxzVar, String str) {
        str.getClass();
        zzxzVar.zzb |= 1;
        zzxzVar.zze = str;
    }

    public static /* synthetic */ void zze(zzxz zzxzVar, long j) {
        zzxzVar.zzb |= 2;
        zzxzVar.zzf = j;
    }

    public static /* synthetic */ void zzf(zzxz zzxzVar, String str) {
        str.getClass();
        zzxzVar.zzb |= 4;
        zzxzVar.zzg = str;
    }

    public static /* synthetic */ void zzg(zzxz zzxzVar, String str) {
        str.getClass();
        zzxzVar.zzb |= 8;
        zzxzVar.zzh = str;
    }

    public static /* synthetic */ void zzh(zzxz zzxzVar, String str) {
        zzxzVar.zzb |= 16;
        zzxzVar.zzi = str;
    }

    public static /* synthetic */ void zzi(zzxz zzxzVar, String str) {
        zzxzVar.zzb |= 1024;
        zzxzVar.zzo = str;
    }

    public static /* synthetic */ void zzj(zzxz zzxzVar, int i) {
        zzxzVar.zzq = i - 1;
        zzxzVar.zzb |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzr, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", zzxx.class, "zzq", zzxy.zza});
            } else if (i2 == 3) {
                return new zzxz();
            } else {
                if (i2 == 4) {
                    return new zzxv(null);
                }
                if (i2 == 5) {
                    return zzr;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
