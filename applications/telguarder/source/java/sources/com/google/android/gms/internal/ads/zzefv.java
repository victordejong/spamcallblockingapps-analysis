package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefv.class */
public final class zzefv extends zzelb<zzefv, zza> implements zzemq {
    private static volatile zzemx<zzefv> zzek;
    private static final zzefv zzigo;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzega zzign;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefv$zza.class */
    public static final class zza extends zzelb.zzb<zzefv, zza> implements zzemq {
        private zza() {
            super(zzefv.zzigo);
        }

        /* synthetic */ zza(zzefx zzefxVar) {
            this();
        }

        public final zza zzae(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).zzs(zzejrVar);
            return this;
        }

        public final zza zzd(zzega zzegaVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).zzc(zzegaVar);
            return this;
        }

        public final zza zzfi(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefv) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzefv zzefvVar = new zzefv();
        zzigo = zzefvVar;
        zzelb.zza(zzefv.class, zzefvVar);
    }

    private zzefv() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbdp() {
        return zzigo.zzbii();
    }

    public static zzefv zzbdq() {
        return zzigo;
    }

    public final void zzc(zzega zzegaVar) {
        zzegaVar.getClass();
        this.zzign = zzegaVar;
    }

    public final void zzs(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zziea = zzejrVar;
    }

    public static zzefv zzt(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefv) zzelb.zza(zzigo, zzejrVar, zzekoVar);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefx.zzel[i - 1]) {
            case 1:
                return new zzefv();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzigo, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzign", "zziea"});
            case 4:
                return zzigo;
            case 5:
                zzemx<zzefv> zzemxVar = zzek;
                zzemx<zzefv> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefv.class) {
                        try {
                            zzemx<zzefv> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzigo);
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

    public final zzega zzbdo() {
        zzega zzegaVar = this.zzign;
        zzega zzegaVar2 = zzegaVar;
        if (zzegaVar == null) {
            zzegaVar2 = zzega.zzbdv();
        }
        return zzegaVar2;
    }
}
