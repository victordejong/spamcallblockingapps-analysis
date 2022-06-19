package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeb.class */
public final class zzeeb extends zzelb<zzeeb, zza> implements zzemq {
    private static volatile zzemx<zzeeb> zzek;
    private static final zzeeb zzieg;
    private int zzief;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeb$zza.class */
    public static final class zza extends zzelb.zzb<zzeeb, zza> implements zzemq {
        private zza() {
            super(zzeeb.zzieg);
        }

        /* synthetic */ zza(zzeea zzeeaVar) {
            this();
        }
    }

    static {
        zzeeb zzeebVar = new zzeeb();
        zzieg = zzeebVar;
        zzelb.zza(zzeeb.class, zzeebVar);
    }

    private zzeeb() {
    }

    public static zzeeb zzbbk() {
        return zzieg;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeea.zzel[i - 1]) {
            case 1:
                return new zzeeb();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzieg, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzief"});
            case 4:
                return zzieg;
            case 5:
                zzemx<zzeeb> zzemxVar = zzek;
                zzemx<zzeeb> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeeb.class) {
                        try {
                            zzemx<zzeeb> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzieg);
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
}
