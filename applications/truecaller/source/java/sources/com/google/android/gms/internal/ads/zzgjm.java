package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjm.class */
public final class zzgjm extends zzgga<zzgjm, zzgjl> implements zzghj {
    private static final zzgjm zzh;
    private int zzb;
    private zzgex zze;
    private zzgex zzf;
    private byte zzg = (byte) 2;

    static {
        zzgjm zzgjmVar = new zzgjm();
        zzh = zzgjmVar;
        zzgga.zzay(zzgjm.class, zzgjmVar);
    }

    private zzgjm() {
        zzgex zzgexVar = zzgex.zzb;
        this.zze = zzgexVar;
        this.zzf = zzgexVar;
    }

    public static zzgjl zza() {
        return zzh.zzas();
    }

    public static /* synthetic */ zzgjm zzc() {
        return zzh;
    }

    public static /* synthetic */ void zzd(zzgjm zzgjmVar, zzgex zzgexVar) {
        zzgjmVar.zzb |= 1;
        zzgjmVar.zze = zzgexVar;
    }

    public static /* synthetic */ void zze(zzgjm zzgjmVar, zzgex zzgexVar) {
        zzgjmVar.zzb |= 2;
        zzgjmVar.zzf = zzgexVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgga.zzaz(zzh, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgjm();
            }
            if (i2 == 4) {
                return new zzgjl(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzg = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzg);
    }
}
