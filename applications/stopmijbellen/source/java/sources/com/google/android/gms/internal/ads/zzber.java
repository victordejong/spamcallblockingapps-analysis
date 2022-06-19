package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzber.class */
public final class zzber extends zzgkl<zzber, zzbeq> implements zzglw {
    private static final zzber zzb;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        zzber zzberVar = new zzber();
        zzb = zzberVar;
        zzgkl.zzaK(zzber.class, zzberVar);
    }

    private zzber() {
    }

    public static zzbeq zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzber zzberVar, boolean z) {
        zzberVar.zze |= 1;
        zzberVar.zzf = z;
    }

    public static /* synthetic */ void zze(zzber zzberVar, int i) {
        zzberVar.zze |= 2;
        zzberVar.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzber();
            }
            if (i2 == 4) {
                return new zzbeq(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final boolean zzf() {
        return this.zzf;
    }
}
