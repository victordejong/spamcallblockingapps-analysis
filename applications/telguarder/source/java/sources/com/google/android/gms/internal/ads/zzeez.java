package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeez.class */
public final class zzeez extends zzelb<zzeez, zza> implements zzemq {
    private static volatile zzemx<zzeez> zzek;
    private static final zzeez zziez;
    private int zzidz;
    private int zzied;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeez$zza.class */
    public static final class zza extends zzelb.zzb<zzeez, zza> implements zzemq {
        private zza() {
            super(zzeez.zziez);
        }

        /* synthetic */ zza(zzeey zzeeyVar) {
            this();
        }
    }

    static {
        zzeez zzeezVar = new zzeez();
        zziez = zzeezVar;
        zzelb.zza(zzeez.class, zzeezVar);
    }

    private zzeez() {
    }

    public static zzeez zzn(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeez) zzelb.zza(zziez, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeey.zzel[i - 1]) {
            case 1:
                return new zzeez();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziez, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zzidz", "zzied"});
            case 4:
                return zziez;
            case 5:
                zzemx<zzeez> zzemxVar = zzek;
                zzemx<zzeez> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeez.class) {
                        try {
                            zzemx<zzeez> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziez);
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
