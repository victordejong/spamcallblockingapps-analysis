package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgr.class */
public final class zzgr extends zzelb<zzgr, zza> implements zzemq {
    private static final zzgr zzacc;
    private static volatile zzemx<zzgr> zzek;
    private zzgv zzabz;
    private zzejr zzaca = zzejr.zzilz;
    private zzejr zzacb = zzejr.zzilz;
    private int zzdv;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgr$zza.class */
    public static final class zza extends zzelb.zzb<zzgr, zza> implements zzemq {
        private zza() {
            super(zzgr.zzacc);
        }

        /* synthetic */ zza(zzgt zzgtVar) {
            this();
        }
    }

    static {
        zzgr zzgrVar = new zzgr();
        zzacc = zzgrVar;
        zzelb.zza(zzgr.class, zzgrVar);
    }

    private zzgr() {
    }

    public static zzgr zza(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzgr) zzelb.zza(zzacc, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzgt.zzel[i - 1]) {
            case 1:
                return new zzgr();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzacc, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzabz", "zzaca", "zzacb"});
            case 4:
                return zzacc;
            case 5:
                zzemx<zzgr> zzemxVar = zzek;
                zzemx<zzgr> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzgr.class) {
                        try {
                            zzemx<zzgr> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzacc);
                                zzek = zzemxVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzemxVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzgv zzdc() {
        zzgv zzgvVar = this.zzabz;
        zzgv zzgvVar2 = zzgvVar;
        if (zzgvVar == null) {
            zzgvVar2 = zzgv.zzdm();
        }
        return zzgvVar2;
    }

    public final zzejr zzdd() {
        return this.zzaca;
    }

    public final zzejr zzde() {
        return this.zzacb;
    }
}
