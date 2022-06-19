package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfxo.class */
public final class zzfxo extends zzgga<zzfxo, zzfxn> implements zzghj {
    private static final zzfxo zzg;
    private int zzb;
    private zzfxu zze;
    private zzgai zzf;

    static {
        zzfxo zzfxoVar = new zzfxo();
        zzg = zzfxoVar;
        zzgga.zzay(zzfxo.class, zzfxoVar);
    }

    private zzfxo() {
    }

    public static zzfxo zze(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfxo) zzgga.zzaI(zzg, zzgexVar, zzgfmVar);
    }

    public static zzfxn zzf() {
        return zzg.zzas();
    }

    public static /* synthetic */ void zzi(zzfxo zzfxoVar, zzfxu zzfxuVar) {
        zzfxuVar.getClass();
        zzfxoVar.zze = zzfxuVar;
    }

    public static /* synthetic */ void zzj(zzfxo zzfxoVar, zzgai zzgaiVar) {
        zzgaiVar.getClass();
        zzfxoVar.zzf = zzgaiVar;
    }

    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzfxo();
            }
            if (i2 == 4) {
                return new zzfxn(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzfxu zzc() {
        zzfxu zzfxuVar = this.zze;
        zzfxu zzfxuVar2 = zzfxuVar;
        if (zzfxuVar == null) {
            zzfxuVar2 = zzfxu.zzg();
        }
        return zzfxuVar2;
    }

    public final zzgai zzd() {
        zzgai zzgaiVar = this.zzf;
        zzgai zzgaiVar2 = zzgaiVar;
        if (zzgaiVar == null) {
            zzgaiVar2 = zzgai.zzg();
        }
        return zzgaiVar2;
    }
}
