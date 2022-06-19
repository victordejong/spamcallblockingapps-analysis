package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeg.class */
public final class zzeeg extends zzelb<zzeeg, zza> implements zzemq {
    private static volatile zzemx<zzeeg> zzek;
    private static final zzeeg zzieo;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeek zzien;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeeg$zza.class */
    public static final class zza extends zzelb.zzb<zzeeg, zza> implements zzemq {
        private zza() {
            super(zzeeg.zzieo);
        }

        /* synthetic */ zza(zzeeh zzeehVar) {
            this();
        }

        public final zza zzc(zzeek zzeekVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).zzb(zzeekVar);
            return this;
        }

        public final zza zzey(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzu(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeeg) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzeeg zzeegVar = new zzeeg();
        zzieo = zzeegVar;
        zzelb.zza(zzeeg.class, zzeegVar);
    }

    private zzeeg() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zzb(zzeek zzeekVar) {
        zzeekVar.getClass();
        this.zzien = zzeekVar;
    }

    public static zza zzbbu() {
        return zzieo.zzbii();
    }

    public static zzeeg zzbbv() {
        return zzieo;
    }

    public static zzeeg zzg(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeeg) zzelb.zza(zzieo, zzejrVar, zzekoVar);
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
        switch (zzeeh.zzel[i - 1]) {
            case 1:
                return new zzeeg();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzieo, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzien", "zziea"});
            case 4:
                return zzieo;
            case 5:
                zzemx<zzeeg> zzemxVar = zzek;
                zzemx<zzeeg> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeeg.class) {
                        try {
                            zzemx<zzeeg> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzieo);
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

    public final zzeek zzbbt() {
        zzeek zzeekVar = this.zzien;
        zzeek zzeekVar2 = zzeekVar;
        if (zzeekVar == null) {
            zzeekVar2 = zzeek.zzbca();
        }
        return zzeekVar2;
    }
}
