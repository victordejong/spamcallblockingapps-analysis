package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzees.class */
public final class zzees extends zzelb<zzees, zza> implements zzemq {
    private static volatile zzemx<zzees> zzek;
    private static final zzees zziew;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzees$zza.class */
    public static final class zza extends zzelb.zzb<zzees, zza> implements zzemq {
        private zza() {
            super(zzees.zziew);
        }

        /* synthetic */ zza(zzeet zzeetVar) {
            this();
        }

        public final zza zzfa(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzees) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzw(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzees) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzees zzeesVar = new zzees();
        zziew = zzeesVar;
        zzelb.zza(zzees.class, zzeesVar);
    }

    private zzees() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public static zza zzbci() {
        return zziew.zzbii();
    }

    public static zzees zzk(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzees) zzelb.zza(zziew, zzejrVar, zzekoVar);
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
        switch (zzeet.zzel[i - 1]) {
            case 1:
                return new zzees();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziew, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzidz", "zziea"});
            case 4:
                return zziew;
            case 5:
                zzemx<zzees> zzemxVar = zzek;
                zzemx<zzees> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzees.class) {
                        try {
                            zzemx<zzees> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziew);
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
