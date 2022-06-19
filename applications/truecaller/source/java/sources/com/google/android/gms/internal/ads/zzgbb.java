package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgbb.class */
public final class zzgbb extends zzgga<zzgbb, zzgba> implements zzghj {
    private static final zzgbb zzh;
    private zzgar zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgbb zzgbbVar = new zzgbb();
        zzh = zzgbbVar;
        zzgga.zzay(zzgbb.class, zzgbbVar);
    }

    private zzgbb() {
    }

    public final boolean zza() {
        return this.zzb != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgbb();
            }
            if (i2 == 4) {
                return new zzgba(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgar zzc() {
        zzgar zzgarVar = this.zzb;
        zzgar zzgarVar2 = zzgarVar;
        if (zzgarVar == null) {
            zzgarVar2 = zzgar.zze();
        }
        return zzgarVar2;
    }

    public final int zzd() {
        return this.zzf;
    }

    public final int zzf() {
        int i = this.zze;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzg() {
        int zzb = zzgbv.zzb(this.zzg);
        int i = zzb;
        if (zzb == 0) {
            i = 1;
        }
        return i;
    }
}
