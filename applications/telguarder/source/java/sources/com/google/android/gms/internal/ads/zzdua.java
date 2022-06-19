package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdtt;
import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdua.class */
public final class zzdua extends zzelb<zzdua, zzb> implements zzemq {
    private static volatile zzemx<zzdua> zzek;
    private static final zzdua zzhts;
    private int zzdv;
    private int zzhtp;
    private zzdtt zzhtr;
    private String zzdw = "";
    private String zzhtq = "";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdua$zza.class */
    public enum zza implements zzelg {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        
        private static final zzelf<zza> zzes = new zzduc();
        private final int value;

        zza(int i) {
            this.value = i;
        }

        public static zza zzei(int i) {
            if (i != 0) {
                if (i == 1) {
                    return BLOCKED_IMPRESSION;
                }
                return null;
            }
            return EVENT_TYPE_UNKNOWN;
        }

        public static zzeli zzw() {
            return zzdub.zzeu;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzelg
        public final int zzv() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdua$zzb.class */
    public static final class zzb extends zzelb.zzb<zzdua, zzb> implements zzemq {
        private zzb() {
            super(zzdua.zzhts);
        }

        /* synthetic */ zzb(zzdtz zzdtzVar) {
            this();
        }

        public final zzb zza(zzdtt.zzb zzbVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zza((zzdtt) ((zzelb) zzbVar.zzbiw()));
            return this;
        }

        public final zzb zzb(zza zzaVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zza(zzaVar);
            return this;
        }

        public final zzb zzhi(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdua) this.zziqp).zzj(str);
            return this;
        }
    }

    static {
        zzdua zzduaVar = new zzdua();
        zzhts = zzduaVar;
        zzelb.zza(zzdua.class, zzduaVar);
    }

    private zzdua() {
    }

    public final void zza(zzdtt zzdttVar) {
        zzdttVar.getClass();
        this.zzhtr = zzdttVar;
        this.zzdv |= 8;
    }

    public final void zza(zza zzaVar) {
        this.zzhtp = zzaVar.zzv();
        this.zzdv |= 1;
    }

    public static zzb zzayc() {
        return zzhts.zzbii();
    }

    public final void zzj(String str) {
        str.getClass();
        this.zzdv |= 2;
        this.zzdw = str;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzdtz.zzel[i - 1]) {
            case 1:
                return new zzdua();
            case 2:
                return new zzb(null);
            case 3:
                return zza(zzhts, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzhtp", zza.zzw(), "zzdw", "zzhtq", "zzhtr"});
            case 4:
                return zzhts;
            case 5:
                zzemx<zzdua> zzemxVar = zzek;
                zzemx<zzdua> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzdua.class) {
                        try {
                            zzemx<zzdua> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzhts);
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
}
