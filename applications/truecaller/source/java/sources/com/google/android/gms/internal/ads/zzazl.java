package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazl.class */
public final class zzazl extends zzgga<zzazl, zzazk> implements zzghj {
    private static final zzazl zzp;
    private int zzb;
    private int zze;
    private zzbab zzg;
    private zzbad zzh;
    private zzbaf zzj;
    private zzbbp zzk;
    private zzbbf zzl;
    private zzbat zzm;
    private zzbav zzn;
    private int zzf = 1000;
    private zzggj<zzazz> zzi = zzgga.zzaE();
    private zzggj<zzbcb> zzo = zzgga.zzaE();

    static {
        zzazl zzazlVar = new zzazl();
        zzp = zzazlVar;
        zzgga.zzay(zzazl.class, zzazlVar);
    }

    private zzazl() {
    }

    public static zzazl zzc() {
        return zzp;
    }

    public static /* synthetic */ void zze(zzazl zzazlVar, zzazj zzazjVar) {
        zzazlVar.zze = zzazjVar.zza();
        zzazlVar.zzb |= 1;
    }

    public static /* synthetic */ void zzf(zzazl zzazlVar, zzbad zzbadVar) {
        zzbadVar.getClass();
        zzazlVar.zzh = zzbadVar;
        zzazlVar.zzb |= 8;
    }

    public final zzbad zza() {
        zzbad zzbadVar = this.zzh;
        zzbad zzbadVar2 = zzbadVar;
        if (zzbadVar == null) {
            zzbadVar2 = zzbad.zza();
        }
        return zzbadVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzp, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzb", "zze", zzazj.zzc(), "zzf", zzbam.zza, "zzg", "zzh", "zzi", zzazz.class, "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zzbcb.class});
            } else if (i2 == 3) {
                return new zzazl();
            } else {
                if (i2 == 4) {
                    return new zzazk(null);
                }
                if (i2 == 5) {
                    return zzp;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
