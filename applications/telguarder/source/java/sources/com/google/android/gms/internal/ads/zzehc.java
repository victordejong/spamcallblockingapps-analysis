package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehc.class */
public final class zzehc extends zzelb<zzehc, zza> implements zzemq {
    private static volatile zzemx<zzehc> zzek;
    private static final zzehc zziit;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehc$zza.class */
    public static final class zza extends zzelb.zzb<zzehc, zza> implements zzemq {
        private zza() {
            super(zzehc.zziit);
        }

        /* synthetic */ zza(zzehb zzehbVar) {
            this();
        }

        public final zza zzah(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzehc) this.zziqp).zzs(zzejrVar);
            return this;
        }

        public final zza zzfs(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzehc) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzehc zzehcVar = new zzehc();
        zziit = zzehcVar;
        zzelb.zza(zzehc.class, zzehcVar);
    }

    private zzehc() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbfm() {
        return zziit.zzbii();
    }

    public final void zzs(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zziea = zzejrVar;
    }

    public static zzehc zzz(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzehc) zzelb.zza(zziit, zzejrVar, zzekoVar);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzehb.zzel[i - 1]) {
            case 1:
                return new zzehc();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziit, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziit;
            case 5:
                zzemx<zzehc> zzemxVar = zzek;
                zzemx<zzehc> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzehc.class) {
                        try {
                            zzemx<zzehc> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziit);
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

    public final zzejr zzbbe() {
        return this.zziea;
    }
}
