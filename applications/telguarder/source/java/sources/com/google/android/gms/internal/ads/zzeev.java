package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeev.class */
public final class zzeev extends zzelb<zzeev, zza> implements zzemq {
    private static volatile zzemx<zzeev> zzek;
    private static final zzeev zziex;
    private int zzidz;
    private int zzied;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeev$zza.class */
    public static final class zza extends zzelb.zzb<zzeev, zza> implements zzemq {
        private zza() {
            super(zzeev.zziex);
        }

        /* synthetic */ zza(zzeeu zzeeuVar) {
            this();
        }
    }

    static {
        zzeev zzeevVar = new zzeev();
        zziex = zzeevVar;
        zzelb.zza(zzeev.class, zzeevVar);
    }

    private zzeev() {
    }

    public static zzeev zzl(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeev) zzelb.zza(zziex, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeeu.zzel[i - 1]) {
            case 1:
                return new zzeev();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziex, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzied", "zzidz"});
            case 4:
                return zziex;
            case 5:
                zzemx<zzeev> zzemxVar = zzek;
                zzemx<zzeev> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeev.class) {
                        try {
                            zzemx<zzeev> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziex);
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
}
