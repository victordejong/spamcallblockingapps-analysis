package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedx.class */
public final class zzedx extends zzelb<zzedx, zza> implements zzemq {
    private static volatile zzemx<zzedx> zzek;
    private static final zzedx zziec;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeeb zzieb;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedx$zza.class */
    public static final class zza extends zzelb.zzb<zzedx, zza> implements zzemq {
        private zza() {
            super(zzedx.zziec);
        }

        /* synthetic */ zza(zzedw zzedwVar) {
            this();
        }

        public final zza zzd(zzeeb zzeebVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).zzc(zzeebVar);
            return this;
        }

        public final zza zzew(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzt(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzedx) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzedx zzedxVar = new zzedx();
        zziec = zzedxVar;
        zzelb.zza(zzedx.class, zzedxVar);
    }

    private zzedx() {
    }

    public final void setVersion(int i) {
        this.zzidz = 0;
    }

    public static zza zzbbg() {
        return zziec.zzbii();
    }

    public static zzedx zzc(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzedx) zzelb.zza(zziec, zzejrVar, zzekoVar);
    }

    public final void zzc(zzeeb zzeebVar) {
        zzeebVar.getClass();
        this.zzieb = zzeebVar;
    }

    public final void zzs(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zziea = zzejrVar;
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzedw.zzel[i - 1]) {
            case 1:
                return new zzedx();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziec, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzidz", "zziea", "zzieb"});
            case 4:
                return zziec;
            case 5:
                zzemx<zzedx> zzemxVar = zzek;
                zzemx<zzedx> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzedx.class) {
                        try {
                            zzemx<zzedx> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziec);
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

    public final zzeeb zzbbf() {
        zzeeb zzeebVar = this.zzieb;
        zzeeb zzeebVar2 = zzeebVar;
        if (zzeebVar == null) {
            zzeebVar2 = zzeeb.zzbbk();
        }
        return zzeebVar2;
    }
}
