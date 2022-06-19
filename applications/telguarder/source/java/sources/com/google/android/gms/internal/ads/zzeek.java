package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeek.class */
public final class zzeek extends zzelb<zzeek, zza> implements zzemq {
    private static volatile zzemx<zzeek> zzek;
    private static final zzeek zzier;
    private int zzieq;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeek$zza.class */
    public static final class zza extends zzelb.zzb<zzeek, zza> implements zzemq {
        private zza() {
            super(zzeek.zzier);
        }

        /* synthetic */ zza(zzeel zzeelVar) {
            this();
        }
    }

    static {
        zzeek zzeekVar = new zzeek();
        zzier = zzeekVar;
        zzelb.zza(zzeek.class, zzeekVar);
    }

    private zzeek() {
    }

    public static zzeek zzbca() {
        return zzier;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeel.zzel[i - 1]) {
            case 1:
                return new zzeek();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzier, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzieq"});
            case 4:
                return zzier;
            case 5:
                zzemx<zzeek> zzemxVar = zzek;
                zzemx<zzeek> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeek.class) {
                        try {
                            zzemx<zzeek> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzier);
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

    public final int zzbbz() {
        return this.zzieq;
    }
}
