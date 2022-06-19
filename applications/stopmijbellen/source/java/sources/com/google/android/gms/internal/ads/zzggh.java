package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggh.class */
public final class zzggh extends zzgkl<zzggh, zzggg> implements zzglw {
    private static final zzggh zzb;
    private String zze = "";
    private zzgfi zzf;

    static {
        zzggh zzgghVar = new zzggh();
        zzb = zzgghVar;
        zzgkl.zzaK(zzggh.class, zzgghVar);
    }

    private zzggh() {
    }

    public static zzggh zzd() {
        return zzb;
    }

    public static zzggh zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzggh) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public final zzgfi zza() {
        zzgfi zzgfiVar = this.zzf;
        zzgfi zzgfiVar2 = zzgfiVar;
        if (zzgfiVar == null) {
            zzgfiVar2 = zzgfi.zzd();
        }
        return zzgfiVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzggh();
            }
            if (i2 == 4) {
                return new zzggg(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zze;
    }

    public final boolean zzg() {
        return this.zzf != null;
    }
}
