package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeej.class */
public final class zzeej extends zzelb<zzeej, zza> implements zzemq {
    private static volatile zzemx<zzeej> zzek;
    private static final zzeej zziep;
    private int zzied;
    private zzeek zzien;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeej$zza.class */
    public static final class zza extends zzelb.zzb<zzeej, zza> implements zzemq {
        private zza() {
            super(zzeej.zziep);
        }

        /* synthetic */ zza(zzeei zzeeiVar) {
            this();
        }
    }

    static {
        zzeej zzeejVar = new zzeej();
        zziep = zzeejVar;
        zzelb.zza(zzeej.class, zzeejVar);
    }

    private zzeej() {
    }

    public static zzeej zzbbx() {
        return zziep;
    }

    public static zzeej zzh(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeej) zzelb.zza(zziep, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeei.zzel[i - 1]) {
            case 1:
                return new zzeej();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziep, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzien", "zzied"});
            case 4:
                return zziep;
            case 5:
                zzemx<zzeej> zzemxVar = zzek;
                zzemx<zzeej> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeej.class) {
                        try {
                            zzemx<zzeej> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziep);
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

    public final zzeek zzbbt() {
        zzeek zzeekVar = this.zzien;
        zzeek zzeekVar2 = zzeekVar;
        if (zzeekVar == null) {
            zzeekVar2 = zzeek.zzbca();
        }
        return zzeekVar2;
    }
}
