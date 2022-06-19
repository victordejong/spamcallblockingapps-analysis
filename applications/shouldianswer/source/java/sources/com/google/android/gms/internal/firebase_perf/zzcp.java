package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase-perf.zzcp;
import com.google.android.gms.internal.firebase-perf.zzcr;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcp.class */
public final class zzcp extends zzeh<zzcp, zza> implements zzft {
    private static volatile zzgb<zzcp> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzcp zzlp;
    private int zzhp;
    private long zzka;
    private boolean zzll;
    private long zzlm;
    private zzfl<String, Long> zzln = zzfl.zzhe();
    private zzfl<String, String> zzig = zzfl.zzhe();
    private String zzlk = "";
    private zzeo<zzcp> zzlo = zzgr();
    private zzeo<zzch> zzke = zzgr();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcp$zza.class */
    public static final class zza extends zzeh.zza<zzcp, zza> implements zzft {
        private zza() {
            super(zzcp.zzlp);
        }

        /* synthetic */ zza(zzcr zzcrVar) {
            this();
        }

        public final zzcp.zza zzac(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).setName(str);
            return this;
        }

        public final zzcp.zza zzai(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzx(j);
            return this;
        }

        public final zzcp.zza zzaj(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzah(j);
            return this;
        }

        public final zzcp.zza zzb(zzch zzchVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zza(zzchVar);
            return this;
        }

        public final zzcp.zza zzc(String str, long j) {
            str.getClass();
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzeu().put(str, Long.valueOf(j));
            return this;
        }

        public final zza zzd(Iterable<? extends zzcp> iterable) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzc(iterable);
            return this;
        }

        public final zza zzd(Map<String, Long> map) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzeu().putAll(map);
            return this;
        }

        public final zza zze(Iterable<? extends zzch> iterable) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zza(iterable);
            return this;
        }

        public final zza zze(Map<String, String> map) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzcm().putAll(map);
            return this;
        }

        public final zzcp.zza zzf(com.google.android.gms.internal.firebase-perf.zzcp zzcpVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzcp) this.zzqa).zzc(zzcpVar);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcp$zzb.class */
    static final class zzb {
        static final zzfj<String, String> zzio = zzfj.zza(zzhk.zzvo, "", zzhk.zzvo, "");
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzcp$zzc.class */
    static final class zzc {
        static final zzfj<String, Long> zzio = zzfj.zza(zzhk.zzvo, "", zzhk.zzvi, 0L);
    }

    static {
        zzcp zzcpVar = new zzcp();
        zzlp = zzcpVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzcp.class, zzcpVar);
    }

    private zzcp() {
    }

    public final void setName(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzlk = str;
    }

    public final void zza(zzch zzchVar) {
        zzchVar.getClass();
        zzey();
        this.zzke.add(zzchVar);
    }

    public final void zza(Iterable<? extends zzch> iterable) {
        zzey();
        zzcy.zza(iterable, this.zzke);
    }

    public final void zzah(long j) {
        this.zzhp |= 8;
        this.zzlm = j;
    }

    public final void zzc(com.google.android.gms.internal.firebase-perf.zzcp zzcpVar) {
        zzcpVar.getClass();
        zzew();
        this.zzlo.add(zzcpVar);
    }

    public final void zzc(Iterable<? extends zzcp> iterable) {
        zzew();
        zzcy.zza(iterable, this.zzlo);
    }

    public final Map<String, String> zzcm() {
        if (!this.zzig.isMutable()) {
            this.zzig = this.zzig.zzhf();
        }
        return this.zzig;
    }

    public final Map<String, Long> zzeu() {
        if (!this.zzln.isMutable()) {
            this.zzln = this.zzln.zzhf();
        }
        return this.zzln;
    }

    private final void zzew() {
        if (!this.zzlo.zzfj()) {
            this.zzlo = zzeh.zza(this.zzlo);
        }
    }

    private final void zzey() {
        if (!this.zzke.zzfj()) {
            this.zzke = zzeh.zza(this.zzke);
        }
    }

    public static zzcp.zza zzez() {
        return zzlp.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzcp zzfa() {
        return zzlp;
    }

    public final void zzx(long j) {
        this.zzhp |= 4;
        this.zzka = j;
    }

    public final long getDurationUs() {
        return this.zzlm;
    }

    public final String getName() {
        return this.zzlk;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzcp>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzcp> zzgbVar;
        switch (zzcr.zzhw[i - 1]) {
            case 1:
                return new zzcp();
            case 2:
                return new zza(null);
            case 3:
                return zza((zzfr) zzlp, "\u0001\b��\u0001\u0001\t\b\u0002\u0002��\u0001\b��\u0002\u0007\u0001\u0004\u0002\u0002\u0005\u0002\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"zzhp", "zzlk", "zzll", "zzka", "zzlm", "zzln", zzc.zzio, "zzlo", com.google.android.gms.internal.firebase-perf.zzcp.class, "zzig", zzb.zzio, "zzke", zzch.class});
            case 4:
                return zzlp;
            case 5:
                zzgb<zzcp> zzgbVar2 = zzhu;
                zzgb<zzcp> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzcp.class) {
                        try {
                            zzgb<zzcp> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzlp);
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

    public final boolean zzdr() {
        return (this.zzhp & 4) != 0;
    }

    public final List<zzch> zzdz() {
        return this.zzke;
    }

    public final int zzes() {
        return this.zzln.size();
    }

    public final Map<String, Long> zzet() {
        return Collections.unmodifiableMap(this.zzln);
    }

    public final List<zzcp> zzev() {
        return this.zzlo;
    }

    public final Map<String, String> zzex() {
        return Collections.unmodifiableMap(this.zzig);
    }
}
