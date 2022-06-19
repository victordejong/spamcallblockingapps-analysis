package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehd.class */
public final class zzehd extends zzelb<zzehd, zza> implements zzemq {
    private static volatile zzemx<zzehd> zzek;
    private static final zzehd zziiu;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehd$zza.class */
    public static final class zza extends zzelb.zzb<zzehd, zza> implements zzemq {
        private zza() {
            super(zzehd.zziiu);
        }

        /* synthetic */ zza(zzehe zzeheVar) {
            this();
        }
    }

    static {
        zzehd zzehdVar = new zzehd();
        zziiu = zzehdVar;
        zzelb.zza(zzehd.class, zzehdVar);
    }

    private zzehd() {
    }

    public static zzehd zzaa(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzehd) zzelb.zza(zziiu, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzehe.zzel[i - 1]) {
            case 1:
                return new zzehd();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziiu, "����", (Object[]) null);
            case 4:
                return zziiu;
            case 5:
                zzemx<zzehd> zzemxVar = zzek;
                zzemx<zzehd> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzehd.class) {
                        try {
                            zzemx<zzehd> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziiu);
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
