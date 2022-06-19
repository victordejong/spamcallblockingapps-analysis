package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazr.class */
public final class zzazr extends zzgga<zzazr, zzazq> implements zzghj {
    private static final zzazr zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    static {
        zzazr zzazrVar = new zzazr();
        zzg = zzazrVar;
        zzgga.zzay(zzazr.class, zzazrVar);
    }

    private zzazr() {
    }

    public static zzazq zza() {
        return zzg.zzas();
    }

    public static zzazr zzc() {
        return zzg;
    }

    public static /* synthetic */ void zze(zzazr zzazrVar, boolean z) {
        zzazrVar.zzb |= 1;
        zzazrVar.zze = z;
    }

    public static /* synthetic */ void zzf(zzazr zzazrVar, int i) {
        zzazrVar.zzb |= 2;
        zzazrVar.zzf = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzazr();
            }
            if (i2 == 4) {
                return new zzazq(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
