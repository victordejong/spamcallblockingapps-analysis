package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbh.class */
public final class zzgbh extends zzgga<zzgbh, zzgbe> implements zzghj {
    private static final zzgbh zzf;
    private int zzb;
    private zzggj<zzgbg> zze = zzgga.zzaE();

    static {
        zzgbh zzgbhVar = new zzgbh();
        zzf = zzgbhVar;
        zzgga.zzay(zzgbh.class, zzgbhVar);
    }

    private zzgbh() {
    }

    public static zzgbe zza() {
        return zzf.zzas();
    }

    public static /* synthetic */ void zze(zzgbh zzgbhVar, zzgbg zzgbgVar) {
        zzgbgVar.getClass();
        zzggj<zzgbg> zzggjVar = zzgbhVar.zze;
        if (!zzggjVar.zza()) {
            zzgbhVar.zze = zzgga.zzaF(zzggjVar);
        }
        zzgbhVar.zze.add(zzgbgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzb", "zze", zzgbg.class});
            }
            if (i2 == 3) {
                return new zzgbh();
            }
            if (i2 == 4) {
                return new zzgbe(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
