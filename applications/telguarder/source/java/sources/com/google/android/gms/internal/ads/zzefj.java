package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefj.class */
public final class zzefj extends zzelb<zzefj, zza> implements zzemq {
    private static volatile zzemx<zzefj> zzek;
    private static final zzefj zzifl;
    private zzefk zzifk;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefj$zza.class */
    public static final class zza extends zzelb.zzb<zzefj, zza> implements zzemq {
        private zza() {
            super(zzefj.zzifl);
        }

        /* synthetic */ zza(zzefi zzefiVar) {
            this();
        }
    }

    static {
        zzefj zzefjVar = new zzefj();
        zzifl = zzefjVar;
        zzelb.zza(zzefj.class, zzefjVar);
    }

    private zzefj() {
    }

    public static zzefj zzq(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefj) zzelb.zza(zzifl, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefi.zzel[i - 1]) {
            case 1:
                return new zzefj();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifl, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzifk"});
            case 4:
                return zzifl;
            case 5:
                zzemx<zzefj> zzemxVar = zzek;
                zzemx<zzefj> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefj.class) {
                        try {
                            zzemx<zzefj> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifl);
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

    public final zzefk zzbcu() {
        zzefk zzefkVar = this.zzifk;
        zzefk zzefkVar2 = zzefkVar;
        if (zzefkVar == null) {
            zzefkVar2 = zzefk.zzbcz();
        }
        return zzefkVar2;
    }
}
