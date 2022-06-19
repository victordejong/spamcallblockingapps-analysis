package com.google.android.gms.internal.ads;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf.class */
public final class zzcf {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza.class */
    public static final class zza extends zzelb<zza, zzb> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzik;
        private int zzdv;
        private int zzfn;
        private int zzfo;
        private long zzfq;
        private long zzfr;
        private long zzfs;
        private long zzft;
        private long zzfu;
        private long zzfv;
        private long zzfw;
        private long zzfx;
        private long zzfy;
        private long zzfz;
        private long zzgb;
        private long zzgc;
        private long zzgd;
        private long zzge;
        private long zzgf;
        private long zzgg;
        private long zzgh;
        private long zzgi;
        private long zzgj;
        private long zzgm;
        private long zzgn;
        private long zzgo;
        private long zzgp;
        private zzb zzgs;
        private zze zzhi;
        private zzf zzhk;
        private int zzhv;
        private int zzhw;
        private int zzhx;
        private zze zzhy;
        private long zzid;
        private boolean zzig;
        private long zzii;
        private zzd zzij;
        private String zzfp = "";
        private String zzef = "";
        private String zzga = "";
        private String zzfg = "";
        private String zzgk = "D";
        private String zzgl = "";
        private String zzfi = "";
        private long zzgq = -1;
        private long zzgr = -1;
        private long zzgt = -1;
        private long zzgu = -1;
        private long zzgv = -1;
        private long zzgw = -1;
        private long zzgx = -1;
        private long zzgy = -1;
        private String zzfj = "D";
        private String zzfk = "D";
        private long zzgz = -1;
        private int zzha = 1000;
        private int zzhb = 1000;
        private long zzhc = -1;
        private long zzhd = -1;
        private long zzhe = -1;
        private long zzhf = -1;
        private long zzhg = -1;
        private int zzhh = 1000;
        private zzell<zze> zzhj = zzbin();
        private long zzhl = -1;
        private long zzhm = -1;
        private long zzhn = -1;
        private long zzho = -1;
        private long zzhp = -1;
        private long zzhq = -1;
        private long zzhr = -1;
        private long zzhs = -1;
        private String zzht = "D";
        private long zzhu = -1;
        private long zzhz = -1;
        private int zzia = 1000;
        private int zzib = 1000;
        private String zzic = "D";
        private String zzie = "";
        private int zzif = 2;
        private String zzih = "";

        /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zza.class */
        public enum EnumC2602zza implements zzelg {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);
            
            private static final zzelf<EnumC2602zza> zzes = new zzci();
            private final int value;

            EnumC2602zza(int i) {
                this.value = i;
            }

            public static EnumC2602zza zzk(int i) {
                switch (i) {
                    case 0:
                        return DEBUGGER_STATE_UNSPECIFIED;
                    case 1:
                        return DEBUGGER_STATE_NOT_INSTALLED;
                    case 2:
                        return DEBUGGER_STATE_INSTALLED;
                    case 3:
                        return DEBUGGER_STATE_ACTIVE;
                    case 4:
                        return DEBUGGER_STATE_ENVVAR;
                    case 5:
                        return DEBUGGER_STATE_MACHPORT;
                    case 6:
                        return DEBUGGER_STATE_ENVVAR_MACHPORT;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzch.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zzb.class */
        public static final class zzb extends zzelb.zzb<zza, zzb> implements zzemq {
            private zzb() {
                super(zza.zzik);
            }

            /* synthetic */ zzb(zzcg zzcgVar) {
                this();
            }

            public final zzb zzac(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzt(str);
                return this;
            }

            public final zzb zzad(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzu(str);
                return this;
            }

            public final zzb zzae(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzv(str);
                return this;
            }

            public final zzb zzaf(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzw(str);
                return this;
            }

            public final zzb zzag(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzx(str);
                return this;
            }

            public final zzb zzah(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzy(str);
                return this;
            }

            public final zzb zzai(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzz(str);
                return this;
            }

            public final zzb zzaj(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaa(str);
                return this;
            }

            public final zzb zzak(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzab(str);
                return this;
            }

            public final zzb zzal(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zze(j);
                return this;
            }

            public final zzb zzam(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzf(j);
                return this;
            }

            public final zzb zzan(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzg(j);
                return this;
            }

            public final zzb zzao(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzh(j);
                return this;
            }

            public final zzb zzap(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzi(j);
                return this;
            }

            public final zzb zzaq(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzj(j);
                return this;
            }

            public final zzb zzar(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzk(j);
                return this;
            }

            public final zzb zzas() {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaj();
                return this;
            }

            public final zzb zzas(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzl(j);
                return this;
            }

            public final zzb zzat(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzm(j);
                return this;
            }

            public final zzb zzau(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzn(j);
                return this;
            }

            public final zzb zzav(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzo(j);
                return this;
            }

            public final zzb zzaw(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzp(j);
                return this;
            }

            public final zzb zzax(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzq(j);
                return this;
            }

            public final zzb zzay(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzr(j);
                return this;
            }

            public final zzb zzaz(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzs(j);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzcVar);
                return this;
            }

            public final zzb zzb(zzf zzfVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzfVar);
                return this;
            }

            public final zzb zzb(boolean z) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(z);
                return this;
            }

            public final zzb zzba(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzt(j);
                return this;
            }

            @Deprecated
            public final zzb zzbb(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzu(j);
                return this;
            }

            public final zzb zzbc(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzv(j);
                return this;
            }

            public final zzb zzbd(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzw(j);
                return this;
            }

            public final zzb zzbe(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzx(j);
                return this;
            }

            public final zzb zzbf(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzy(j);
                return this;
            }

            public final zzb zzbg(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzz(j);
                return this;
            }

            public final zzb zzbh(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaa(j);
                return this;
            }

            public final zzb zzbi(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzab(j);
                return this;
            }

            public final zzb zzbj(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzac(j);
                return this;
            }

            public final zzb zzbk(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzad(j);
                return this;
            }

            public final zzb zzbl(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzae(j);
                return this;
            }

            public final zzb zzbm(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaf(j);
                return this;
            }

            public final zzb zzbn(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzag(j);
                return this;
            }

            public final zzb zzbo(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzah(j);
                return this;
            }

            public final zzb zzbp(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzai(j);
                return this;
            }

            public final zzb zzbq(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzaj(j);
                return this;
            }

            public final zzb zzbr(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzak(j);
                return this;
            }

            public final zzb zzc(zze zzeVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzeVar);
                return this;
            }

            public final zzb zzd(zze zzeVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzb(zzeVar);
                return this;
            }

            public final zzb zzf(zzcq zzcqVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzcqVar);
                return this;
            }

            public final zzb zzg(zzcq zzcqVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzb(zzcqVar);
                return this;
            }

            public final zzb zzh(zzcq zzcqVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzc(zzcqVar);
                return this;
            }

            public final zzb zzi(zzcq zzcqVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzd(zzcqVar);
                return this;
            }

            public final zzb zzj(zzcq zzcqVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zze(zzcqVar);
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zzc.class */
        public enum zzc implements zzelg {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);
            
            private static final zzelf<zzc> zzes = new zzcj();
            private final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzl(int i) {
                switch (i) {
                    case 0:
                        return DEVICE_IDENTIFIER_NO_ID;
                    case 1:
                        return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                    case 2:
                        return DEVICE_IDENTIFIER_GLOBAL_ID;
                    case 3:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID;
                    case 4:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                    case 5:
                        return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                    case 6:
                        return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzck.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zzd.class */
        public enum zzd implements zzelg {
            ERROR_ENCODE_SIZE_FAIL(1),
            ERROR_UNKNOWN(3),
            ERROR_NO_SIGNALS(5),
            ERROR_ENCRYPTION(7),
            ERROR_MEMORY(9),
            ERROR_SIMULATOR(11),
            ERROR_SERVICE(13),
            ERROR_THREAD(15),
            PSN_WEB64_FAIL(2),
            PSN_DECRYPT_SIZE_FAIL(4),
            PSN_MD5_CHECK_FAIL(8),
            PSN_MD5_SIZE_FAIL(16),
            PSN_MD5_FAIL(32),
            PSN_DECODE_FAIL(64),
            PSN_SALT_FAIL(128),
            PSN_BITSLICER_FAIL(256),
            PSN_REQUEST_TYPE_FAIL(512),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(4096),
            PSN_BLANK_VALUE(8192),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(65536),
            PSN_TINK_FAIL(131072);
            
            private static final zzelf<zzd> zzes = new zzcl();
            private final int value;

            zzd(int i) {
                this.value = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zze.class */
        public static final class zze extends zzelb<zze, C2603zza> implements zzemq {
            private static volatile zzemx<zze> zzek;
            private static final zze zzku;
            private int zzdv;
            private long zzko;
            private long zzkp;
            private long zzgb = -1;
            private long zzgc = -1;
            private long zzkb = -1;
            private long zzkc = -1;
            private long zzkd = -1;
            private long zzke = -1;
            private int zzkf = 1000;
            private long zzkg = -1;
            private long zzkh = -1;
            private long zzki = -1;
            private int zzkj = 1000;
            private long zzkk = -1;
            private long zzkl = -1;
            private long zzkm = -1;
            private long zzkn = -1;
            private long zzkq = -1;
            private long zzkr = -1;
            private long zzks = -1;
            private long zzkt = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zze$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zze$zza.class */
            public static final class C2603zza extends zzelb.zzb<zze, C2603zza> implements zzemq {
                private C2603zza() {
                    super(zze.zzku);
                }

                /* synthetic */ C2603zza(zzcg zzcgVar) {
                    this();
                }

                public final C2603zza zzay() {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzat();
                    return this;
                }

                public final C2603zza zzcl(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzj(j);
                    return this;
                }

                public final C2603zza zzcm(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzk(j);
                    return this;
                }

                public final C2603zza zzcn(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbs(j);
                    return this;
                }

                public final C2603zza zzco(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbt(j);
                    return this;
                }

                public final C2603zza zzcp(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbu(j);
                    return this;
                }

                public final C2603zza zzcq(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbv(j);
                    return this;
                }

                public final C2603zza zzcr(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbw(j);
                    return this;
                }

                public final C2603zza zzcs(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbx(j);
                    return this;
                }

                public final C2603zza zzct(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzby(j);
                    return this;
                }

                public final C2603zza zzcu(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbz(j);
                    return this;
                }

                public final C2603zza zzcv(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzca(j);
                    return this;
                }

                public final C2603zza zzcw(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcb(j);
                    return this;
                }

                public final C2603zza zzcx(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcc(j);
                    return this;
                }

                public final C2603zza zzcy(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcd(j);
                    return this;
                }

                public final C2603zza zzcz(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzce(j);
                    return this;
                }

                public final C2603zza zzda(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcf(j);
                    return this;
                }

                public final C2603zza zzdb(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzcg(j);
                    return this;
                }

                public final C2603zza zzm(zzcq zzcqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzk(zzcqVar);
                    return this;
                }

                public final C2603zza zzn(zzcq zzcqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzl(zzcqVar);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzku = zzeVar;
                zzelb.zza(zze.class, zzeVar);
            }

            private zze() {
            }

            public final void zzat() {
                this.zzdv &= -9;
                this.zzkc = -1L;
            }

            public static C2603zza zzau() {
                return zzku.zzbii();
            }

            public final void zzbs(long j) {
                this.zzdv |= 4;
                this.zzkb = j;
            }

            public final void zzbt(long j) {
                this.zzdv |= 8;
                this.zzkc = j;
            }

            public final void zzbu(long j) {
                this.zzdv |= 16;
                this.zzkd = j;
            }

            public final void zzbv(long j) {
                this.zzdv |= 32;
                this.zzke = j;
            }

            public final void zzbw(long j) {
                this.zzdv |= 128;
                this.zzkg = j;
            }

            public final void zzbx(long j) {
                this.zzdv |= 256;
                this.zzkh = j;
            }

            public final void zzby(long j) {
                this.zzdv |= 512;
                this.zzki = j;
            }

            public final void zzbz(long j) {
                this.zzdv |= 2048;
                this.zzkk = j;
            }

            public final void zzca(long j) {
                this.zzdv |= 4096;
                this.zzkl = j;
            }

            public final void zzcb(long j) {
                this.zzdv |= 8192;
                this.zzkm = j;
            }

            public final void zzcc(long j) {
                this.zzdv |= 16384;
                this.zzkn = j;
            }

            public final void zzcd(long j) {
                this.zzdv |= 32768;
                this.zzko = j;
            }

            public final void zzce(long j) {
                this.zzdv |= 65536;
                this.zzkp = j;
            }

            public final void zzcf(long j) {
                this.zzdv |= 131072;
                this.zzkq = j;
            }

            public final void zzcg(long j) {
                this.zzdv |= 262144;
                this.zzkr = j;
            }

            public final void zzj(long j) {
                this.zzdv |= 1;
                this.zzgb = j;
            }

            public final void zzk(long j) {
                this.zzdv |= 2;
                this.zzgc = j;
            }

            public final void zzk(zzcq zzcqVar) {
                this.zzkf = zzcqVar.zzv();
                this.zzdv |= 64;
            }

            public final void zzl(zzcq zzcqVar) {
                this.zzkj = zzcqVar.zzv();
                this.zzdv |= 1024;
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzcg.zzel[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C2603zza(null);
                    case 3:
                        return zza(zzku, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzdv", "zzgb", "zzgc", "zzkb", "zzkc", "zzkd", "zzke", "zzkf", zzcq.zzw(), "zzkg", "zzkh", "zzki", "zzkj", zzcq.zzw(), "zzkk", "zzkl", "zzkm", "zzkn", "zzko", "zzkp", "zzkq", "zzkr", "zzks", "zzkt"});
                    case 4:
                        return zzku;
                    case 5:
                        zzemx<zze> zzemxVar = zzek;
                        zzemx<zze> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzemx<zze> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzku);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zzf.class */
        public static final class zzf extends zzelb<zzf, C2604zza> implements zzemq {
            private static volatile zzemx<zzf> zzek;
            private static final zzf zzkz;
            private int zzdv;
            private long zzhf = -1;
            private long zzhg = -1;
            private long zzkv = -1;
            private long zzkw = -1;
            private long zzkx = -1;
            private long zzky = -1;

            /* renamed from: com.google.android.gms.internal.ads.zzcf$zza$zzf$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zza$zzf$zza.class */
            public static final class C2604zza extends zzelb.zzb<zzf, C2604zza> implements zzemq {
                private C2604zza() {
                    super(zzf.zzkz);
                }

                /* synthetic */ C2604zza(zzcg zzcgVar) {
                    this();
                }

                public final C2604zza zzdc(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzch(j);
                    return this;
                }

                public final C2604zza zzdd(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzci(j);
                    return this;
                }

                public final C2604zza zzde(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzcj(j);
                    return this;
                }

                public final C2604zza zzdf(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzck(j);
                    return this;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzkz = zzfVar;
                zzelb.zza(zzf.class, zzfVar);
            }

            private zzf() {
            }

            public static C2604zza zzaw() {
                return zzkz.zzbii();
            }

            public final void zzch(long j) {
                this.zzdv |= 4;
                this.zzkv = j;
            }

            public final void zzci(long j) {
                this.zzdv |= 8;
                this.zzkw = j;
            }

            public final void zzcj(long j) {
                this.zzdv |= 16;
                this.zzkx = j;
            }

            public final void zzck(long j) {
                this.zzdv |= 32;
                this.zzky = j;
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzcg.zzel[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C2604zza(null);
                    case 3:
                        return zza(zzkz, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzdv", "zzhf", "zzhg", "zzkv", "zzkw", "zzkx", "zzky"});
                    case 4:
                        return zzkz;
                    case 5:
                        zzemx<zzf> zzemxVar = zzek;
                        zzemx<zzf> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzf.class) {
                                try {
                                    zzemx<zzf> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzkz);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        static {
            zza zzaVar = new zza();
            zzik = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        public static zza zza(byte[] bArr, zzeko zzekoVar) throws zzelo {
            return (zza) zzelb.zza(zzik, bArr, zzekoVar);
        }

        public final void zza(zzc zzcVar) {
            this.zzif = zzcVar.zzv();
            this.zzfo |= 256;
        }

        public final void zza(zze zzeVar) {
            zzeVar.getClass();
            this.zzhi = zzeVar;
            this.zzfn |= 262144;
        }

        public final void zza(zzf zzfVar) {
            zzfVar.getClass();
            this.zzhk = zzfVar;
            this.zzfn |= 524288;
        }

        public final void zza(zzcq zzcqVar) {
            this.zzha = zzcqVar.zzv();
            this.zzfn |= 1024;
        }

        public final void zza(boolean z) {
            this.zzfo |= 512;
            this.zzig = z;
        }

        public final void zzaa(long j) {
            this.zzfn |= 32;
            this.zzgx = j;
        }

        public final void zzaa(String str) {
            str.getClass();
            this.zzfn |= 268435456;
            this.zzht = str;
        }

        public final void zzab(long j) {
            this.zzfn |= 64;
            this.zzgy = j;
        }

        public final void zzab(String str) {
            str.getClass();
            this.zzfo |= 128;
            this.zzie = str;
        }

        public final void zzac(long j) {
            this.zzfn |= 4096;
            this.zzhc = j;
        }

        public final void zzad(long j) {
            this.zzfn |= 8192;
            this.zzhd = j;
        }

        public final void zzae(long j) {
            this.zzfn |= 16384;
            this.zzhe = j;
        }

        public final void zzaf(long j) {
            this.zzfn |= 2097152;
            this.zzhm = j;
        }

        public final void zzag(long j) {
            this.zzfn |= 4194304;
            this.zzhn = j;
        }

        public final void zzah(long j) {
            this.zzfn |= 8388608;
            this.zzho = j;
        }

        public final void zzai(long j) {
            this.zzfn |= 67108864;
            this.zzhr = j;
        }

        public final void zzaj() {
            this.zzhj = zzbin();
        }

        public final void zzaj(long j) {
            this.zzfn |= 134217728;
            this.zzhs = j;
        }

        public final void zzak(long j) {
            this.zzfo |= 2048;
            this.zzii = j;
        }

        public static zzb zzap() {
            return zzik.zzbii();
        }

        public static zza zzaq() {
            return zzik;
        }

        public final void zzb(zze zzeVar) {
            zzeVar.getClass();
            zzell<zze> zzellVar = this.zzhj;
            if (!zzellVar.zzbge()) {
                this.zzhj = zzelb.zza(zzellVar);
            }
            this.zzhj.add(zzeVar);
        }

        public final void zzb(zzcq zzcqVar) {
            this.zzhb = zzcqVar.zzv();
            this.zzfn |= 2048;
        }

        public final void zzc(zzcq zzcqVar) {
            this.zzhh = zzcqVar.zzv();
            this.zzfn |= 131072;
        }

        public final void zzd(zzcq zzcqVar) {
            this.zzia = zzcqVar.zzv();
            this.zzfo |= 8;
        }

        public final void zze(long j) {
            this.zzdv |= 4;
            this.zzfq = j;
        }

        public final void zze(zzcq zzcqVar) {
            this.zzib = zzcqVar.zzv();
            this.zzfo |= 16;
        }

        public final void zzf(long j) {
            this.zzdv |= 16;
            this.zzfs = j;
        }

        public final void zzg(long j) {
            this.zzdv |= 32;
            this.zzft = j;
        }

        public final void zzh(long j) {
            this.zzdv |= 1024;
            this.zzfy = j;
        }

        public final void zzi(long j) {
            this.zzdv |= 2048;
            this.zzfz = j;
        }

        public final void zzj(long j) {
            this.zzdv |= 8192;
            this.zzgb = j;
        }

        public final void zzk(long j) {
            this.zzdv |= 16384;
            this.zzgc = j;
        }

        public final void zzl(long j) {
            this.zzdv |= 32768;
            this.zzgd = j;
        }

        public final void zzm(long j) {
            this.zzdv |= 65536;
            this.zzge = j;
        }

        public final void zzn(long j) {
            this.zzdv |= 524288;
            this.zzgh = j;
        }

        public final void zzo(long j) {
            this.zzdv |= 1048576;
            this.zzgi = j;
        }

        public final void zzp(long j) {
            this.zzdv |= 2097152;
            this.zzgj = j;
        }

        public final void zzq(long j) {
            this.zzdv |= 33554432;
            this.zzgm = j;
        }

        public final void zzr(long j) {
            this.zzdv |= 67108864;
            this.zzgn = j;
        }

        public final void zzs(long j) {
            this.zzdv |= 134217728;
            this.zzgo = j;
        }

        public final void zzt(long j) {
            this.zzdv |= 536870912;
            this.zzgp = j;
        }

        public final void zzt(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzfp = str;
        }

        public final void zzu(long j) {
            this.zzdv |= BasicMeasure.EXACTLY;
            this.zzgq = j;
        }

        public final void zzu(String str) {
            str.getClass();
            this.zzdv |= 2;
            this.zzef = str;
        }

        public final void zzv(long j) {
            this.zzdv |= Integer.MIN_VALUE;
            this.zzgr = j;
        }

        public final void zzv(String str) {
            str.getClass();
            this.zzdv |= 4194304;
            this.zzfg = str;
        }

        public final void zzw(long j) {
            this.zzfn |= 2;
            this.zzgt = j;
        }

        public final void zzw(String str) {
            str.getClass();
            this.zzdv |= 16777216;
            this.zzgl = str;
        }

        public final void zzx(long j) {
            this.zzfn |= 4;
            this.zzgu = j;
        }

        public final void zzx(String str) {
            str.getClass();
            this.zzdv |= 268435456;
            this.zzfi = str;
        }

        public final void zzy(long j) {
            this.zzfn |= 8;
            this.zzgv = j;
        }

        public final void zzy(String str) {
            str.getClass();
            this.zzfn |= 128;
            this.zzfj = str;
        }

        public final void zzz(long j) {
            this.zzfn |= 16;
            this.zzgw = j;
        }

        public final void zzz(String str) {
            str.getClass();
            this.zzfn |= 256;
            this.zzfk = str;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzik, "\u0001N��\u0003\u0001ÉN��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂF\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈG\u0019ဂK\u001aဌH\u001bဈ\u0016\u001cဇI\u001dဈ\u0018\u001eဈJ\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEÉဉL", new Object[]{"zzdv", "zzfn", "zzfo", "zzfp", "zzef", "zzfq", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzfz", "zzga", "zzgb", "zzgc", "zzgd", "zzge", "zzgf", "zzgg", "zzgh", "zzid", "zzgi", "zzgj", "zzie", "zzii", "zzif", zzc.zzw(), "zzfg", "zzig", "zzgl", "zzih", "zzgm", "zzgn", "zzgo", "zzfi", "zzgp", "zzgq", "zzgr", "zzgs", "zzgt", "zzgu", "zzgv", "zzgw", "zzhj", zze.class, "zzgx", "zzgy", "zzfj", "zzfk", "zzha", zzcq.zzw(), "zzhb", zzcq.zzw(), "zzhi", "zzhc", "zzhd", "zzhe", "zzhf", "zzhg", "zzhh", zzcq.zzw(), "zzhk", "zzhl", "zzhm", "zzhn", "zzho", "zzhr", "zzhs", "zzhu", "zzhv", zzcm.zzw(), "zzhw", zzcr.zzw(), "zzht", "zzhx", EnumC2602zza.zzw(), "zzhy", "zzhz", "zzhp", "zzhq", "zzia", zzcq.zzw(), "zzgz", "zzgk", "zzib", zzcq.zzw(), "zzic", "zzij"});
                case 4:
                    return zzik;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzik);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zzaf() {
            return this.zzfg;
        }

        public final boolean zzai() {
            return (this.zzdv & 4194304) != 0;
        }

        public final String zzak() {
            return this.zzie;
        }

        public final zzc zzal() {
            zzc zzl = zzc.zzl(this.zzif);
            zzc zzcVar = zzl;
            if (zzl == null) {
                zzcVar = zzc.DEVICE_IDENTIFIER_GLOBAL_ID;
            }
            return zzcVar;
        }

        public final boolean zzam() {
            return this.zzig;
        }

        public final boolean zzan() {
            return (this.zzfo & 4096) != 0;
        }

        public final zzd zzao() {
            zzd zzdVar = this.zzij;
            zzd zzdVar2 = zzdVar;
            if (zzdVar == null) {
                zzdVar2 = zzd.zzbi();
            }
            return zzdVar2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzb.class */
    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzlf;
        private int zzdv;
        private long zzla;
        private int zzlb;
        private boolean zzlc;
        private zzelh zzld = zzbil();
        private long zzle;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzb$zza.class */
        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzlf);
            }

            /* synthetic */ zza(zzcg zzcgVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzlf = zzbVar;
            zzelb.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzlf, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဂ��\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzdv", "zzla", "zzlb", "zzlc", "zzld", "zzle"});
                case 4:
                    return zzlf;
                case 5:
                    zzemx<zzb> zzemxVar = zzek;
                    zzemx<zzb> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzemx<zzb> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzlf);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzc.class */
    public static final class zzc extends zzelb<zzc, zza> implements zzemq {
        private static volatile zzemx<zzc> zzek;
        private static final zzc zzlk;
        private int zzdv;
        private zzejr zzlg = zzejr.zzilz;
        private zzejr zzlh = zzejr.zzilz;
        private zzejr zzli = zzejr.zzilz;
        private zzejr zzlj = zzejr.zzilz;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzc$zza.class */
        public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
            private zza() {
                super(zzc.zzlk);
            }

            /* synthetic */ zza(zzcg zzcgVar) {
                this();
            }

            public final zza zze(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zza(zzejrVar);
                return this;
            }

            public final zza zzf(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzb(zzejrVar);
                return this;
            }

            public final zza zzg(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzc(zzejrVar);
                return this;
            }

            public final zza zzh(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzc) this.zziqp).zzd(zzejrVar);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzlk = zzcVar;
            zzelb.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        public final void zza(zzejr zzejrVar) {
            zzejrVar.getClass();
            this.zzdv |= 1;
            this.zzlg = zzejrVar;
        }

        public static zzc zzb(byte[] bArr, zzeko zzekoVar) throws zzelo {
            return (zzc) zzelb.zza(zzlk, bArr, zzekoVar);
        }

        public final void zzb(zzejr zzejrVar) {
            zzejrVar.getClass();
            this.zzdv |= 2;
            this.zzlh = zzejrVar;
        }

        public static zza zzbe() {
            return zzlk.zzbii();
        }

        public final void zzc(zzejr zzejrVar) {
            zzejrVar.getClass();
            this.zzdv |= 4;
            this.zzli = zzejrVar;
        }

        public final void zzd(zzejr zzejrVar) {
            zzejrVar.getClass();
            this.zzdv |= 8;
            this.zzlj = zzejrVar;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzlk, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ည��\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzdv", "zzlg", "zzlh", "zzli", "zzlj"});
                case 4:
                    return zzlk;
                case 5:
                    zzemx<zzc> zzemxVar = zzek;
                    zzemx<zzc> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzemx<zzc> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzlk);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final zzejr zzba() {
            return this.zzlg;
        }

        public final zzejr zzbb() {
            return this.zzlh;
        }

        public final zzejr zzbc() {
            return this.zzli;
        }

        public final zzejr zzbd() {
            return this.zzlj;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzd.class */
    public static final class zzd extends zzelb<zzd, zza> implements zzemq {
        private static volatile zzemx<zzd> zzek;
        private static final zzd zzme;
        private int zzdv;
        private long zzla;
        private String zzmc = "";
        private zzejr zzmd = zzejr.zzilz;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzd$zza.class */
        public static final class zza extends zzelb.zzb<zzd, zza> implements zzemq {
            private zza() {
                super(zzd.zzme);
            }

            /* synthetic */ zza(zzcg zzcgVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzme = zzdVar;
            zzelb.zza(zzd.class, zzdVar);
        }

        private zzd() {
        }

        public static zzd zzbi() {
            return zzme;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzme, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001ဂ��\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzdv", "zzla", "zzmc", "zzmd"});
                case 4:
                    return zzme;
                case 5:
                    zzemx<zzd> zzemxVar = zzek;
                    zzemx<zzd> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzemx<zzd> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzme);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zzbg() {
            return (this.zzdv & 1) != 0;
        }

        public final long zzbh() {
            return this.zzla;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zze.class */
    public static final class zze extends zzelb<zze, zza> implements zzemq {
        private static volatile zzemx<zze> zzek;
        private static final zze zzmf;
        private int zzdv;
        private String zzfl = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zze$zza.class */
        public static final class zza extends zzelb.zzb<zze, zza> implements zzemq {
            private zza() {
                super(zze.zzmf);
            }

            /* synthetic */ zza(zzcg zzcgVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zzmf = zzeVar;
            zzelb.zza(zze.class, zzeVar);
        }

        private zze() {
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzmf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zzfl"});
                case 4:
                    return zzmf;
                case 5:
                    zzemx<zze> zzemxVar = zzek;
                    zzemx<zze> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzemx<zze> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzmf);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzf.class */
    public static final class zzf extends zzelb<zzf, zza> implements zzemq {
        private static volatile zzemx<zzf> zzek;
        private static final zzf zzmh;
        private int zzdv;
        private zzell<zzejr> zzmg = zzbin();
        private zzejr zzlh = zzejr.zzilz;
        private int zzhw = 1;
        private int zzhv = 1;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcf$zzf$zza.class */
        public static final class zza extends zzelb.zzb<zzf, zza> implements zzemq {
            private zza() {
                super(zzf.zzmh);
            }

            /* synthetic */ zza(zzcg zzcgVar) {
                this();
            }

            public final zza zza(zzcm zzcmVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzb(zzcmVar);
                return this;
            }

            public final zza zzi(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzk(zzejrVar);
                return this;
            }

            public final zza zzj(zzejr zzejrVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzf) this.zziqp).zzb(zzejrVar);
                return this;
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzmh = zzfVar;
            zzelb.zza(zzf.class, zzfVar);
        }

        private zzf() {
        }

        public final void zzb(zzcm zzcmVar) {
            this.zzhv = zzcmVar.zzv();
            this.zzdv |= 4;
        }

        public final void zzb(zzejr zzejrVar) {
            zzejrVar.getClass();
            this.zzdv |= 1;
            this.zzlh = zzejrVar;
        }

        public static zza zzbl() {
            return zzmh.zzbii();
        }

        public final void zzk(zzejr zzejrVar) {
            zzejrVar.getClass();
            zzell<zzejr> zzellVar = this.zzmg;
            if (!zzellVar.zzbge()) {
                this.zzmg = zzelb.zza(zzellVar);
            }
            this.zzmg.add(zzejrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzcg.zzel[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzmh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002ည��\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzdv", "zzmg", "zzlh", "zzhw", zzcr.zzw(), "zzhv", zzcm.zzw()});
                case 4:
                    return zzmh;
                case 5:
                    zzemx<zzf> zzemxVar = zzek;
                    zzemx<zzf> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzemx<zzf> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzmh);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
