package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtt.class */
public final class zzdtt extends zzelb<zzdtt, zzb> implements zzemq {
    private static volatile zzemx<zzdtt> zzek;
    private static final zzelj<Integer, zza> zzhth = new zzdtw();
    private static final zzdtt zzhtl;
    private int zzdv;
    private zzelh zzhtg = zzbil();
    private String zzhti = "";
    private String zzhtj = "";
    private String zzhtk = "";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtt$zza.class */
    public enum zza implements zzelg {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        
        private static final zzelf<zza> zzes = new zzdtx();
        private final int value;

        zza(int i) {
            this.value = i;
        }

        public static zza zzeh(int i) {
            if (i != 1) {
                if (i == 2) {
                    return BLOCKED_REASON_BACKGROUND;
                }
                return null;
            }
            return BLOCKED_REASON_UNKNOWN;
        }

        public static zzeli zzw() {
            return zzdty.zzeu;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtt$zzb.class */
    public static final class zzb extends zzelb.zzb<zzdtt, zzb> implements zzemq {
        private zzb() {
            super(zzdtt.zzhtl);
        }

        /* synthetic */ zzb(zzdtw zzdtwVar) {
            this();
        }

        public final zzb zzb(zza zzaVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdtt) this.zziqp).zza(zzaVar);
            return this;
        }

        public final zzb zzhh(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzdtt) this.zziqp).zzhg(str);
            return this;
        }
    }

    static {
        zzdtt zzdttVar = new zzdtt();
        zzhtl = zzdttVar;
        zzelb.zza(zzdtt.class, zzdttVar);
    }

    private zzdtt() {
    }

    public final void zza(zza zzaVar) {
        zzaVar.getClass();
        zzelh zzelhVar = this.zzhtg;
        if (!zzelhVar.zzbge()) {
            this.zzhtg = zzelb.zza(zzelhVar);
        }
        this.zzhtg.zzhh(zzaVar.zzv());
    }

    public static zzb zzaya() {
        return zzhtl.zzbii();
    }

    public final void zzhg(String str) {
        str.getClass();
        this.zzdv |= 1;
        this.zzhti = str;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzdtv.zzel[i - 1]) {
            case 1:
                return new zzdtt();
            case 2:
                return new zzb(null);
            case 3:
                return zza(zzhtl, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdv", "zzhtg", zza.zzw(), "zzhti", "zzhtj", "zzhtk"});
            case 4:
                return zzhtl;
            case 5:
                zzemx<zzdtt> zzemxVar = zzek;
                zzemx<zzdtt> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzdtt.class) {
                        try {
                            zzemx<zzdtt> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzhtl);
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
