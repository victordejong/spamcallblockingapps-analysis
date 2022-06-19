package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegg.class */
public final class zzegg extends zzelb<zzegg, zza> implements zzemq {
    private static volatile zzemx<zzegg> zzek;
    private static final zzegg zzihk;
    private String zzigs = "";
    private zzejr zzigt = zzejr.zzilz;
    private int zzihj;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegg$zza.class */
    public static final class zza extends zzelb.zzb<zzegg, zza> implements zzemq {
        private zza() {
            super(zzegg.zzihk);
        }

        /* synthetic */ zza(zzegi zzegiVar) {
            this();
        }
    }

    static {
        zzegg zzeggVar = new zzegg();
        zzihk = zzeggVar;
        zzelb.zza(zzegg.class, zzeggVar);
    }

    private zzegg() {
    }

    public static zzegg zzbed() {
        return zzihk;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegi.zzel[i - 1]) {
            case 1:
                return new zzegg();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzihk, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzigs", "zzigt", "zzihj"});
            case 4:
                return zzihk;
            case 5:
                zzemx<zzegg> zzemxVar = zzek;
                zzemx<zzegg> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegg.class) {
                        try {
                            zzemx<zzegg> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzihk);
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

    public final String zzbdx() {
        return this.zzigs;
    }

    public final zzejr zzbdy() {
        return this.zzigt;
    }
}
