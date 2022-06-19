package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzen;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzhs;
import com.google.android.gms.internal.firebase-perf.zzht;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzht.class */
public final class zzht {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzht$zza.class */
    public static final class zza extends zzeh<zza, C3157zza> implements zzft {
        private static volatile zzgb<zza> zzhu;
        private static final zzht.zza zzwn;
        private int zzhp;
        private int zzwl = -1;
        private int zzwm;

        /* renamed from: com.google.android.gms.internal.firebase_perf.zzht$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzht$zza$zza.class */
        public static final class C3157zza extends zzeh.zza<zza, C3157zza> implements zzft {
            private C3157zza() {
                super(zza.zzwn);
            }

            /* synthetic */ C3157zza(zzhs zzhsVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzht$zza$zzb.class */
        public static final class zzb extends Enum<zzb> implements zzel {
            private final int value;
            private static final zzht.zza.zzb zzwo = new zzb("UNKNOWN_MOBILE_SUBTYPE", 0, 0);
            private static final zzht.zza.zzb zzwp = new zzb("GPRS", 1, 1);
            private static final zzht.zza.zzb zzwq = new zzb("EDGE", 2, 2);
            private static final zzht.zza.zzb zzwr = new zzb("UMTS", 3, 3);
            private static final zzht.zza.zzb zzws = new zzb("CDMA", 4, 4);
            private static final zzht.zza.zzb zzwt = new zzb("EVDO_0", 5, 5);
            private static final zzht.zza.zzb zzwu = new zzb("EVDO_A", 6, 6);
            private static final zzht.zza.zzb zzwv = new zzb("RTT", 7, 7);
            private static final zzht.zza.zzb zzww = new zzb("HSDPA", 8, 8);
            private static final zzht.zza.zzb zzwx = new zzb("HSUPA", 9, 9);
            private static final zzht.zza.zzb zzwy = new zzb("HSPA", 10, 10);
            private static final zzht.zza.zzb zzwz = new zzb("IDEN", 11, 11);
            private static final zzht.zza.zzb zzxa = new zzb("EVDO_B", 12, 12);
            private static final zzht.zza.zzb zzxb = new zzb("LTE", 13, 13);
            private static final zzht.zza.zzb zzxc = new zzb("EHRPD", 14, 14);
            private static final zzht.zza.zzb zzxd = new zzb("HSPAP", 15, 15);
            private static final zzht.zza.zzb zzxe = new zzb("GSM", 16, 16);
            private static final zzht.zza.zzb zzxf = new zzb("TD_SCDMA", 17, 17);
            private static final zzht.zza.zzb zzxg = new zzb("IWLAN", 18, 18);
            private static final zzht.zza.zzb zzxh = new zzb("LTE_CA", 19, 19);
            private static final zzht.zza.zzb zzxi = new zzb("COMBINED", 20, 100);
            private static final /* synthetic */ zzht.zza.zzb[] zzxj = {zzwo, zzwp, zzwq, zzwr, zzws, zzwt, zzwu, zzwv, zzww, zzwx, zzwy, zzwz, zzxa, zzxb, zzxc, zzxd, zzxe, zzxf, zzxg, zzxh, zzxi};
            private static final zzek<zzb> zzim = new zzhu();

            private zzb(String str, int i, int i2) {
                super(str, i);
                this.value = i2;
            }

            public static zzht.zza.zzb[] values() {
                return (zzb[]) zzxj.clone();
            }

            public static zzen zzcr() {
                return zzhv.zzip;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.firebase_perf.zzel
            public final int zzcq() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzht$zza$zzc.class */
        public static final class zzc extends Enum<zzc> implements zzel {
            private final int value;
            private static final zzht.zza.zzc zzxk = new zzc("NONE", 0, -1);
            private static final zzht.zza.zzc zzxl = new zzc("MOBILE", 1, 0);
            private static final zzht.zza.zzc zzxm = new zzc("WIFI", 2, 1);
            private static final zzht.zza.zzc zzxn = new zzc("MOBILE_MMS", 3, 2);
            private static final zzht.zza.zzc zzxo = new zzc("MOBILE_SUPL", 4, 3);
            private static final zzht.zza.zzc zzxp = new zzc("MOBILE_DUN", 5, 4);
            private static final zzht.zza.zzc zzxq = new zzc("MOBILE_HIPRI", 6, 5);
            private static final zzht.zza.zzc zzxr = new zzc("WIMAX", 7, 6);
            private static final zzht.zza.zzc zzxs = new zzc("BLUETOOTH", 8, 7);
            private static final zzht.zza.zzc zzxt = new zzc("DUMMY", 9, 8);
            private static final zzht.zza.zzc zzxu = new zzc("ETHERNET", 10, 9);
            private static final zzht.zza.zzc zzxv = new zzc("MOBILE_FOTA", 11, 10);
            private static final zzht.zza.zzc zzxw = new zzc("MOBILE_IMS", 12, 11);
            private static final zzht.zza.zzc zzxx = new zzc("MOBILE_CBS", 13, 12);
            private static final zzht.zza.zzc zzxy = new zzc("WIFI_P2P", 14, 13);
            private static final zzht.zza.zzc zzxz = new zzc("MOBILE_IA", 15, 14);
            private static final zzht.zza.zzc zzya = new zzc("MOBILE_EMERGENCY", 16, 15);
            private static final zzht.zza.zzc zzyb = new zzc("PROXY", 17, 16);
            private static final zzht.zza.zzc zzyc = new zzc("VPN", 18, 17);
            private static final /* synthetic */ zzht.zza.zzc[] zzyd = {zzxk, zzxl, zzxm, zzxn, zzxo, zzxp, zzxq, zzxr, zzxs, zzxt, zzxu, zzxv, zzxw, zzxx, zzxy, zzxz, zzya, zzyb, zzyc};
            private static final zzek<zzc> zzim = new zzhx();

            private zzc(String str, int i, int i2) {
                super(str, i);
                this.value = i2;
            }

            public static zzht.zza.zzc[] values() {
                return (zzc[]) zzyd.clone();
            }

            public static zzen zzcr() {
                return zzhw.zzip;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.firebase_perf.zzel
            public final int zzcq() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzwn = zzaVar;
            zzeh.zza(zzht.zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzht$zza>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
        @Override // com.google.android.gms.internal.firebase_perf.zzeh
        public final Object zza(int i, Object obj, Object obj2) {
            zzgb<zza> zzgbVar;
            switch (zzhs.zzhw[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3157zza(null);
                case 3:
                    return zza((zzfr) zzwn, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\f\u0001", new Object[]{"zzhp", "zzwl", zzc.zzcr(), "zzwm", zzb.zzcr()});
                case 4:
                    return zzwn;
                case 5:
                    zzgb<zza> zzgbVar2 = zzhu;
                    zzgb<zza> zzgbVar3 = zzgbVar2;
                    if (zzgbVar2 == null) {
                        synchronized (zzht.zza.class) {
                            try {
                                zzgb<zza> zzgbVar4 = zzhu;
                                zzgbVar = zzgbVar4;
                                if (zzgbVar4 == null) {
                                    ?? zzcVar = new zzeh.zzc(zzwn);
                                    zzhu = zzcVar;
                                    zzgbVar = zzcVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgbVar3 = zzgbVar;
                    }
                    return zzgbVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
