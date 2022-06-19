package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgal.class */
public final class zzgal extends zzgga<zzgal, zzgak> implements zzghj {
    private static final zzgal zzg;
    private zzgao zzb;
    private int zze;
    private int zzf;

    static {
        zzgal zzgalVar = new zzgal();
        zzg = zzgalVar;
        zzgga.zzay(zzgal.class, zzgalVar);
    }

    private zzgal() {
    }

    public static zzgal zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzgal) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzgak zze() {
        return zzg.zzas();
    }

    public static zzgal zzf() {
        return zzg;
    }

    public static /* synthetic */ void zzh(zzgal zzgalVar, zzgao zzgaoVar) {
        zzgaoVar.getClass();
        zzgalVar.zzb = zzgaoVar;
    }

    public final zzgao zza() {
        zzgao zzgaoVar = this.zzb;
        zzgao zzgaoVar2 = zzgaoVar;
        if (zzgaoVar == null) {
            zzgaoVar2 = zzgao.zzd();
        }
        return zzgaoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgal();
            }
            if (i2 == 4) {
                return new zzgak(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zze;
    }
}
