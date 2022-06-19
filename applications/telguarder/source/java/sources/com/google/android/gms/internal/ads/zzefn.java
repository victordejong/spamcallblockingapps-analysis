package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefn.class */
public final class zzefn extends zzelb<zzefn, zza> implements zzemq {
    private static volatile zzemx<zzefn> zzek;
    private static final zzefn zzifr;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzefo zzifq;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefn$zza.class */
    public static final class zza extends zzelb.zzb<zzefn, zza> implements zzemq {
        private zza() {
            super(zzefn.zzifr);
        }

        /* synthetic */ zza(zzefm zzefmVar) {
            this();
        }

        public final zza zzab(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).zzs(zzejrVar);
            return this;
        }

        public final zza zzb(zzefo zzefoVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).zza(zzefoVar);
            return this;
        }

        public final zza zzfe(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefn) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzefn zzefnVar = new zzefn();
        zzifr = zzefnVar;
        zzelb.zza(zzefn.class, zzefnVar);
    }

    private zzefn() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zza(zzefo zzefoVar) {
        zzefoVar.getClass();
        this.zzifq = zzefoVar;
    }

    public static zza zzbdc() {
        return zzifr.zzbii();
    }

    public static zzefn zzr(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefn) zzelb.zza(zzifr, zzejrVar, zzekoVar);
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
        switch (zzefm.zzel[i - 1]) {
            case 1:
                return new zzefn();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzifq", "zziea"});
            case 4:
                return zzifr;
            case 5:
                zzemx<zzefn> zzemxVar = zzek;
                zzemx<zzefn> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefn.class) {
                        try {
                            zzemx<zzefn> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifr);
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

    public final zzefo zzbdb() {
        zzefo zzefoVar = this.zzifq;
        zzefo zzefoVar2 = zzefoVar;
        if (zzefoVar == null) {
            zzefoVar2 = zzefo.zzbdh();
        }
        return zzefoVar2;
    }
}
