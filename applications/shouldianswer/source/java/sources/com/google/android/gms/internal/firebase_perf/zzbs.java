package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbr;
import com.google.android.gms.internal.firebase-perf.zzbs;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbs.class */
public final class zzbs extends zzeh<zzbs, zza> implements zzft {
    private static volatile zzgb<zzbs> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbs zzjf;
    private int zzhp;
    private String zziz = "";
    private int zzja;
    private int zzjb;
    private int zzjc;
    private int zzjd;
    private int zzje;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbs$zza.class */
    public static final class zza extends zzeh.zza<zzbs, zza> implements zzft {
        private zza() {
            super(zzbs.zzjf);
        }

        /* synthetic */ zza(zzbr zzbrVar) {
            this();
        }

        public final zzbs.zza zzi(int i) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbs) this.zzqa).zzf(i);
            return this;
        }

        public final zzbs.zza zzj(int i) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbs) this.zzqa).zzg(i);
            return this;
        }

        public final zzbs.zza zzk(int i) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbs) this.zzqa).zzh(i);
            return this;
        }

        public final zzbs.zza zzx(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbs) this.zzqa).zzv(str);
            return this;
        }
    }

    static {
        zzbs zzbsVar = new zzbs();
        zzjf = zzbsVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbs.class, zzbsVar);
    }

    private zzbs() {
    }

    public static zzbs.zza zzcv() {
        return zzjf.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzbs zzcw() {
        return zzjf;
    }

    public final void zzf(int i) {
        this.zzhp |= 8;
        this.zzjc = i;
    }

    public final void zzg(int i) {
        this.zzhp |= 16;
        this.zzjd = i;
    }

    public final void zzh(int i) {
        this.zzhp |= 32;
        this.zzje = i;
    }

    public final void zzv(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zziz = str;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbs>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbs> zzgbVar;
        switch (zzbr.zzhw[i - 1]) {
            case 1:
                return new zzbs();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzjf, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\b��\u0002\u0004\u0001\u0003\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0005\u0006\u0004\u0002", new Object[]{"zzhp", "zziz", "zzja", "zzjc", "zzjd", "zzje", "zzjb"});
            case 4:
                return zzjf;
            case 5:
                zzgb<zzbs> zzgbVar2 = zzhu;
                zzgb<zzbs> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbs.class) {
                        try {
                            zzgb<zzbs> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzjf);
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

    public final boolean zzcu() {
        return (this.zzhp & 16) != 0;
    }
}
