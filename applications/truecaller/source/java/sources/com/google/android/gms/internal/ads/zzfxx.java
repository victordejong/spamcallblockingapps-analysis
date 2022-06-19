package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxx.class */
public final class zzfxx extends zzgga<zzfxx, zzfxw> implements zzghj {
    private static final zzfxx zzf;
    private zzfya zzb;
    private int zze;

    static {
        zzfxx zzfxxVar = new zzfxx();
        zzf = zzfxxVar;
        zzgga.zzay(zzfxx.class, zzfxxVar);
    }

    private zzfxx() {
    }

    public static zzfxx zzd(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxx) zzgga.zzaI(zzf, zzgexVar, zzgfmVar);
    }

    public static zzfxw zze() {
        return zzf.zzas();
    }

    public static zzfxx zzf() {
        return zzf;
    }

    public static /* synthetic */ void zzh(zzfxx zzfxxVar, zzfya zzfyaVar) {
        zzfyaVar.getClass();
        zzfxxVar.zzb = zzfyaVar;
    }

    public final zzfya zza() {
        zzfya zzfyaVar = this.zzb;
        zzfya zzfyaVar2 = zzfyaVar;
        if (zzfyaVar == null) {
            zzfyaVar2 = zzfya.zzd();
        }
        return zzfyaVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new zzfxx();
            }
            if (i2 == 4) {
                return new zzfxw(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zze;
    }
}
