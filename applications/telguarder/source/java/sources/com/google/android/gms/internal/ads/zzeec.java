package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeec.class */
public final class zzeec extends zzelb<zzeec, zza> implements zzemq {
    private static volatile zzemx<zzeec> zzek;
    private static final zzeec zziej;
    private int zzidz;
    private zzeeg zzieh;
    private zzefv zziei;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeec$zza.class */
    public static final class zza extends zzelb.zzb<zzeec, zza> implements zzemq {
        private zza() {
            super(zzeec.zziej);
        }

        /* synthetic */ zza(zzeed zzeedVar) {
            this();
        }

        public final zza zzc(zzeeg zzeegVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).zzb(zzeegVar);
            return this;
        }

        public final zza zzc(zzefv zzefvVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).zzb(zzefvVar);
            return this;
        }

        public final zza zzex(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeec) this.zziqp).setVersion(i);
            return this;
        }
    }

    static {
        zzeec zzeecVar = new zzeec();
        zziej = zzeecVar;
        zzelb.zza(zzeec.class, zzeecVar);
    }

    private zzeec() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zzb(zzeeg zzeegVar) {
        zzeegVar.getClass();
        this.zzieh = zzeegVar;
    }

    public final void zzb(zzefv zzefvVar) {
        zzefvVar.getClass();
        this.zziei = zzefvVar;
    }

    public static zza zzbbo() {
        return zziej.zzbii();
    }

    public static zzeec zze(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeec) zzelb.zza(zziej, zzejrVar, zzekoVar);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeed.zzel[i - 1]) {
            case 1:
                return new zzeec();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziej, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzidz", "zzieh", "zziei"});
            case 4:
                return zziej;
            case 5:
                zzemx<zzeec> zzemxVar = zzek;
                zzemx<zzeec> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeec.class) {
                        try {
                            zzemx<zzeec> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziej);
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

    public final zzeeg zzbbm() {
        zzeeg zzeegVar = this.zzieh;
        zzeeg zzeegVar2 = zzeegVar;
        if (zzeegVar == null) {
            zzeegVar2 = zzeeg.zzbbv();
        }
        return zzeegVar2;
    }

    public final zzefv zzbbn() {
        zzefv zzefvVar = this.zziei;
        zzefv zzefvVar2 = zzefvVar;
        if (zzefvVar == null) {
            zzefvVar2 = zzefv.zzbdq();
        }
        return zzefvVar2;
    }
}
