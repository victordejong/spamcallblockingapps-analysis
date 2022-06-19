package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdm.class */
public final class zzbdm extends zzgkl<zzbdm, zzbdl> implements zzglw {
    private static final zzbdm zzb;
    private int zze;
    private int zzf = 1000;
    private int zzg = 1000;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private zzbdo zzp;

    static {
        zzbdm zzbdmVar = new zzbdm();
        zzb = zzbdmVar;
        zzgkl.zzaK(zzbdm.class, zzbdmVar);
    }

    private zzbdm() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgkp zzgkpVar = zzbcj.zza;
                return zzgkl.zzaJ(zzb, "\u0001\u000b��\u0001\u0001\u000b\u000b������\u0001ဌ��\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zze", "zzf", zzgkpVar, "zzg", zzgkpVar, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp"});
            } else if (i2 == 3) {
                return new zzbdm();
            } else {
                if (i2 == 4) {
                    return new zzbdl(null);
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
