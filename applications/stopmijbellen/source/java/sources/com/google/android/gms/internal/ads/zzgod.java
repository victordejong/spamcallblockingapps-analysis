package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgod.class */
public final class zzgod extends zzgkl<zzgod, zzgoc> implements zzglw {
    private static final zzgod zzb;
    private int zze;
    private zzgjf zzf;
    private zzgjf zzg;
    private byte zzh = (byte) 2;

    static {
        zzgod zzgodVar = new zzgod();
        zzb = zzgodVar;
        zzgkl.zzaK(zzgod.class, zzgodVar);
    }

    private zzgod() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzf = zzgjfVar;
        this.zzg = zzgjfVar;
    }

    public static zzgoc zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzgod zzgodVar, zzgjf zzgjfVar) {
        zzgodVar.zze |= 1;
        zzgodVar.zzf = zzgjfVar;
    }

    public static /* synthetic */ void zze(zzgod zzgodVar, zzgjf zzgjfVar) {
        zzgodVar.zze |= 2;
        zzgodVar.zzg = zzgjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgod();
            }
            if (i2 == 4) {
                return new zzgoc(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzh = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzh);
    }
}
