package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbn.class */
public final class zzbbn extends zzgga<zzbbn, zzbbj> implements zzghj {
    private static final zzbbn zzl;
    private int zzb;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private zzggj<zzbbi> zze = zzgga.zzaE();
    private String zzi = "";
    private String zzj = "";

    static {
        zzbbn zzbbnVar = new zzbbn();
        zzl = zzbbnVar;
        zzgga.zzay(zzbbn.class, zzbbnVar);
    }

    private zzbbn() {
    }

    public static zzbbj zza() {
        return zzl.zzas();
    }

    public static /* synthetic */ void zzd(zzbbn zzbbnVar, Iterable iterable) {
        zzggj<zzbbi> zzggjVar = zzbbnVar.zze;
        if (!zzggjVar.zza()) {
            zzbbnVar.zze = zzgga.zzaF(zzggjVar);
        }
        zzgeg.zzar(iterable, zzbbnVar.zze);
    }

    public static /* synthetic */ void zze(zzbbn zzbbnVar, int i) {
        zzbbnVar.zzb |= 1;
        zzbbnVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzbbn zzbbnVar, int i) {
        zzbbnVar.zzb |= 2;
        zzbbnVar.zzg = i;
    }

    public static /* synthetic */ void zzg(zzbbn zzbbnVar, long j) {
        zzbbnVar.zzb |= 4;
        zzbbnVar.zzh = j;
    }

    public static /* synthetic */ void zzh(zzbbn zzbbnVar, String str) {
        str.getClass();
        zzbbnVar.zzb |= 8;
        zzbbnVar.zzi = str;
    }

    public static /* synthetic */ void zzi(zzbbn zzbbnVar, String str) {
        str.getClass();
        zzbbnVar.zzb |= 16;
        zzbbnVar.zzj = str;
    }

    public static /* synthetic */ void zzj(zzbbn zzbbnVar, long j) {
        zzbbnVar.zzb |= 32;
        zzbbnVar.zzk = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzl, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzb", "zze", zzbbi.class, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            }
            if (i2 == 3) {
                return new zzbbn();
            }
            if (i2 == 4) {
                return new zzbbj(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            return null;
        }
        return (byte) 1;
    }
}
