package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeew.class */
public final class zzeew extends zzelb<zzeew, zza> implements zzemq {
    private static volatile zzemx<zzeew> zzek;
    private static final zzeew zziey;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeew$zza.class */
    public static final class zza extends zzelb.zzb<zzeew, zza> implements zzemq {
        private zza() {
            super(zzeew.zziey);
        }

        /* synthetic */ zza(zzeex zzeexVar) {
            this();
        }

        public final zza zzfb(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeew) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzx(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeew) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzeew zzeewVar = new zzeew();
        zziey = zzeewVar;
        zzelb.zza(zzeew.class, zzeewVar);
    }

    private zzeew() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbcl() {
        return zziey.zzbii();
    }

    public static zzeew zzm(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeew) zzelb.zza(zziey, zzejrVar, zzekoVar);
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
        switch (zzeex.zzel[i - 1]) {
            case 1:
                return new zzeew();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziey, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziey;
            case 5:
                zzemx<zzeew> zzemxVar = zzek;
                zzemx<zzeew> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeew.class) {
                        try {
                            zzemx<zzeew> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziey);
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
