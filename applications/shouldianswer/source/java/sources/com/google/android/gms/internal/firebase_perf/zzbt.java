package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbg;
import com.google.android.gms.internal.firebase-perf.zzbn;
import com.google.android.gms.internal.firebase-perf.zzbs;
import com.google.android.gms.internal.firebase-perf.zzbt;
import com.google.android.gms.internal.firebase-perf.zzbu;
import com.google.android.gms.internal.firebase-perf.zzbx;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbt.class */
public final class zzbt extends zzeh<zzbt, zza> implements zzft {
    private static volatile zzgb<zzbt> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbt zzjl;
    private int zzhp;
    private zzbs zzjh;
    private String zzjg = "";
    private zzeo<zzbn> zzji = zzgr();
    private zzeo<zzbg> zzjj = zzgr();
    private zzeo<zzbx> zzjk = zzgr();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbt$zza.class */
    public static final class zza extends zzeh.zza<zzbt, zza> implements zzft {
        private zza() {
            super(zzbt.zzjl);
        }

        /* synthetic */ zza(zzbu zzbuVar) {
            this();
        }

        public final zzbt.zza zzb(zzbg zzbgVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbt) this.zzqa).zza(zzbgVar);
            return this;
        }

        public final zzbt.zza zzb(zzbn zzbnVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbt) this.zzqa).zza(zzbnVar);
            return this;
        }

        public final zzbt.zza zzb(zzbs zzbsVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbt) this.zzqa).zza(zzbsVar);
            return this;
        }

        public final zzbt.zza zzy(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbt) this.zzqa).zzw(str);
            return this;
        }
    }

    static {
        zzbt zzbtVar = new zzbt();
        zzjl = zzbtVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbt.class, zzbtVar);
    }

    private zzbt() {
    }

    public final void zza(zzbg zzbgVar) {
        zzbgVar.getClass();
        if (!this.zzjj.zzfj()) {
            this.zzjj = zzeh.zza(this.zzjj);
        }
        this.zzjj.add(zzbgVar);
    }

    public final void zza(zzbn zzbnVar) {
        zzbnVar.getClass();
        if (!this.zzji.zzfj()) {
            this.zzji = zzeh.zza(this.zzji);
        }
        this.zzji.add(zzbnVar);
    }

    public final void zza(zzbs zzbsVar) {
        zzbsVar.getClass();
        this.zzjh = zzbsVar;
        this.zzhp |= 2;
    }

    public static zzbt.zza zzde() {
        return zzjl.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzbt zzdf() {
        return zzjl;
    }

    public final void zzw(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzjg = str;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbt>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbt> zzgbVar;
        switch (zzbu.zzhw[i - 1]) {
            case 1:
                return new zzbt();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzjl, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0003��\u0001\b��\u0002\u001b\u0003\t\u0001\u0004\u001b\u0005\u001b", new Object[]{"zzhp", "zzjg", "zzji", zzbn.class, "zzjh", "zzjj", zzbg.class, "zzjk", zzbx.class});
            case 4:
                return zzjl;
            case 5:
                zzgb<zzbt> zzgbVar2 = zzhu;
                zzgb<zzbt> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbt.class) {
                        try {
                            zzgb<zzbt> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzjl);
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

    public final boolean zzcy() {
        return (this.zzhp & 1) != 0;
    }

    public final String zzcz() {
        return this.zzjg;
    }

    public final boolean zzda() {
        return (this.zzhp & 2) != 0;
    }

    public final zzbs zzdb() {
        zzbs zzbsVar = this.zzjh;
        zzbs zzbsVar2 = zzbsVar;
        if (zzbsVar == null) {
            zzbsVar2 = zzbs.zzcw();
        }
        return zzbsVar2;
    }

    public final int zzdc() {
        return this.zzji.size();
    }

    public final int zzdd() {
        return this.zzjj.size();
    }
}
