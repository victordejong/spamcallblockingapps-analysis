package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefr.class */
public final class zzefr extends zzelb<zzefr, zza> implements zzemq {
    private static volatile zzemx<zzefr> zzek;
    private static final zzefr zzify;
    private int zzifv;
    private int zzifw;
    private zzejr zzifx = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefr$zza.class */
    public static final class zza extends zzelb.zzb<zzefr, zza> implements zzemq {
        private zza() {
            super(zzefr.zzify);
        }

        /* synthetic */ zza(zzefq zzefqVar) {
            this();
        }
    }

    static {
        zzefr zzefrVar = new zzefr();
        zzify = zzefrVar;
        zzelb.zza(zzefr.class, zzefrVar);
    }

    private zzefr() {
    }

    public static zzefr zzbdm() {
        return zzify;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefq.zzel[i - 1]) {
            case 1:
                return new zzefr();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzify, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzifv", "zzifw", "zzifx"});
            case 4:
                return zzify;
            case 5:
                zzemx<zzefr> zzemxVar = zzek;
                zzemx<zzefr> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefr.class) {
                        try {
                            zzemx<zzefr> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzify);
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

    public final zzefs zzbdj() {
        zzefs zzfg = zzefs.zzfg(this.zzifv);
        zzefs zzefsVar = zzfg;
        if (zzfg == null) {
            zzefsVar = zzefs.UNRECOGNIZED;
        }
        return zzefsVar;
    }

    public final zzeft zzbdk() {
        zzeft zzfh = zzeft.zzfh(this.zzifw);
        zzeft zzeftVar = zzfh;
        if (zzfh == null) {
            zzeftVar = zzeft.UNRECOGNIZED;
        }
        return zzeftVar;
    }

    public final zzejr zzbdl() {
        return this.zzifx;
    }
}
