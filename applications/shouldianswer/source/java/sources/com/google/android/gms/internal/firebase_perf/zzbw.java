package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbv;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzht;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbw.class */
public final class zzbw extends zzeh<zzbw, zza> implements zzft {
    private static volatile zzgb<zzbw> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbw zzjp;
    private int zzhp;
    private String zzhr = "";
    private String zzjm = "";
    private String zzjn = "";
    private zzht.zza zzjo;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbw$zza.class */
    public static final class zza extends zzeh.zza<zzbw, zza> implements zzft {
        private zza() {
            super(zzbw.zzjp);
        }

        /* synthetic */ zza(zzbv zzbvVar) {
            this();
        }
    }

    static {
        zzbw zzbwVar = new zzbw();
        zzjp = zzbwVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbw.class, zzbwVar);
    }

    private zzbw() {
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzeh$zzc, com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbw>] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbw> zzgbVar;
        switch (zzbv.zzhw[i - 1]) {
            case 1:
                return new zzbw();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzjp, "\u0001\u0004��\u0001\u0002\u0005\u0004������\u0002\b��\u0003\b\u0001\u0004\b\u0002\u0005\t\u0003", new Object[]{"zzhp", "zzhr", "zzjm", "zzjn", "zzjo"});
            case 4:
                return zzjp;
            case 5:
                zzgb<zzbw> zzgbVar2 = zzhu;
                zzgb<zzbw> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbw.class) {
                        try {
                            zzgb<zzbw> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzjp);
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
