package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeen.class */
public final class zzeen extends zzelb<zzeen, zza> implements zzemq {
    private static volatile zzemx<zzeen> zzek;
    private static final zzeen zziet;
    private int zzidz;
    private zzejr zziea = zzejr.zzilz;
    private zzeer zzies;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeen$zza.class */
    public static final class zza extends zzelb.zzb<zzeen, zza> implements zzemq {
        private zza() {
            super(zzeen.zziet);
        }

        /* synthetic */ zza(zzeem zzeemVar) {
            this();
        }

        public final zza zzb(zzeer zzeerVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).zza(zzeerVar);
            return this;
        }

        public final zza zzez(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).setVersion(0);
            return this;
        }

        public final zza zzv(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzeen) this.zziqp).zzs(zzejrVar);
            return this;
        }
    }

    static {
        zzeen zzeenVar = new zzeen();
        zziet = zzeenVar;
        zzelb.zza(zzeen.class, zzeenVar);
    }

    private zzeen() {
    }

    public final void setVersion(int i) {
        this.zzidz = i;
    }

    public final void zza(zzeer zzeerVar) {
        zzeerVar.getClass();
        this.zzies = zzeerVar;
    }

    public static zza zzbcd() {
        return zziet.zzbii();
    }

    public static zzeen zzi(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzeen) zzelb.zza(zziet, zzejrVar, zzekoVar);
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
        switch (zzeem.zzel[i - 1]) {
            case 1:
                return new zzeen();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziet, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzidz", "zzies", "zziea"});
            case 4:
                return zziet;
            case 5:
                zzemx<zzeen> zzemxVar = zzek;
                zzemx<zzeen> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzeen.class) {
                        try {
                            zzemx<zzeen> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziet);
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

    public final zzeer zzbcc() {
        zzeer zzeerVar = this.zzies;
        zzeer zzeerVar2 = zzeerVar;
        if (zzeerVar == null) {
            zzeerVar2 = zzeer.zzbcg();
        }
        return zzeerVar2;
    }
}
