package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgao.class */
public final class zzgao extends zzgga<zzgao, zzgan> implements zzghj {
    private static final zzgao zzf;
    private int zzb;
    private int zze;

    static {
        zzgao zzgaoVar = new zzgao();
        zzf = zzgaoVar;
        zzgga.zzay(zzgao.class, zzgaoVar);
    }

    private zzgao() {
    }

    public static zzgan zzc() {
        return zzf.zzas();
    }

    public static zzgao zzd() {
        return zzf;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzgao();
            }
            if (i2 == 4) {
                return new zzgan(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzg() {
        int zzb = zzgaf.zzb(this.zzb);
        int i = zzb;
        if (zzb == 0) {
            i = 1;
        }
        return i;
    }
}
