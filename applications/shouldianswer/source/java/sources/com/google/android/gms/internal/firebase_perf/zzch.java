package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase-perf.zzcj;
import com.google.android.gms.internal.firebase-perf.zzco;
import com.google.android.gms.internal.firebase-perf.zzem;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzch.class */
public final class zzch extends zzeh<zzch, zza> implements zzft {
    private static volatile zzgb<zzch> zzhu;
    private static final zzep<Integer, zzco> zzla = new zzcj();
    private static final com.google.android.gms.internal.firebase-perf.zzch zzlb;
    private int zzhp;
    private String zzjg = "";
    private zzem zzkz = zzgq();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzch$zza.class */
    public static final class zza extends zzeh.zza<zzch, zza> implements zzft {
        private zza() {
            super(zzch.zzlb);
        }

        /* synthetic */ zza(zzcj zzcjVar) {
            this();
        }

        public final zzch.zza zzab(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzch) this.zzqa).zzw(str);
            return this;
        }

        public final zzch.zza zzb(zzco zzcoVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzch) this.zzqa).zza(zzcoVar);
            return this;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.firebase_perf.zzcj, com.google.android.gms.internal.firebase_perf.zzep<java.lang.Integer, com.google.android.gms.internal.firebase_perf.zzco>] */
    static {
        zzch zzchVar = new zzch();
        zzlb = zzchVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzch.class, zzchVar);
    }

    private zzch() {
    }

    public final void zza(zzco zzcoVar) {
        zzcoVar.getClass();
        if (!this.zzkz.zzfj()) {
            zzem zzemVar = this.zzkz;
            int size = zzemVar.size();
            this.zzkz = zzemVar.zzak(size == 0 ? 10 : size << 1);
        }
        this.zzkz.zzal(zzcoVar.zzcq());
    }

    public static zzch.zza zzeq() {
        return zzlb.zzgo();
    }

    public final void zzw(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzjg = str;
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzeh$zzc, com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzch>] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzch> zzgbVar;
        switch (zzci.zzhw[i - 1]) {
            case 1:
                return new zzch();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzlb, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\b��\u0002\u001e", new Object[]{"zzhp", "zzjg", "zzkz", zzco.zzcr()});
            case 4:
                return zzlb;
            case 5:
                zzgb<zzch> zzgbVar2 = zzhu;
                zzgb<zzch> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzch.class) {
                        try {
                            zzgb<zzch> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzlb);
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

    public final int zzep() {
        return this.zzkz.size();
    }

    public final zzco zzn(int i) {
        return zzla.convert(Integer.valueOf(this.zzkz.getInt(0)));
    }
}
