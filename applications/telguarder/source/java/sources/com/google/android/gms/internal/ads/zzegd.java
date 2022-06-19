package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegd.class */
public final class zzegd extends zzelb<zzegd, zzb> implements zzemq {
    private static volatile zzemx<zzegd> zzek;
    private static final zzegd zzigv;
    private String zzigs = "";
    private zzejr zzigt = zzejr.zzilz;
    private int zzigu;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegd$zza.class */
    public enum zza implements zzelg {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        
        private static final zzelf<zza> zzes = new zzegf();
        private final int value;

        zza(int i) {
            this.value = i;
        }

        public static zza zzfj(int i) {
            if (i != 0) {
                if (i == 1) {
                    return SYMMETRIC;
                }
                if (i == 2) {
                    return ASYMMETRIC_PRIVATE;
                }
                if (i == 3) {
                    return ASYMMETRIC_PUBLIC;
                }
                if (i == 4) {
                    return REMOTE;
                }
                return null;
            }
            return UNKNOWN_KEYMATERIAL;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder(SimpleComparison.LESS_THAN_OPERATION);
            sb.append(getClass().getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzv());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.zzelg
        public final int zzv() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegd$zzb.class */
    public static final class zzb extends zzelb.zzb<zzegd, zzb> implements zzemq {
        private zzb() {
            super(zzegd.zzigv);
        }

        /* synthetic */ zzb(zzegc zzegcVar) {
            this();
        }

        public final zzb zzag(zzejr zzejrVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zzaf(zzejrVar);
            return this;
        }

        public final zzb zzb(zza zzaVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zza(zzaVar);
            return this;
        }

        public final zzb zzhu(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzegd) this.zziqp).zzht(str);
            return this;
        }
    }

    static {
        zzegd zzegdVar = new zzegd();
        zzigv = zzegdVar;
        zzelb.zza(zzegd.class, zzegdVar);
    }

    private zzegd() {
    }

    public final void zza(zza zzaVar) {
        this.zzigu = zzaVar.zzv();
    }

    public final void zzaf(zzejr zzejrVar) {
        zzejrVar.getClass();
        this.zzigt = zzejrVar;
    }

    public static zzb zzbea() {
        return zzigv.zzbii();
    }

    public static zzegd zzbeb() {
        return zzigv;
    }

    public final void zzht(String str) {
        str.getClass();
        this.zzigs = str;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegc.zzel[i - 1]) {
            case 1:
                return new zzegd();
            case 2:
                return new zzb(null);
            case 3:
                return zza(zzigv, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzigs", "zzigt", "zzigu"});
            case 4:
                return zzigv;
            case 5:
                zzemx<zzegd> zzemxVar = zzek;
                zzemx<zzegd> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegd.class) {
                        try {
                            zzemx<zzegd> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzigv);
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

    public final String zzbdx() {
        return this.zzigs;
    }

    public final zzejr zzbdy() {
        return this.zzigt;
    }

    public final zza zzbdz() {
        zza zzfj = zza.zzfj(this.zzigu);
        zza zzaVar = zzfj;
        if (zzfj == null) {
            zzaVar = zza.UNRECOGNIZED;
        }
        return zzaVar;
    }
}
