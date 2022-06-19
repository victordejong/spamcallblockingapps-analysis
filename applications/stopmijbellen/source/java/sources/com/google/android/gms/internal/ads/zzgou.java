package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgou.class */
public final class zzgou extends zzgkl<zzgou, zzgot> implements zzglw {
    private static final zzgou zzb;
    private int zze;
    private int zzf;
    private zzgoh zzh;
    private zzgol zzi;
    private int zzj;
    private int zzm;
    private byte zzo = (byte) 2;
    private String zzg = "";
    private zzgkq zzk = zzgkl.zzaB();
    private String zzl = "";
    private zzgku<String> zzn = zzgkl.zzaE();

    static {
        zzgou zzgouVar = new zzgou();
        zzb = zzgouVar;
        zzgkl.zzaK(zzgou.class, zzgouVar);
    }

    private zzgou() {
    }

    public static zzgot zzc() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzf(zzgou zzgouVar, int i) {
        zzgouVar.zze |= 1;
        zzgouVar.zzf = i;
    }

    public static /* synthetic */ void zzg(zzgou zzgouVar, String str) {
        Objects.requireNonNull(str);
        zzgouVar.zze |= 2;
        zzgouVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzgou zzgouVar, zzgoh zzgohVar) {
        Objects.requireNonNull(zzgohVar);
        zzgouVar.zzh = zzgohVar;
        zzgouVar.zze |= 4;
    }

    public static /* synthetic */ void zzi(zzgou zzgouVar, String str) {
        Objects.requireNonNull(str);
        zzgku<String> zzgkuVar = zzgouVar.zzn;
        if (!zzgkuVar.zzc()) {
            zzgouVar.zzn = zzgkl.zzaF(zzgkuVar);
        }
        zzgouVar.zzn.add(str);
    }

    public static /* synthetic */ void zzj(zzgou zzgouVar, int i) {
        zzgouVar.zzm = i - 1;
        zzgouVar.zze |= 64;
    }

    public final int zza() {
        return this.zzn.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            int i3 = 1;
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", zzgor.zza, "zzn"});
            } else if (i2 == 3) {
                return new zzgou();
            } else {
                if (i2 == 4) {
                    return new zzgot(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                if (obj == null) {
                    i3 = 0;
                }
                this.zzo = (byte) i3;
                return null;
            }
        }
        return Byte.valueOf(this.zzo);
    }

    public final String zze() {
        return this.zzg;
    }
}
