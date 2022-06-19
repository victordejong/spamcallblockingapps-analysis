package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzbz;
import com.google.android.gms.internal.firebase-perf.zzca;
import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase-perf.zzen;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase_perf.zzeh;
import com.google.firebase.perf.FirebasePerformance;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzca.class */
public final class zzca extends zzeh<zzca, zzb> implements zzft {
    private static volatile zzgb<zzca> zzhu;
    private static final com.google.android.gms.internal.firebase-perf.zzca zzkf;
    private int zzhp;
    private int zzju;
    private long zzjv;
    private long zzjw;
    private int zzjx;
    private int zzjy;
    private long zzka;
    private long zzkb;
    private long zzkc;
    private long zzkd;
    private zzfl<String, String> zzig = zzfl.zzhe();
    private String zzjt = "";
    private String zzjz = "";
    private zzeo<zzch> zzke = zzgr();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzca$zza.class */
    static final class zza {
        static final zzfj<String, String> zzio = zzfj.zza(zzhk.zzvo, "", zzhk.zzvo, "");
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzca$zzb.class */
    public static final class zzb extends zzeh.zza<zzca, zzb> implements zzft {
        private zzb() {
            super(zzca.zzkf);
        }

        /* synthetic */ zzb(zzbz zzbzVar) {
            this();
        }

        public final zzca.zzb zzaa(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).setResponseContentType(str);
            return this;
        }

        public final zzca.zzb zzab(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzv(j);
            return this;
        }

        public final zzca.zzb zzac(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzw(j);
            return this;
        }

        public final zzca.zzb zzad(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzx(j);
            return this;
        }

        public final zzca.zzb zzae(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzy(j);
            return this;
        }

        public final zzca.zzb zzaf(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzz(j);
            return this;
        }

        public final zzca.zzb zzag(long j) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzaa(j);
            return this;
        }

        public final zzca.zzb zzb(zzca.zzc zzcVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zza(zzcVar);
            return this;
        }

        public final zzca.zzb zzb(zzca.zzd zzdVar) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zza(zzdVar);
            return this;
        }

        public final zzb zzb(Iterable<? extends zzch> iterable) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zza(iterable);
            return this;
        }

        public final zzb zzc(Map<String, String> map) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzcm().putAll(map);
            return this;
        }

        public final boolean zzdr() {
            return ((zzca) this.zzqa).zzdr();
        }

        public final long zzdw() {
            return ((zzca) this.zzqa).zzdw();
        }

        public final boolean zzdx() {
            return ((zzca) this.zzqa).zzdx();
        }

        public final zzca.zzb zzed() {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzdq();
            return this;
        }

        public final zzca.zzb zzee() {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).zzcm().clear();
            return this;
        }

        public final zzca.zzb zzl(int i) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).setHttpResponseCode(i);
            return this;
        }

        public final boolean zzw() {
            return ((zzca) this.zzqa).zzw();
        }

        public final zzca.zzb zzz(String str) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            ((zzca) this.zzqa).setUrl(str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzca$zzc.class */
    public static final class zzc extends Enum<zzc> implements zzel {
        private final int value;
        public static final zzca.zzc zzkg = new zzc("HTTP_METHOD_UNKNOWN", 0, 0);
        public static final zzca.zzc zzkh = new zzc(FirebasePerformance.HttpMethod.GET, 1, 1);
        public static final zzca.zzc zzki = new zzc(FirebasePerformance.HttpMethod.PUT, 2, 2);
        public static final zzca.zzc zzkj = new zzc(FirebasePerformance.HttpMethod.POST, 3, 3);
        public static final zzca.zzc zzkk = new zzc(FirebasePerformance.HttpMethod.DELETE, 4, 4);
        public static final zzca.zzc zzkl = new zzc(FirebasePerformance.HttpMethod.HEAD, 5, 5);
        public static final zzca.zzc zzkm = new zzc(FirebasePerformance.HttpMethod.PATCH, 6, 6);
        public static final zzca.zzc zzkn = new zzc(FirebasePerformance.HttpMethod.OPTIONS, 7, 7);
        public static final zzca.zzc zzko = new zzc(FirebasePerformance.HttpMethod.TRACE, 8, 8);
        public static final zzca.zzc zzkp = new zzc(FirebasePerformance.HttpMethod.CONNECT, 9, 9);
        private static final /* synthetic */ zzca.zzc[] zzkq = {zzkg, zzkh, zzki, zzkj, zzkk, zzkl, zzkm, zzkn, zzko, zzkp};
        private static final zzek<zzc> zzim = new zzcb();

        private zzc(String str, int i, int i2) {
            super(str, i);
            this.value = i2;
        }

        public static zzca.zzc[] values() {
            return (zzc[]) zzkq.clone();
        }

        public static zzen zzcr() {
            return zzcc.zzip;
        }

        public static zzca.zzc zzm(int i) {
            switch (i) {
                case 0:
                    return zzkg;
                case 1:
                    return zzkh;
                case 2:
                    return zzki;
                case 3:
                    return zzkj;
                case 4:
                    return zzkk;
                case 5:
                    return zzkl;
                case 6:
                    return zzkm;
                case 7:
                    return zzkn;
                case 8:
                    return zzko;
                case 9:
                    return zzkp;
                default:
                    return null;
            }
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzel
        public final int zzcq() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzca$zzd.class */
    public static final class zzd extends Enum<zzd> implements zzel {
        private final int value;
        private static final zzca.zzd zzkr = new zzd("NETWORK_CLIENT_ERROR_REASON_UNKNOWN", 0, 0);
        public static final zzca.zzd zzks = new zzd("GENERIC_CLIENT_ERROR", 1, 1);
        private static final /* synthetic */ zzca.zzd[] zzkt = {zzkr, zzks};
        private static final zzek<zzd> zzim = new zzce();

        private zzd(String str, int i, int i2) {
            super(str, i);
            this.value = i2;
        }

        public static zzca.zzd[] values() {
            return (zzd[]) zzkt.clone();
        }

        public static zzen zzcr() {
            return zzcd.zzip;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzel
        public final int zzcq() {
            return this.value;
        }
    }

    static {
        zzca zzcaVar = new zzca();
        zzkf = zzcaVar;
        zzeh.zza(com.google.android.gms.internal.firebase-perf.zzca.class, zzcaVar);
    }

    private zzca() {
    }

    public final void setHttpResponseCode(int i) {
        this.zzhp |= 32;
        this.zzjy = i;
    }

    public final void setResponseContentType(String str) {
        str.getClass();
        this.zzhp |= 64;
        this.zzjz = str;
    }

    public final void setUrl(String str) {
        str.getClass();
        this.zzhp |= 1;
        this.zzjt = str;
    }

    public final void zza(zzca.zzc zzcVar) {
        this.zzju = zzcVar.zzcq();
        this.zzhp |= 2;
    }

    public final void zza(zzca.zzd zzdVar) {
        this.zzjx = zzdVar.zzcq();
        this.zzhp |= 16;
    }

    public final void zza(Iterable<? extends zzch> iterable) {
        if (!this.zzke.zzfj()) {
            this.zzke = zzeh.zza(this.zzke);
        }
        zzcy.zza(iterable, this.zzke);
    }

    public final void zzaa(long j) {
        this.zzhp |= 1024;
        this.zzkd = j;
    }

    public final Map<String, String> zzcm() {
        if (!this.zzig.isMutable()) {
            this.zzig = this.zzig.zzhf();
        }
        return this.zzig;
    }

    public final void zzdq() {
        this.zzhp &= -65;
        this.zzjz = zzkf.zzjz;
    }

    public static zzca.zzb zzea() {
        return zzkf.zzgo();
    }

    public static com.google.android.gms.internal.firebase-perf.zzca zzeb() {
        return zzkf;
    }

    public final void zzv(long j) {
        this.zzhp |= 4;
        this.zzjv = j;
    }

    public final void zzw(long j) {
        this.zzhp |= 8;
        this.zzjw = j;
    }

    public final void zzx(long j) {
        this.zzhp |= 128;
        this.zzka = j;
    }

    public final void zzy(long j) {
        this.zzhp |= 256;
        this.zzkb = j;
    }

    public final void zzz(long j) {
        this.zzhp |= 512;
        this.zzkc = j;
    }

    public final String getUrl() {
        return this.zzjt;
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.firebase_perf.zzgb<com.google.android.gms.internal.firebase_perf.zzca>, com.google.android.gms.internal.firebase_perf.zzeh$zzc] */
    @Override // com.google.android.gms.internal.firebase_perf.zzeh
    public final Object zza(int i, Object obj, Object obj2) {
        zzgb<zzca> zzgbVar;
        switch (zzbz.zzhw[i - 1]) {
            case 1:
                return new zzca();
            case 2:
                return new zzb(null);
            case 3:
                return zza((zzfr) zzkf, "\u0001\r��\u0001\u0001\r\r\u0001\u0001��\u0001\b��\u0002\f\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0004\u0005\u0006\b\u0006\u0007\u0002\u0007\b\u0002\b\t\u0002\t\n\u0002\n\u000b\f\u0004\f2\r\u001b", new Object[]{"zzhp", "zzjt", "zzju", zzc.zzcr(), "zzjv", "zzjw", "zzjy", "zzjz", "zzka", "zzkb", "zzkc", "zzkd", "zzjx", zzd.zzcr(), "zzig", zza.zzio, "zzke", zzch.class});
            case 4:
                return zzkf;
            case 5:
                zzgb<zzca> zzgbVar2 = zzhu;
                zzgb<zzca> zzgbVar3 = zzgbVar2;
                if (zzgbVar2 == null) {
                    synchronized (com.google.android.gms.internal.firebase-perf.zzca.class) {
                        try {
                            zzgb<zzca> zzgbVar4 = zzhu;
                            zzgbVar = zzgbVar4;
                            if (zzgbVar4 == null) {
                                ?? zzcVar = new zzeh.zzc(zzkf);
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

    public final boolean zzdj() {
        return (this.zzhp & 2) != 0;
    }

    public final zzca.zzc zzdk() {
        zzca.zzc zzm = zzc.zzm(this.zzju);
        zzca.zzc zzcVar = zzm;
        if (zzm == null) {
            zzcVar = zzc.zzkg;
        }
        return zzcVar;
    }

    public final boolean zzdl() {
        return (this.zzhp & 4) != 0;
    }

    public final long zzdm() {
        return this.zzjv;
    }

    public final boolean zzdn() {
        return (this.zzhp & 8) != 0;
    }

    public final long zzdo() {
        return this.zzjw;
    }

    public final int zzdp() {
        return this.zzjy;
    }

    public final boolean zzdr() {
        return (this.zzhp & 128) != 0;
    }

    public final long zzds() {
        return this.zzka;
    }

    public final boolean zzdt() {
        return (this.zzhp & 256) != 0;
    }

    public final long zzdu() {
        return this.zzkb;
    }

    public final boolean zzdv() {
        return (this.zzhp & 512) != 0;
    }

    public final long zzdw() {
        return this.zzkc;
    }

    public final boolean zzdx() {
        return (this.zzhp & 1024) != 0;
    }

    public final long zzdy() {
        return this.zzkd;
    }

    public final List<zzch> zzdz() {
        return this.zzke;
    }

    public final boolean zzw() {
        return (this.zzhp & 32) != 0;
    }
}
