package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeo.class */
public final class zzeeo extends zzelb<zzeeo, zza> implements zzemq {
    private static volatile zzemx<zzeeo> zzek;
    private static final zzeeo zzieu;
    private int zzied;
    private zzeer zzies;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeo$zza.class */
    public static final class zza extends zzelb.zzb<zzeeo, zza> implements zzemq {
        private zza() {
            super(zzeeo.zzieu);
        }

        /* synthetic */ zza(zzeep zzeepVar) {
            this();
        }
    }

    static {
        zzeeo zzeeoVar = new zzeeo();
        zzieu = zzeeoVar;
        zzelb.zza(zzeeo.class, zzeeoVar);
    }

    private zzeeo() {
    }

    public static zzeeo zzj(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeeo) zzelb.zza(zzieu, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeep.zzel[i - 1]) {
            case 1:
                return new zzeeo();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzieu, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzies", "zzied"});
            case 4:
                return zzieu;
            case 5:
                zzemx<zzeeo> zzemxVar = zzek;
                zzemx<zzeeo> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeeo.class) {
                        try {
                            zzemx<zzeeo> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzieu);
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

    public final zzeer zzbcc() {
        zzeer zzeerVar = this.zzies;
        zzeer zzeerVar2 = zzeerVar;
        if (zzeerVar == null) {
            zzeerVar2 = zzeer.zzbcg();
        }
        return zzeerVar2;
    }
}
