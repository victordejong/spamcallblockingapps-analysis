package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgoh.class */
public final class zzgoh extends zzgkl<zzgoh, zzgoe> implements zzglw {
    private static final zzgoh zzb;
    private int zze;
    private zzgog zzf;
    private zzgjf zzh;
    private zzgjf zzi;
    private int zzj;
    private byte zzk = (byte) 2;
    private zzgku<zzgod> zzg = zzgkl.zzaE();

    static {
        zzgoh zzgohVar = new zzgoh();
        zzb = zzgohVar;
        zzgkl.zzaK(zzgoh.class, zzgohVar);
    }

    private zzgoh() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzh = zzgjfVar;
        this.zzi = zzgjfVar;
    }

    public static zzgoe zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzgoh zzgohVar, zzgod zzgodVar) {
        Objects.requireNonNull(zzgodVar);
        zzgku<zzgod> zzgkuVar = zzgohVar.zzg;
        if (!zzgkuVar.zzc()) {
            zzgohVar.zzg = zzgkl.zzaF(zzgkuVar);
        }
        zzgohVar.zzg.add(zzgodVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zze", "zzf", "zzg", zzgod.class, "zzh", "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzgoh();
            }
            if (i2 == 4) {
                return new zzgoe(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            if (obj == null) {
                i3 = 0;
            }
            this.zzk = (byte) i3;
            return null;
        }
        return Byte.valueOf(this.zzk);
    }
}
