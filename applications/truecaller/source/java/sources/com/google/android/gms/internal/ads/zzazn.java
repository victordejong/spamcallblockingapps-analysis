package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazn.class */
public final class zzazn extends zzgga<zzazn, zzazm> implements zzghj {
    private static final zzazn zzh;
    private int zzb;
    private int zze;
    private zzazr zzf;
    private zzazt zzg;

    static {
        zzazn zzaznVar = new zzazn();
        zzh = zzaznVar;
        zzgga.zzay(zzazn.class, zzaznVar);
    }

    private zzazn() {
    }

    public static zzazm zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ void zzd(zzazn zzaznVar, zzazr zzazrVar) {
        zzazrVar.getClass();
        zzaznVar.zzf = zzazrVar;
        zzaznVar.zzb |= 2;
    }

    public static /* synthetic */ void zze(zzazn zzaznVar, zzazt zzaztVar) {
        zzaztVar.getClass();
        zzaznVar.zzg = zzaztVar;
        zzaznVar.zzb |= 4;
    }

    public static /* synthetic */ void zzf(zzazn zzaznVar, int i) {
        zzaznVar.zze = 1;
        zzaznVar.zzb = 1 | zzaznVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", zzazp.zza, "zzf", "zzg"});
            } else if (i2 == 3) {
                return new zzazn();
            } else {
                if (i2 == 4) {
                    return new zzazm(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
