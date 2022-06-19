package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbc;
import com.google.android.gms.internal.firebase-perf.zzbh;
import com.google.android.gms.internal.firebase-perf.zzbi;
import com.google.android.gms.internal.firebase-perf.zzbj;
import com.google.android.gms.internal.firebase-perf.zzbw;
import com.google.android.gms.internal.firebase-perf.zzcu;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbh.class */
public final class zzbh extends zzeh<zzbh, zza> implements zzft {
    private static volatile zzgb<zzbh> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzbh zzih;
    private int zzhp;
    private zzbc zzic;
    private zzbw zzid;
    private zzcu zzie;
    private int zzif;
    private zzfl<String, String> zzig = zzfl.zzhe();
    private String zzia = "";
    private String zzib = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbh$zza.class */
    public static final class zza extends zzeh.zza<zzbh, zza> implements zzft {
        private zza() {
            super(zzbh.zzih);
        }

        /* synthetic */ zza(zzbi zzbiVar) {
            this();
        }

        public final zzbh.zza zza(zzbc.zza zzaVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbh) this.zzqa).zza((zzbc) ((zzbc) zzaVar.zzgm()));
            return this;
        }

        public final zza zzb(Map<String, String> map) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbh) this.zzqa).zzcm().putAll(map);
            return this;
        }

        public final boolean zzci() {
            return ((zzbh) this.zzqa).zzci();
        }

        public final zzbh.zza zzf(zzbj zzbjVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbh) this.zzqa).zze(zzbjVar);
            return this;
        }

        public final zzbh.zza zzt(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbh) this.zzqa).zzr(str);
            return this;
        }

        public final zzbh.zza zzu(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzbh) this.zzqa).zzs(str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzbh$zzb.class */
    static final class zzb {
        static final zzfj<String, String> zzio = zzfj.zza(zzhk.zzvo, "", zzhk.zzvo, "");
    }

    static {
        zzbh zzbhVar = new zzbh();
        zzih = zzbhVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzbh.class, zzbhVar);
    }

    private zzbh() {
    }

    public final void zza(zzbc zzbcVar) {
        zzbcVar.getClass();
        this.zzic = zzbcVar;
        this.zzhp |= 4;
    }

    public final Map<String, String> zzcm() {
        if (!this.zzig.isMutable()) {
            this.zzig = this.zzig.zzhf();
        }
        return this.zzig;
    }

    public static zzbh.zza zzcn() {
        return zzih.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzbh zzco() {
        return zzih;
    }

    public final void zze(zzbj zzbjVar) {
        this.zzif = zzbjVar.zzcq();
        this.zzhp |= 32;
    }

    public final void zzr(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzia = str;
    }

    public final void zzs(String str) {
        str.getClass();
        this.zzhp |= 2;
        this.zzib = str;
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzbh>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzbh> zzgbVar;
        switch (zzbi.zzhw[i - 1]) {
            case 1:
                return new zzbh();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzih, "\u0001\u0007��\u0001\u0001\u0007\u0007\u0001����\u0001\b��\u0002\b\u0001\u0003\t\u0002\u0004\t\u0003\u0005\f\u0005\u00062\u0007\t\u0004", new Object[]{"zzhp", "zzia", "zzib", "zzic", "zzid", "zzif", zzbj.zzcr(), "zzig", zzb.zzio, "zzie"});
            case 4:
                return zzih;
            case 5:
                zzgb<zzbh> zzgbVar2 = zzhu;
                zzgb<zzbh> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzbh.class) {
                        try {
                            zzgb<zzbh> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzih);
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

    public final boolean zzch() {
        return (this.zzhp & 1) != 0;
    }

    public final boolean zzci() {
        return (this.zzhp & 2) != 0;
    }

    public final boolean zzcj() {
        return (this.zzhp & 4) != 0;
    }

    public final zzbc zzck() {
        zzbc zzbcVar = this.zzic;
        zzbc zzbcVar2 = zzbcVar;
        if (zzbcVar == null) {
            zzbcVar2 = zzbc.zzcd();
        }
        return zzbcVar2;
    }

    public final boolean zzcl() {
        return (this.zzhp & 32) != 0;
    }
}
