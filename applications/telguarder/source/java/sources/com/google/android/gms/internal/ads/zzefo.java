package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefo.class */
public final class zzefo extends zzelb<zzefo, zza> implements zzemq {
    private static volatile zzemx<zzefo> zzek;
    private static final zzefo zzifu;
    private int zzidz;
    private zzefk zzifk;
    private zzejr zzifs = zzejr.zzilz;
    private zzejr zzift = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefo$zza.class */
    public static final class zza extends zzelb.zzb<zzefo, zza> implements zzemq {
        private zza() {
            super(zzefo.zzifu);
        }

        /* synthetic */ zza(zzefp zzefpVar) {
            this();
        }

        public final zza zzac(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzz(zzejrVar);
            return this;
        }

        public final zza zzad(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzaa(zzejrVar);
            return this;
        }

        public final zza zzc(zzefk zzefkVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).zzb(zzefkVar);
            return this;
        }

        public final zza zzff(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefo) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzefo zzefoVar = new zzefo();
        zzifu = zzefoVar;
        zzelb.zza(zzefo.class, zzefoVar);
    }

    private zzefo() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zzaa(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zzift = zzejrVar;
    }

    public final void zzb(zzefk zzefkVar) {
        zzefkVar.getClass();
        this.zzifk = zzefkVar;
    }

    public static zza zzbdg() {
        return zzifu.zzbii();
    }

    public static zzefo zzbdh() {
        return zzifu;
    }

    public static zzefo zzs(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefo) zzelb.zza(zzifu, zzejrVar, zzekoVar);
    }

    public final void zzz(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zzifs = zzejrVar;
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefp.zzel[i - 1]) {
            case 1:
                return new zzefo();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifu, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzidz", "zzifk", "zzifs", "zzift"});
            case 4:
                return zzifu;
            case 5:
                zzemx<zzefo> zzemxVar = zzek;
                zzemx<zzefo> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefo.class) {
                        try {
                            zzemx<zzefo> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifu);
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

    public final zzefk zzbcu() {
        zzefk zzefkVar = this.zzifk;
        zzefk zzefkVar2 = zzefkVar;
        if (zzefkVar == null) {
            zzefkVar2 = zzefk.zzbcz();
        }
        return zzefkVar2;
    }

    public final zzejr zzbde() {
        return this.zzifs;
    }

    public final zzejr zzbdf() {
        return this.zzift;
    }
}
