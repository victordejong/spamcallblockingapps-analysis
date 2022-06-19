package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzcw;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcu.class */
public final class zzcu extends zzeh<zzcu, zza> implements zzft {
    private static volatile zzgb<zzcu> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzcu zzma;
    private int zzhp;
    private String zzhr = "";
    private String zzlw = "";
    private int zzlx;
    private int zzly;
    private int zzlz;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcu$zza.class */
    public static final class zza extends zzeh.zza<zzcu, zza> implements zzft {
        private zza() {
            super(zzcu.zzma);
        }

        /* synthetic */ zza(zzcw zzcwVar) {
            this();
        }
    }

    static {
        zzcu zzcuVar = new zzcu();
        zzma = zzcuVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzcu.class, zzcuVar);
    }

    private zzcu() {
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzcu>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzcu> zzgbVar;
        switch (zzcw.zzhw[i - 1]) {
            case 1:
                return new zzcu();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzma, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\b��\u0002\b\u0001\u0003\f\u0002\u0004\f\u0003\u0005\f\u0004", new Object[]{"zzhp", "zzhr", "zzlw", "zzlx", zzck.zzcr(), "zzly", zzct.zzcr(), "zzlz", zzbo.zzcr()});
            case 4:
                return zzma;
            case 5:
                zzgb<zzcu> zzgbVar2 = zzhu;
                zzgb<zzcu> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzcu.class) {
                        try {
                            zzgb<zzcu> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzma);
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
