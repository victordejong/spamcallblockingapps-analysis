package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefd.class */
public final class zzefd extends zzelb<zzefd, zza> implements zzemq {
    private static volatile zzemx<zzefd> zzek;
    private static final zzefd zzifb;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefd$zza.class */
    public static final class zza extends zzelb.zzb<zzefd, zza> implements zzemq {
        private zza() {
            super(zzefd.zzifb);
        }

        /* synthetic */ zza(zzefc zzefcVar) {
            this();
        }
    }

    static {
        zzefd zzefdVar = new zzefd();
        zzifb = zzefdVar;
        zzelb.zza(zzefd.class, zzefdVar);
    }

    private zzefd() {
    }

    public static zzefd zzp(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefd) zzelb.zza(zzifb, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefc.zzel[i - 1]) {
            case 1:
                return new zzefd();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifb, "����", (Object[]) null);
            case 4:
                return zzifb;
            case 5:
                zzemx<zzefd> zzemxVar = zzek;
                zzemx<zzefd> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefd.class) {
                        try {
                            zzemx<zzefd> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifb);
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
