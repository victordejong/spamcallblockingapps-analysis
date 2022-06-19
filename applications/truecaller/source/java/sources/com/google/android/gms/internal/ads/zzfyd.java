package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfyd.class */
public final class zzfyd extends zzgga<zzfyd, zzfyc> implements zzghj {
    private static final zzfyd zzg;
    private int zzb;
    private zzfyj zze;
    private zzgex zzf = zzgex.zzb;

    static {
        zzfyd zzfydVar = new zzfyd();
        zzg = zzfydVar;
        zzgga.zzay(zzfyd.class, zzfydVar);
    }

    private zzfyd() {
    }

    public static zzfyd zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfyd) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzfyc zzf() {
        return zzg.zzas();
    }

    public static /* synthetic */ void zzi(zzfyd zzfydVar, zzfyj zzfyjVar) {
        zzfyjVar.getClass();
        zzfydVar.zze = zzfyjVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfyd();
            }
            if (i2 == 4) {
                return new zzfyc(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfyj zzc() {
        zzfyj zzfyjVar = this.zze;
        zzfyj zzfyjVar2 = zzfyjVar;
        if (zzfyjVar == null) {
            zzfyjVar2 = zzfyj.zzd();
        }
        return zzfyjVar2;
    }

    public final zzgex zzd() {
        return this.zzf;
    }
}
