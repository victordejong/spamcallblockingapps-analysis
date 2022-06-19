package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeef.class */
public final class zzeef extends zzelb<zzeef, zza> implements zzemq {
    private static volatile zzemx<zzeef> zzek;
    private static final zzeef zziem;
    private zzeej zziek;
    private zzefz zziel;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeef$zza.class */
    public static final class zza extends zzelb.zzb<zzeef, zza> implements zzemq {
        private zza() {
            super(zzeef.zziem);
        }

        /* synthetic */ zza(zzeee zzeeeVar) {
            this();
        }
    }

    static {
        zzeef zzeefVar = new zzeef();
        zziem = zzeefVar;
        zzelb.zza(zzeef.class, zzeefVar);
    }

    private zzeef() {
    }

    public static zzeef zzf(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeef) zzelb.zza(zziem, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeee.zzel[i - 1]) {
            case 1:
                return new zzeef();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziem, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zziek", "zziel"});
            case 4:
                return zziem;
            case 5:
                zzemx<zzeef> zzemxVar = zzek;
                zzemx<zzeef> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeef.class) {
                        try {
                            zzemx<zzeef> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziem);
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

    public final zzeej zzbbq() {
        zzeej zzeejVar = this.zziek;
        zzeej zzeejVar2 = zzeejVar;
        if (zzeejVar == null) {
            zzeejVar2 = zzeej.zzbbx();
        }
        return zzeejVar2;
    }

    public final zzefz zzbbr() {
        zzefz zzefzVar = this.zziel;
        zzefz zzefzVar2 = zzefzVar;
        if (zzefzVar == null) {
            zzefzVar2 = zzefz.zzbds();
        }
        return zzefzVar2;
    }
}
