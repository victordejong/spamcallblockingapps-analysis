package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfzs.class */
public final class zzfzs extends zzgga<zzfzs, zzfzr> implements zzghj {
    private static final zzfzs zzg;
    private zzgab zzb;
    private zzfzm zze;
    private int zzf;

    static {
        zzfzs zzfzsVar = new zzfzs();
        zzg = zzfzsVar;
        zzgga.zzay(zzfzs.class, zzfzsVar);
    }

    private zzfzs() {
    }

    public static zzfzr zzd() {
        return zzg.zzas();
    }

    public static zzfzs zze() {
        return zzg;
    }

    public static /* synthetic */ void zzg(zzfzs zzfzsVar, zzgab zzgabVar) {
        zzgabVar.getClass();
        zzfzsVar.zzb = zzgabVar;
    }

    public static /* synthetic */ void zzh(zzfzs zzfzsVar, zzfzm zzfzmVar) {
        zzfzmVar.getClass();
        zzfzsVar.zze = zzfzmVar;
    }

    public final zzgab zza() {
        zzgab zzgabVar = this.zzb;
        zzgab zzgabVar2 = zzgabVar;
        if (zzgabVar == null) {
            zzgabVar2 = zzgab.zzd();
        }
        return zzgabVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfzs();
            }
            if (i2 == 4) {
                return new zzfzr(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfzm zzc() {
        zzfzm zzfzmVar = this.zze;
        zzfzm zzfzmVar2 = zzfzmVar;
        if (zzfzmVar == null) {
            zzfzmVar2 = zzfzm.zzd();
        }
        return zzfzmVar2;
    }

    public final int zzi() {
        int i = this.zzf;
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
}
