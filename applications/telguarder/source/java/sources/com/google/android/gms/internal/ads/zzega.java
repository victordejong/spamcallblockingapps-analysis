package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzega.class */
public final class zzega extends zzelb<zzega, zza> implements zzemq {
    private static volatile zzemx<zzega> zzek;
    private static final zzega zzigr;
    private int zzief;
    private int zzigq;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzega$zza.class */
    public static final class zza extends zzelb.zzb<zzega, zza> implements zzemq {
        private zza() {
            super(zzega.zzigr);
        }

        /* synthetic */ zza(zzegb zzegbVar) {
            this();
        }
    }

    static {
        zzega zzegaVar = new zzega();
        zzigr = zzegaVar;
        zzelb.zza(zzega.class, zzegaVar);
    }

    private zzega() {
    }

    public static zzega zzbdv() {
        return zzigr;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegb.zzel[i - 1]) {
            case 1:
                return new zzega();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzigr, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzigq", "zzief"});
            case 4:
                return zzigr;
            case 5:
                zzemx<zzega> zzemxVar = zzek;
                zzemx<zzega> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzega.class) {
                        try {
                            zzemx<zzega> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzigr);
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

    public final int zzbbj() {
        return this.zzief;
    }

    public final zzeft zzbdu() {
        zzeft zzfh = zzeft.zzfh(this.zzigq);
        zzeft zzeftVar = zzfh;
        if (zzfh == null) {
            zzeftVar = zzeft.UNRECOGNIZED;
        }
        return zzeftVar;
    }
}
