package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbf;
import com.google.android.gms.internal.firebase-perf.zzbg;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbg.class */
public final class zzbg extends zzeh<zzbg, zza> implements zzft {
    private static volatile zzgb<zzbg> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbg zzhz;
    private int zzhp;
    private long zzhx;
    private int zzhy;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbg$zza.class */
    public static final class zza extends zzeh.zza<zzbg, zza> implements zzft {
        private zza() {
            super(zzbg.zzhz);
        }

        /* synthetic */ zza(zzbf zzbfVar) {
            this();
        }

        public final zzbg.zza zze(int i) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbg) this.zzqa).zzd(i);
            return this;
        }

        public final zzbg.zza zzp(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbg) this.zzqa).zzo(j);
            return this;
        }
    }

    static {
        zzbg zzbgVar = new zzbg();
        zzhz = zzbgVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbg.class, zzbgVar);
    }

    private zzbg() {
    }

    public static zzbg.zza zzcf() {
        return zzhz.zzgo();
    }

    public final void zzd(int i) {
        this.zzhp |= 2;
        this.zzhy = i;
    }

    public final void zzo(long j) {
        this.zzhp |= 1;
        this.zzhx = j;
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzeh$zzc, com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbg>] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbg> zzgbVar;
        switch (zzbf.zzhw[i - 1]) {
            case 1:
                return new zzbg();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzhz, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\u0002��\u0002\u0004\u0001", new Object[]{"zzhp", "zzhx", "zzhy"});
            case 4:
                return zzhz;
            case 5:
                zzgb<zzbg> zzgbVar2 = zzhu;
                zzgb<zzbg> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbg.class) {
                        try {
                            zzgb<zzbg> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzhz);
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
