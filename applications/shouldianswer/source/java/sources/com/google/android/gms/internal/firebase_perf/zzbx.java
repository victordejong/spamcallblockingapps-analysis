package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzby;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbx.class */
public final class zzbx extends zzeh<zzbx, zza> implements zzft {
    private static volatile zzgb<zzbx> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbx zzjs;
    private int zzhp;
    private long zzhx;
    private int zzjq;
    private int zzjr;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbx$zza.class */
    public static final class zza extends zzeh.zza<zzbx, zza> implements zzft {
        private zza() {
            super(zzbx.zzjs);
        }

        /* synthetic */ zza(zzby zzbyVar) {
            this();
        }
    }

    static {
        zzbx zzbxVar = new zzbx();
        zzjs = zzbxVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbx.class, zzbxVar);
    }

    private zzbx() {
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbx>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbx> zzgbVar;
        switch (zzby.zzhw[i - 1]) {
            case 1:
                return new zzbx();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzjs, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0002��\u0002\u0004\u0001\u0003\u0004\u0002", new Object[]{"zzhp", "zzhx", "zzjq", "zzjr"});
            case 4:
                return zzjs;
            case 5:
                zzgb<zzbx> zzgbVar2 = zzhu;
                zzgb<zzbx> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbx.class) {
                        try {
                            zzgb<zzbx> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzjs);
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
