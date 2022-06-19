package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbh;
import com.google.android.gms.internal.firebase-perf.zzbt;
import com.google.android.gms.internal.firebase-perf.zzca;
import com.google.android.gms.internal.firebase-perf.zzcf;
import com.google.android.gms.internal.firebase-perf.zzcg;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcg.class */
public final class zzcg extends zzeh<zzcg, zza> implements zzft {
    private static volatile zzgb<zzcg> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzcg zzky;
    private int zzhp;
    private zzbh zzku;
    private zzcp zzkv;
    private zzca zzkw;
    private zzbt zzkx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcg$zza.class */
    public static final class zza extends zzeh.zza<zzcg, zza> implements zzft {
        private zza() {
            super(zzcg.zzky);
        }

        /* synthetic */ zza(zzcf zzcfVar) {
            this();
        }

        public final zzcg.zza zza(zzbh.zza zzaVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcg) this.zzqa).zzb((zzbh) ((zzbh) zzaVar.zzgm()));
            return this;
        }

        public final zzcg.zza zzb(zzbt zzbtVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcg) this.zzqa).zza(zzbtVar);
            return this;
        }

        public final zzcg.zza zzb(zzcp zzcpVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcg) this.zzqa).zza(zzcpVar);
            return this;
        }

        public final zzcg.zza zzd(zzca zzcaVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcg) this.zzqa).zzc(zzcaVar);
            return this;
        }
    }

    static {
        zzcg zzcgVar = new zzcg();
        zzky = zzcgVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzcg.class, zzcgVar);
    }

    private zzcg() {
    }

    public final void zza(zzbt zzbtVar) {
        zzbtVar.getClass();
        this.zzkx = zzbtVar;
        this.zzhp |= 8;
    }

    public final void zza(zzcp zzcpVar) {
        zzcpVar.getClass();
        this.zzkv = zzcpVar;
        this.zzhp |= 2;
    }

    public final void zzb(zzbh zzbhVar) {
        zzbhVar.getClass();
        this.zzku = zzbhVar;
        this.zzhp |= 1;
    }

    public final void zzc(zzca zzcaVar) {
        zzcaVar.getClass();
        this.zzkw = zzcaVar;
        this.zzhp |= 4;
    }

    public static zzcg.zza zzen() {
        return zzky.zzgo();
    }

    /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzcg>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzcg> zzgbVar;
        switch (zzcf.zzhw[i - 1]) {
            case 1:
                return new zzcg();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzky, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\t��\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003", new Object[]{"zzhp", "zzku", "zzkv", "zzkw", "zzkx"});
            case 4:
                return zzky;
            case 5:
                zzgb<zzcg> zzgbVar2 = zzhu;
                zzgb<zzcg> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzcg.class) {
                        try {
                            zzgb<zzcg> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzky);
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

    public final boolean zzef() {
        return (this.zzhp & 1) != 0;
    }

    public final zzbh zzeg() {
        zzbh zzbhVar = this.zzku;
        zzbh zzbhVar2 = zzbhVar;
        if (zzbhVar == null) {
            zzbhVar2 = zzbh.zzco();
        }
        return zzbhVar2;
    }

    public final boolean zzeh() {
        return (this.zzhp & 2) != 0;
    }

    public final zzcp zzei() {
        zzcp zzcpVar = this.zzkv;
        zzcp zzcpVar2 = zzcpVar;
        if (zzcpVar == null) {
            zzcpVar2 = zzcp.zzfa();
        }
        return zzcpVar2;
    }

    public final boolean zzej() {
        return (this.zzhp & 4) != 0;
    }

    public final zzca zzek() {
        zzca zzcaVar = this.zzkw;
        zzca zzcaVar2 = zzcaVar;
        if (zzcaVar == null) {
            zzcaVar2 = zzca.zzeb();
        }
        return zzcaVar2;
    }

    public final boolean zzel() {
        return (this.zzhp & 8) != 0;
    }

    public final zzbt zzem() {
        zzbt zzbtVar = this.zzkx;
        zzbt zzbtVar2 = zzbtVar;
        if (zzbtVar == null) {
            zzbtVar2 = zzbt.zzdf();
        }
        return zzbtVar2;
    }
}
