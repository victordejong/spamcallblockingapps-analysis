package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefa.class */
public final class zzefa extends zzelb<zzefa, zza> implements zzemq {
    private static volatile zzemx<zzefa> zzek;
    private static final zzefa zzifa;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefa$zza.class */
    public static final class zza extends zzelb.zzb<zzefa, zza> implements zzemq {
        private zza() {
            super(zzefa.zzifa);
        }

        /* synthetic */ zza(zzefb zzefbVar) {
            this();
        }

        public final zza zzfc(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefa) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzy(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzefa) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzefa zzefaVar = new zzefa();
        zzifa = zzefaVar;
        zzelb.zza(zzefa.class, zzefaVar);
    }

    private zzefa() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbco() {
        return zzifa.zzbii();
    }

    public static zzefa zzo(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefa) zzelb.zza(zzifa, zzejrVar, zzekoVar);
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
        switch (zzefb.zzel[i - 1]) {
            case 1:
                return new zzefa();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifa, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zzifa;
            case 5:
                zzemx<zzefa> zzemxVar = zzek;
                zzemx<zzefa> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefa.class) {
                        try {
                            zzemx<zzefa> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifa);
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
