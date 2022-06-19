package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeer.class */
public final class zzeer extends zzelb<zzeer, zza> implements zzemq {
    private static volatile zzemx<zzeer> zzek;
    private static final zzeer zziev;
    private int zzieq;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeer$zza.class */
    public static final class zza extends zzelb.zzb<zzeer, zza> implements zzemq {
        private zza() {
            super(zzeer.zziev);
        }

        /* synthetic */ zza(zzeeq zzeeqVar) {
            this();
        }
    }

    static {
        zzeer zzeerVar = new zzeer();
        zziev = zzeerVar;
        zzelb.zza(zzeer.class, zzeerVar);
    }

    private zzeer() {
    }

    public static zzeer zzbcg() {
        return zziev;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeeq.zzel[i - 1]) {
            case 1:
                return new zzeer();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziev, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzieq"});
            case 4:
                return zziev;
            case 5:
                zzemx<zzeer> zzemxVar = zzek;
                zzemx<zzeer> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeer.class) {
                        try {
                            zzemx<zzeer> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziev);
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
