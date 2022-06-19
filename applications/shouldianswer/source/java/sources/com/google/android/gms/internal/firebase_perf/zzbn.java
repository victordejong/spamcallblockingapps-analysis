package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbm;
import com.google.android.gms.internal.firebase-perf.zzbn;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbn.class */
public final class zzbn extends zzeh<zzbn, zza> implements zzft {
    private static volatile zzgb<zzbn> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbn zzis;
    private int zzhp;
    private long zzhx;
    private long zziq;
    private long zzir;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbn$zza.class */
    public static final class zza extends zzeh.zza<zzbn, zza> implements zzft {
        private zza() {
            super(zzbn.zzis);
        }

        /* synthetic */ zza(zzbm zzbmVar) {
            this();
        }

        public final zzbn.zza zzs(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbn) this.zzqa).zzo(j);
            return this;
        }

        public final zzbn.zza zzt(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbn) this.zzqa).zzq(j);
            return this;
        }

        public final zzbn.zza zzu(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbn) this.zzqa).zzr(j);
            return this;
        }
    }

    static {
        zzbn zzbnVar = new zzbn();
        zzis = zzbnVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbn.class, zzbnVar);
    }

    private zzbn() {
    }

    public static zzbn.zza zzcs() {
        return zzis.zzgo();
    }

    public final void zzo(long j) {
        this.zzhp |= 1;
        this.zzhx = j;
    }

    public final void zzq(long j) {
        this.zzhp |= 2;
        this.zziq = j;
    }

    public final void zzr(long j) {
        this.zzhp |= 4;
        this.zzir = j;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzeh$zzc, com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbn>] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbn> zzgbVar;
        switch (zzbm.zzhw[i - 1]) {
            case 1:
                return new zzbn();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzis, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0002��\u0002\u0002\u0001\u0003\u0002\u0002", new Object[]{"zzhp", "zzhx", "zziq", "zzir"});
            case 4:
                return zzis;
            case 5:
                zzgb<zzbn> zzgbVar2 = zzhu;
                zzgb<zzbn> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbn.class) {
                        try {
                            zzgb<zzbn> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzis);
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
