package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegs.class */
public final class zzegs extends zzelb<zzegs, zza> implements zzemq {
    private static volatile zzemx<zzegs> zzek;
    private static final zzegs zziid;
    private String zziic = "";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegs$zza.class */
    public static final class zza extends zzelb.zzb<zzegs, zza> implements zzemq {
        private zza() {
            super(zzegs.zziid);
        }

        /* synthetic */ zza(zzegr zzegrVar) {
            this();
        }
    }

    static {
        zzegs zzegsVar = new zzegs();
        zziid = zzegsVar;
        zzelb.zza(zzegs.class, zzegsVar);
    }

    private zzegs() {
    }

    public static zzegs zzbfa() {
        return zziid;
    }

    public static zzegs zzw(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzegs) zzelb.zza(zziid, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegr.zzel[i - 1]) {
            case 1:
                return new zzegs();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziid, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zziic"});
            case 4:
                return zziid;
            case 5:
                zzemx<zzegs> zzemxVar = zzek;
                zzemx<zzegs> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegs.class) {
                        try {
                            zzemx<zzegs> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziid);
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

    public final String zzbez() {
        return this.zziic;
    }
}
