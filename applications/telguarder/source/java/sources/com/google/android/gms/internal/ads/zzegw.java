package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegw.class */
public final class zzegw extends zzelb<zzegw, zza> implements zzemq {
    private static volatile zzemx<zzegw> zzek;
    private static final zzegw zziii;
    private String zziig = "";
    private zzegg zziih;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegw$zza.class */
    public static final class zza extends zzelb.zzb<zzegw, zza> implements zzemq {
        private zza() {
            super(zzegw.zziii);
        }

        /* synthetic */ zza(zzegv zzegvVar) {
            this();
        }
    }

    static {
        zzegw zzegwVar = new zzegw();
        zziii = zzegwVar;
        zzelb.zza(zzegw.class, zzegwVar);
    }

    private zzegw() {
    }

    public static zzegw zzbfh() {
        return zziii;
    }

    public static zzegw zzy(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzegw) zzelb.zza(zziii, zzejrVar, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegv.zzel[i - 1]) {
            case 1:
                return new zzegw();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziii, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zziig", "zziih"});
            case 4:
                return zziii;
            case 5:
                zzemx<zzegw> zzemxVar = zzek;
                zzemx<zzegw> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegw.class) {
                        try {
                            zzemx<zzegw> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziii);
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

    public final String zzbff() {
        return this.zziig;
    }

    public final zzegg zzbfg() {
        zzegg zzeggVar = this.zziih;
        zzegg zzeggVar2 = zzeggVar;
        if (zzeggVar == null) {
            zzeggVar2 = zzegg.zzbed();
        }
        return zzeggVar2;
    }
}
