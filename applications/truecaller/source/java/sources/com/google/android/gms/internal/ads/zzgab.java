package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgab.class */
public final class zzgab extends zzgga<zzgab, zzgaa> implements zzghj {
    private static final zzgab zzg;
    private int zzb;
    private int zze;
    private zzgex zzf = zzgex.zzb;

    static {
        zzgab zzgabVar = new zzgab();
        zzg = zzgabVar;
        zzgga.zzay(zzgab.class, zzgabVar);
    }

    private zzgab() {
    }

    public static zzgaa zzc() {
        return zzg.zzas();
    }

    public static zzgab zzd() {
        return zzg;
    }

    public final zzgex zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgab();
            }
            if (i2 == 4) {
                return new zzgaa(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzg() {
        int i = this.zzb;
        int i2 = 5;
        if (i == 0) {
            i2 = 2;
        } else if (i == 2) {
            i2 = 4;
        } else if (i != 3) {
            i2 = i != 4 ? i != 5 ? 0 : 7 : 6;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzh() {
        int zzb = zzgaf.zzb(this.zze);
        int i = zzb;
        if (zzb == 0) {
            i = 1;
        }
        return i;
    }
}
