package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegt.class */
public final class zzegt extends zzelb<zzegt, zza> implements zzemq {
    private static volatile zzemx<zzegt> zzek;
    private static final zzegt zziif;
    private int zzidz;
    private zzegw zziie;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegt$zza.class */
    public static final class zza extends zzelb.zzb<zzegt, zza> implements zzemq {
        private zza() {
            super(zzegt.zziif);
        }

        /* synthetic */ zza(zzegu zzeguVar) {
            this();
        }

        public final zza zzb(zzegw zzegwVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegt) this.zziqp).zza(zzegwVar);
            return this;
        }

        public final zza zzfq(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegt) this.zziqp).setVersion(0);
            return this;
        }
    }

    static {
        zzegt zzegtVar = new zzegt();
        zziif = zzegtVar;
        zzelb.zza(zzegt.class, zzegtVar);
    }

    private zzegt() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zza(zzegw zzegwVar) {
        zzegwVar.getClass();
        this.zziie = zzegwVar;
    }

    public static zza zzbfd() {
        return zziif.zzbii();
    }

    public static zzegt zzx(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzegt) zzelb.zza(zziif, zzejrVar, zzekoVar);
    }

    public final int getVersion() {
        return this.zzidz;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegu.zzel[i - 1]) {
            case 1:
                return new zzegt();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziif, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzidz", "zziie"});
            case 4:
                return zziif;
            case 5:
                zzemx<zzegt> zzemxVar = zzek;
                zzemx<zzegt> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegt.class) {
                        try {
                            zzemx<zzegt> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziif);
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

    public final zzegw zzbfc() {
        zzegw zzegwVar = this.zziie;
        zzegw zzegwVar2 = zzegwVar;
        if (zzegwVar == null) {
            zzegwVar2 = zzegw.zzbfh();
        }
        return zzegwVar2;
    }
}
