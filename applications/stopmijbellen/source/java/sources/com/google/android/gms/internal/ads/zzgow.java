package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgow.class */
public final class zzgow extends zzgkl<zzgow, zzgov> implements zzglw {
    private static final zzgow zzb;
    private int zze;
    private String zzf = "";
    private long zzg;
    private boolean zzh;

    static {
        zzgow zzgowVar = new zzgow();
        zzb = zzgowVar;
        zzgkl.zzaK(zzgow.class, zzgowVar);
    }

    private zzgow() {
    }

    public static zzgov zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzgow zzgowVar, String str) {
        zzgowVar.zze |= 1;
        zzgowVar.zzf = str;
    }

    public static /* synthetic */ void zze(zzgow zzgowVar, long j) {
        zzgowVar.zze |= 2;
        zzgowVar.zzg = j;
    }

    public static /* synthetic */ void zzf(zzgow zzgowVar, boolean z) {
        zzgowVar.zze |= 4;
        zzgowVar.zzh = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzgow();
            }
            if (i2 == 4) {
                return new zzgov(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
