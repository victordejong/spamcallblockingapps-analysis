package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeff.class */
public final class zzeff extends zzelb<zzeff, zza> implements zzemq {
    private static volatile zzemx<zzeff> zzek;
    private static final zzeff zzifj;
    private zzegg zzifi;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeff$zza.class */
    public static final class zza extends zzelb.zzb<zzeff, zza> implements zzemq {
        private zza() {
            super(zzeff.zzifj);
        }

        /* synthetic */ zza(zzefh zzefhVar) {
            this();
        }
    }

    static {
        zzeff zzeffVar = new zzeff();
        zzifj = zzeffVar;
        zzelb.zza(zzeff.class, zzeffVar);
    }

    private zzeff() {
    }

    public static zzeff zzbcs() {
        return zzifj;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefh.zzel[i - 1]) {
            case 1:
                return new zzeff();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifj, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzifi"});
            case 4:
                return zzifj;
            case 5:
                zzemx<zzeff> zzemxVar = zzek;
                zzemx<zzeff> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeff.class) {
                        try {
                            zzemx<zzeff> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifj);
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

    public final zzegg zzbcr() {
        zzegg zzeggVar = this.zzifi;
        zzegg zzeggVar2 = zzeggVar;
        if (zzeggVar == null) {
            zzeggVar2 = zzegg.zzbed();
        }
        return zzeggVar2;
    }
}
