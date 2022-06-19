package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazt.class */
public final class zzazt extends zzgga<zzazt, zzazs> implements zzghj {
    private static final zzazt zzh;
    private int zzb;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        zzazt zzaztVar = new zzazt();
        zzh = zzaztVar;
        zzgga.zzay(zzazt.class, zzaztVar);
    }

    private zzazt() {
    }

    public static zzazs zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ void zzd(zzazt zzaztVar, boolean z) {
        zzaztVar.zzb |= 1;
        zzaztVar.zze = z;
    }

    public static /* synthetic */ void zze(zzazt zzaztVar, boolean z) {
        zzaztVar.zzb |= 2;
        zzaztVar.zzf = z;
    }

    public static /* synthetic */ void zzf(zzazt zzaztVar, int i) {
        zzaztVar.zzb |= 4;
        zzaztVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzazt();
            }
            if (i2 == 4) {
                return new zzazs(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
