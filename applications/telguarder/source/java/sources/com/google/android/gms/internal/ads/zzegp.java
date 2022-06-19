package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegp.class */
public final class zzegp extends zzelb<zzegp, zza> implements zzemq {
    private static volatile zzemx<zzegp> zzek;
    private static final zzegp zziib;
    private int zzidz;
    private zzegs zziia;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegp$zza.class */
    public static final class zza extends zzelb.zzb<zzegp, zza> implements zzemq {
        private zza() {
            super(zzegp.zziib);
        }

        /* synthetic */ zza(zzegq zzegqVar) {
            this();
        }

        public final zza zzb(zzegs zzegsVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegp) this.zziqp).zza(zzegsVar);
            return this;
        }

        public final zza zzfp(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegp) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzegp zzegpVar = new zzegp();
        zziib = zzegpVar;
        zzelb.zza(zzegp.class, zzegpVar);
    }

    private zzegp() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zza(zzegs zzegsVar) {
        zzegsVar.getClass();
        this.zziia = zzegsVar;
    }

    public static zza zzbex() {
        return zziib.zzbii();
    }

    public static zzegp zzv(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzegp) zzelb.zza(zziib, zzejrVar, zzekoVar);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegq.zzel[i - 1]) {
            case 1:
                return new zzegp();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziib, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzidz", "zziia"});
            case 4:
                return zziib;
            case 5:
                zzemx<zzegp> zzemxVar = zzek;
                zzemx<zzegp> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegp.class) {
                        try {
                            zzemx<zzegp> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziib);
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

    public final zzegs zzbew() {
        zzegs zzegsVar = this.zziia;
        zzegs zzegsVar2 = zzegsVar;
        if (zzegsVar == null) {
            zzegsVar2 = zzegs.zzbfa();
        }
        return zzegsVar2;
    }
}
