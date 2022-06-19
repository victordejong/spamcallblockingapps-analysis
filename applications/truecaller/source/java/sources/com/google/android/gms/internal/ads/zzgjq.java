package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgjq.class */
public final class zzgjq extends zzgga<zzgjq, zzgjn> implements zzghj {
    private static final zzgjq zzk;
    private int zzb;
    private zzgjp zze;
    private zzgex zzg;
    private zzgex zzh;
    private int zzi;
    private byte zzj = (byte) 2;
    private zzggj<zzgjm> zzf = zzgga.zzaE();

    static {
        zzgjq zzgjqVar = new zzgjq();
        zzk = zzgjqVar;
        zzgga.zzay(zzgjq.class, zzgjqVar);
    }

    private zzgjq() {
        zzgex zzgexVar = zzgex.zzb;
        this.zzg = zzgexVar;
        this.zzh = zzgexVar;
    }

    public static zzgjn zza() {
        return zzk.zzas();
    }

    public static /* synthetic */ void zzd(zzgjq zzgjqVar, zzgjm zzgjmVar) {
        zzgjmVar.getClass();
        zzggj<zzgjm> zzggjVar = zzgjqVar.zzf;
        if (!zzggjVar.zza()) {
            zzgjqVar.zzf = zzgga.zzaF(zzggjVar);
        }
        zzgjqVar.zzf.add(zzgjmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgga.zzaz(zzk, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzb", "zze", "zzf", zzgjm.class, "zzg", "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzgjq();
            }
            if (i2 == 4) {
                return new zzgjn(null);
            }
            if (i2 == 5) {
                return zzk;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzj = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzj);
    }
}
