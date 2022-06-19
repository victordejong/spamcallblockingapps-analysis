package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbc;
import com.google.android.gms.internal.firebase-perf.zzbe;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbc.class */
public final class zzbc extends zzeh<zzbc, zza> implements zzft {
    private static final com.google.android.gms.internal.firebase-perf.zzbc zzht;
    private static volatile zzgb<zzbc> zzhu;
    private int zzhp;
    private String zzhq = "";
    private String zzhr = "";
    private String zzhs = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbc$zza.class */
    public static final class zza extends zzeh.zza<zzbc, zza> implements zzft {
        private zza() {
            super(zzbc.zzht);
        }

        /* synthetic */ zza(zzbe zzbeVar) {
            this();
        }

        public final zzbc.zza zzo(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbc) this.zzqa).zzl(str);
            return this;
        }

        public final zzbc.zza zzp(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbc) this.zzqa).zzm(str);
            return this;
        }

        public final zzbc.zza zzq(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbc) this.zzqa).zzn(str);
            return this;
        }
    }

    static {
        zzbc zzbcVar = new zzbc();
        zzht = zzbcVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbc.class, zzbcVar);
    }

    private zzbc() {
    }

    public static zzbc.zza zzcc() {
        return zzht.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzbc zzcd() {
        return zzht;
    }

    public final void zzl(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzhq = str;
    }

    public final void zzm(String str) {
        str.getClass();
        this.zzhp |= 2;
        this.zzhr = str;
    }

    public final void zzn(String str) {
        str.getClass();
        this.zzhp |= 4;
        this.zzhs = str;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbc>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbc> zzgbVar;
        switch (zzbe.zzhw[i - 1]) {
            case 1:
                return new zzbc();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzht, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\b\u0001\u0003\b\u0002", new Object[]{"zzhp", "zzhq", "zzhr", "zzhs"});
            case 4:
                return zzht;
            case 5:
                zzgb<zzbc> zzgbVar2 = zzhu;
                zzgb<zzbc> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbc.class) {
                        try {
                            zzgb<zzbc> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzht);
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

    public final boolean zzca() {
        return (this.zzhp & 1) != 0;
    }

    public final boolean zzcb() {
        return (this.zzhp & 2) != 0;
    }
}
