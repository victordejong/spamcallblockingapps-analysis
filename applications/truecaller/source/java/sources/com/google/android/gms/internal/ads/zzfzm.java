package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfzm.class */
public final class zzfzm extends zzgga<zzfzm, zzfzl> implements zzghj {
    private static final zzfzm zze;
    private zzgau zzb;

    static {
        zzfzm zzfzmVar = new zzfzm();
        zze = zzfzmVar;
        zzgga.zzay(zzfzm.class, zzfzmVar);
    }

    private zzfzm() {
    }

    public static zzfzl zzc() {
        return zze.zzas();
    }

    public static zzfzm zzd() {
        return zze;
    }

    public static /* synthetic */ void zzf(zzfzm zzfzmVar, zzgau zzgauVar) {
        zzgauVar.getClass();
        zzfzmVar.zzb = zzgauVar;
    }

    public final zzgau zza() {
        zzgau zzgauVar = this.zzb;
        zzgau zzgauVar2 = zzgauVar;
        if (zzgauVar == null) {
            zzgauVar2 = zzgau.zze();
        }
        return zzgauVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zze, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new zzfzm();
            }
            if (i2 == 4) {
                return new zzfzl(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
