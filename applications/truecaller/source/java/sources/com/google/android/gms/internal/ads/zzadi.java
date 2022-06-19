package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadi.class */
public final class zzadi extends zzgga<zzadi, zzadh> implements zzghj {
    private static final zzadi zzj;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzadi zzadiVar = new zzadi();
        zzj = zzadiVar;
        zzgga.zzay(zzadi.class, zzadiVar);
    }

    private zzadi() {
    }

    public static zzadi zzg(zzgex zzgexVar) throws zzggm {
        return (zzadi) zzgga.zzaH(zzj, zzgexVar);
    }

    public static zzadi zzh(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzadi) zzgga.zzaI(zzj, zzgexVar, zzgfmVar);
    }

    public static zzadh zzi() {
        return zzj.zzas();
    }

    public static zzadi zzj() {
        return zzj;
    }

    public static /* synthetic */ void zzl(zzadi zzadiVar, String str) {
        str.getClass();
        zzadiVar.zzb |= 1;
        zzadiVar.zze = str;
    }

    public static /* synthetic */ void zzm(zzadi zzadiVar, String str) {
        str.getClass();
        zzadiVar.zzb |= 2;
        zzadiVar.zzf = str;
    }

    public static /* synthetic */ void zzn(zzadi zzadiVar, long j) {
        zzadiVar.zzb |= 4;
        zzadiVar.zzg = j;
    }

    public static /* synthetic */ void zzo(zzadi zzadiVar, long j) {
        zzadiVar.zzb |= 8;
        zzadiVar.zzh = j;
    }

    public static /* synthetic */ void zzp(zzadi zzadiVar, long j) {
        zzadiVar.zzb |= 16;
        zzadiVar.zzi = j;
    }

    public final String zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzadi();
            }
            if (i2 == 4) {
                return new zzadh(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }

    public final String zzc() {
        return this.zzf;
    }

    public final long zzd() {
        return this.zzg;
    }

    public final long zze() {
        return this.zzh;
    }

    public final long zzf() {
        return this.zzi;
    }
}
