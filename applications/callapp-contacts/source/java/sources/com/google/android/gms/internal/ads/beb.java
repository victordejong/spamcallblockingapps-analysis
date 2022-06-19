package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.internal.ads.dnh;
import io.objectbox.model.PropertyFlags;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb.class */
public final class beb {

    /* renamed from: com.google.android.gms.internal.ads.beb$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a.class */
    public static final class C12217a extends dnh<C12217a, C12219b> implements dov {
        private static volatile dpc<C12217a> zzek;
        private static final C12217a zzil;
        private int zzdv;
        private int zzfn;
        int zzfo;
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
        private C12228b zzgs;
        private C12224f zzhi;
        private C12226g zzhk;
        private int zzhv;
        private int zzhw;
        private int zzhx;
        private C12234e zzhy;
        private long zzie;
        boolean zzih;
        private long zzij;
        private C12232d zzik;
        private String zzfp = "";
        private String zzef = "";
        private String zzga = "";
        String zzfg = "";
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
        private dnr<C12224f> zzhj = dph.m16197d();
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
        private dnr<C12222e> zzid = dph.m16197d();
        String zzif = "";
        int zzig = 2;
        private String zzii = "";

        /* renamed from: com.google.android.gms.internal.ads.beb$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$a.class */
        public enum EnumC12218a implements dnm {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);
            
            private static final dnl<EnumC12218a> zzes = new bhe();
            private final int value;

            EnumC12218a(int i) {
                this.value = i;
            }

            public static EnumC12218a zzk(int i) {
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

            public static dno zzw() {
                return bgd.f43858a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.dnm
            public final int zzv() {
                return this.value;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$b.class */
        public static final class C12219b extends dnh.C12383b<C12217a, C12219b> implements dov {
            private C12219b() {
                super(C12217a.zzil);
            }

            /* synthetic */ C12219b(bfc bfcVar) {
                this();
            }

            /* renamed from: A */
            public final C12219b m18059A(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18118A((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: B */
            public final C12219b m18058B(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18117B((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: C */
            public final C12219b m18057C(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18116C((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: D */
            public final C12219b m18056D(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18115D((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: E */
            public final C12219b m18055E(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18114E((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: F */
            public final C12219b m18054F(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18113F((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: G */
            public final C12219b m18053G(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18112G((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18052a() {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18110a((C12217a) this.f47274a);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18051a(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18109a((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18050a(EnumC12220c enumC12220c) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18108a((C12217a) this.f47274a, enumC12220c);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18049a(C12224f c12224f) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18107a((C12217a) this.f47274a, c12224f);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18048a(C12226g c12226g) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18106a((C12217a) this.f47274a, c12226g);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18047a(bpi bpiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18105a((C12217a) this.f47274a, bpiVar);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18046a(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18104a((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: a */
            public final C12219b m18045a(boolean z) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18103a((C12217a) this.f47274a, z);
                return this;
            }

            /* renamed from: b */
            public final C12219b m18044b(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18100b((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: b */
            public final C12219b m18043b(C12224f c12224f) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18099b((C12217a) this.f47274a, c12224f);
                return this;
            }

            /* renamed from: b */
            public final C12219b m18042b(bpi bpiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18098b((C12217a) this.f47274a, bpiVar);
                return this;
            }

            /* renamed from: b */
            public final C12219b m18041b(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18097b((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: c */
            public final C12219b m18040c(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18095c((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: c */
            public final C12219b m18039c(bpi bpiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18094c((C12217a) this.f47274a, bpiVar);
                return this;
            }

            /* renamed from: c */
            public final C12219b m18038c(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18093c((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: d */
            public final C12219b m18037d(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18091d((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: d */
            public final C12219b m18036d(bpi bpiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18090d((C12217a) this.f47274a, bpiVar);
                return this;
            }

            /* renamed from: d */
            public final C12219b m18035d(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18089d((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: e */
            public final C12219b m18034e(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18087e((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: e */
            public final C12219b m18033e(bpi bpiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18086e((C12217a) this.f47274a, bpiVar);
                return this;
            }

            /* renamed from: e */
            public final C12219b m18032e(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18085e((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: f */
            public final C12219b m18031f(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18084f((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: f */
            public final C12219b m18030f(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18083f((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: g */
            public final C12219b m18029g(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18082g((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: g */
            public final C12219b m18028g(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18081g((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: h */
            public final C12219b m18027h(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18080h((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: h */
            public final C12219b m18026h(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18079h((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: i */
            public final C12219b m18025i(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18078i((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: i */
            public final C12219b m18024i(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18077i((C12217a) this.f47274a, str);
                return this;
            }

            /* renamed from: j */
            public final C12219b m18023j(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18076j((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: k */
            public final C12219b m18022k(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18075k((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: l */
            public final C12219b m18021l(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18074l((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: m */
            public final C12219b m18020m(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18073m((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: n */
            public final C12219b m18019n(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18072n((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: o */
            public final C12219b m18018o(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18071o((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: p */
            public final C12219b m18017p(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18070p((C12217a) this.f47274a, j);
                return this;
            }

            @Deprecated
            /* renamed from: q */
            public final C12219b m18016q(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18069q((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: r */
            public final C12219b m18015r(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18068r((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: s */
            public final C12219b m18014s(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18067s((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: t */
            public final C12219b m18013t(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18066t((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: u */
            public final C12219b m18012u(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18065u((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: v */
            public final C12219b m18011v(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18064v((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: w */
            public final C12219b m18010w(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18063w((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: x */
            public final C12219b m18009x(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18062x((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: y */
            public final C12219b m18008y(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18061y((C12217a) this.f47274a, j);
                return this;
            }

            /* renamed from: z */
            public final C12219b m18007z(long j) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12217a.m18060z((C12217a) this.f47274a, j);
                return this;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$c */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$c.class */
        public enum EnumC12220c implements dnm {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6),
            DEVICE_IDENTIFIER_PER_APP_ID(7);
            
            private static final dnl<EnumC12220c> zzes = new bie();
            private final int value;

            EnumC12220c(int i) {
                this.value = i;
            }

            public static EnumC12220c zzl(int i) {
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
                    case 7:
                        return DEVICE_IDENTIFIER_PER_APP_ID;
                    default:
                        return null;
                }
            }

            public static dno zzw() {
                return bje.f44090a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.dnm
            public final int zzv() {
                return this.value;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$d */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$d.class */
        public enum EnumC12221d implements dnm {
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
            PSN_BITSLICER_FAIL(PropertyFlags.INDEX_PARTIAL_SKIP_NULL),
            PSN_REQUEST_TYPE_FAIL(512),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(4096),
            PSN_BLANK_VALUE(PropertyFlags.UNSIGNED),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(65536),
            PSN_TINK_FAIL(131072);
            
            private static final dnl<EnumC12221d> zzes = new bkf();
            private final int value;

            EnumC12221d(int i) {
                this.value = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.dnm
            public final int zzv() {
                return this.value;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$e */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$e.class */
        public static final class C12222e extends dnh<C12222e, C12223a> implements dov {
            private static volatile dpc<C12222e> zzek;
            private static final C12222e zzkf;
            private int zzdv;
            private int zzkd;
            private long zzke = -1;

            /* renamed from: com.google.android.gms.internal.ads.beb$a$e$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$e$a.class */
            public static final class C12223a extends dnh.C12383b<C12222e, C12223a> implements dov {
                private C12223a() {
                    super(C12222e.zzkf);
                }

                /* synthetic */ C12223a(bfc bfcVar) {
                    this();
                }
            }

            static {
                C12222e c12222e = new C12222e();
                zzkf = c12222e;
                dnh.m16339a(C12222e.class, c12222e);
            }

            private C12222e() {
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (bfc.f43775a[i - 1]) {
                    case 1:
                        return new C12222e();
                    case 2:
                        return new C12223a(null);
                    case 3:
                        return m16341a(zzkf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဂ\u0001", new Object[]{"zzdv", "zzkd", EnumC12220c.zzw(), "zzke"});
                    case 4:
                        return zzkf;
                    case 5:
                        dpc<C12222e> dpcVar = zzek;
                        dpc<C12222e> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12222e.class) {
                                try {
                                    dpc<C12222e> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzkf);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$f */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$f.class */
        public static final class C12224f extends dnh<C12224f, C12225a> implements dov {
            private static volatile dpc<C12224f> zzek;
            private static final C12224f zzkz;
            private int zzdv;
            private long zzkt;
            private long zzku;
            private long zzgb = -1;
            private long zzgc = -1;
            private long zzkg = -1;
            private long zzkh = -1;
            private long zzki = -1;
            private long zzkj = -1;
            private int zzkk = 1000;
            private long zzkl = -1;
            private long zzkm = -1;
            private long zzkn = -1;
            private int zzko = 1000;
            private long zzkp = -1;
            private long zzkq = -1;
            private long zzkr = -1;
            private long zzks = -1;
            private long zzkv = -1;
            private long zzkw = -1;
            private long zzkx = -1;
            private long zzky = -1;

            /* renamed from: com.google.android.gms.internal.ads.beb$a$f$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$f$a.class */
            public static final class C12225a extends dnh.C12383b<C12224f, C12225a> implements dov {
                private C12225a() {
                    super(C12224f.zzkz);
                }

                /* synthetic */ C12225a(bfc bfcVar) {
                    this();
                }

                /* renamed from: a */
                public final C12225a m17983a() {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m18004a((C12224f) this.f47274a);
                    return this;
                }

                /* renamed from: a */
                public final C12225a m17982a(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m18003a((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: a */
                public final C12225a m17981a(bpi bpiVar) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m18002a((C12224f) this.f47274a, bpiVar);
                    return this;
                }

                /* renamed from: b */
                public final C12225a m17980b(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m18000b((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: b */
                public final C12225a m17979b(bpi bpiVar) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17999b((C12224f) this.f47274a, bpiVar);
                    return this;
                }

                /* renamed from: c */
                public final C12225a m17978c(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17998c((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: d */
                public final C12225a m17977d(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17997d((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: e */
                public final C12225a m17976e(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17996e((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: f */
                public final C12225a m17975f(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17995f((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: g */
                public final C12225a m17974g(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17994g((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: h */
                public final C12225a m17973h(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17993h((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: i */
                public final C12225a m17972i(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17992i((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: j */
                public final C12225a m17971j(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17991j((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: k */
                public final C12225a m17970k(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17990k((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: l */
                public final C12225a m17969l(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17989l((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: m */
                public final C12225a m17968m(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17988m((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: n */
                public final C12225a m17967n(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17987n((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: o */
                public final C12225a m17966o(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17986o((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: p */
                public final C12225a m17965p(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17985p((C12224f) this.f47274a, j);
                    return this;
                }

                /* renamed from: q */
                public final C12225a m17964q(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12224f.m17984q((C12224f) this.f47274a, j);
                    return this;
                }
            }

            static {
                C12224f c12224f = new C12224f();
                zzkz = c12224f;
                dnh.m16339a(C12224f.class, c12224f);
            }

            private C12224f() {
            }

            /* renamed from: a */
            public static C12225a m18005a() {
                return zzkz.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m18004a(C12224f c12224f) {
                c12224f.zzdv &= -9;
                c12224f.zzkh = -1L;
            }

            /* renamed from: a */
            static /* synthetic */ void m18003a(C12224f c12224f, long j) {
                c12224f.zzdv |= 1;
                c12224f.zzgb = j;
            }

            /* renamed from: a */
            static /* synthetic */ void m18002a(C12224f c12224f, bpi bpiVar) {
                c12224f.zzkk = bpiVar.zzv();
                c12224f.zzdv |= 64;
            }

            /* renamed from: b */
            static /* synthetic */ void m18000b(C12224f c12224f, long j) {
                c12224f.zzdv |= 2;
                c12224f.zzgc = j;
            }

            /* renamed from: b */
            static /* synthetic */ void m17999b(C12224f c12224f, bpi bpiVar) {
                c12224f.zzko = bpiVar.zzv();
                c12224f.zzdv |= 1024;
            }

            /* renamed from: c */
            static /* synthetic */ void m17998c(C12224f c12224f, long j) {
                c12224f.zzdv |= 4;
                c12224f.zzkg = j;
            }

            /* renamed from: d */
            static /* synthetic */ void m17997d(C12224f c12224f, long j) {
                c12224f.zzdv |= 8;
                c12224f.zzkh = j;
            }

            /* renamed from: e */
            static /* synthetic */ void m17996e(C12224f c12224f, long j) {
                c12224f.zzdv |= 16;
                c12224f.zzki = j;
            }

            /* renamed from: f */
            static /* synthetic */ void m17995f(C12224f c12224f, long j) {
                c12224f.zzdv |= 32;
                c12224f.zzkj = j;
            }

            /* renamed from: g */
            static /* synthetic */ void m17994g(C12224f c12224f, long j) {
                c12224f.zzdv |= 128;
                c12224f.zzkl = j;
            }

            /* renamed from: h */
            static /* synthetic */ void m17993h(C12224f c12224f, long j) {
                c12224f.zzdv |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                c12224f.zzkm = j;
            }

            /* renamed from: i */
            static /* synthetic */ void m17992i(C12224f c12224f, long j) {
                c12224f.zzdv |= 512;
                c12224f.zzkn = j;
            }

            /* renamed from: j */
            static /* synthetic */ void m17991j(C12224f c12224f, long j) {
                c12224f.zzdv |= 2048;
                c12224f.zzkp = j;
            }

            /* renamed from: k */
            static /* synthetic */ void m17990k(C12224f c12224f, long j) {
                c12224f.zzdv |= 4096;
                c12224f.zzkq = j;
            }

            /* renamed from: l */
            static /* synthetic */ void m17989l(C12224f c12224f, long j) {
                c12224f.zzdv |= PropertyFlags.UNSIGNED;
                c12224f.zzkr = j;
            }

            /* renamed from: m */
            static /* synthetic */ void m17988m(C12224f c12224f, long j) {
                c12224f.zzdv |= 16384;
                c12224f.zzks = j;
            }

            /* renamed from: n */
            static /* synthetic */ void m17987n(C12224f c12224f, long j) {
                c12224f.zzdv |= 32768;
                c12224f.zzkt = j;
            }

            /* renamed from: o */
            static /* synthetic */ void m17986o(C12224f c12224f, long j) {
                c12224f.zzdv |= 65536;
                c12224f.zzku = j;
            }

            /* renamed from: p */
            static /* synthetic */ void m17985p(C12224f c12224f, long j) {
                c12224f.zzdv |= 131072;
                c12224f.zzkv = j;
            }

            /* renamed from: q */
            static /* synthetic */ void m17984q(C12224f c12224f, long j) {
                c12224f.zzdv |= 262144;
                c12224f.zzkw = j;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (bfc.f43775a[i - 1]) {
                    case 1:
                        return new C12224f();
                    case 2:
                        return new C12225a(null);
                    case 3:
                        return m16341a(zzkz, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzdv", "zzgb", "zzgc", "zzkg", "zzkh", "zzki", "zzkj", "zzkk", bpi.zzw(), "zzkl", "zzkm", "zzkn", "zzko", bpi.zzw(), "zzkp", "zzkq", "zzkr", "zzks", "zzkt", "zzku", "zzkv", "zzkw", "zzkx", "zzky"});
                    case 4:
                        return zzkz;
                    case 5:
                        dpc<C12224f> dpcVar = zzek;
                        dpc<C12224f> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12224f.class) {
                                try {
                                    dpc<C12224f> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzkz);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.beb$a$g */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$g.class */
        public static final class C12226g extends dnh<C12226g, C12227a> implements dov {
            private static volatile dpc<C12226g> zzek;
            private static final C12226g zzle;
            private int zzdv;
            private long zzhf = -1;
            private long zzhg = -1;
            private long zzla = -1;
            private long zzlb = -1;
            private long zzlc = -1;
            private long zzld = -1;

            /* renamed from: com.google.android.gms.internal.ads.beb$a$g$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$g$a.class */
            public static final class C12227a extends dnh.C12383b<C12226g, C12227a> implements dov {
                private C12227a() {
                    super(C12226g.zzle);
                }

                /* synthetic */ C12227a(bfc bfcVar) {
                    this();
                }

                /* renamed from: a */
                public final C12227a m17957a(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12226g.m17962a((C12226g) this.f47274a, j);
                    return this;
                }

                /* renamed from: b */
                public final C12227a m17956b(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12226g.m17960b((C12226g) this.f47274a, j);
                    return this;
                }

                /* renamed from: c */
                public final C12227a m17955c(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12226g.m17959c((C12226g) this.f47274a, j);
                    return this;
                }

                /* renamed from: d */
                public final C12227a m17954d(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12226g.m17958d((C12226g) this.f47274a, j);
                    return this;
                }
            }

            static {
                C12226g c12226g = new C12226g();
                zzle = c12226g;
                dnh.m16339a(C12226g.class, c12226g);
            }

            private C12226g() {
            }

            /* renamed from: a */
            public static C12227a m17963a() {
                return zzle.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m17962a(C12226g c12226g, long j) {
                c12226g.zzdv |= 4;
                c12226g.zzla = j;
            }

            /* renamed from: b */
            static /* synthetic */ void m17960b(C12226g c12226g, long j) {
                c12226g.zzdv |= 8;
                c12226g.zzlb = j;
            }

            /* renamed from: c */
            static /* synthetic */ void m17959c(C12226g c12226g, long j) {
                c12226g.zzdv |= 16;
                c12226g.zzlc = j;
            }

            /* renamed from: d */
            static /* synthetic */ void m17958d(C12226g c12226g, long j) {
                c12226g.zzdv |= 32;
                c12226g.zzld = j;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (bfc.f43775a[i - 1]) {
                    case 1:
                        return new C12226g();
                    case 2:
                        return new C12227a(null);
                    case 3:
                        return m16341a(zzle, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzdv", "zzhf", "zzhg", "zzla", "zzlb", "zzlc", "zzld"});
                    case 4:
                        return zzle;
                    case 5:
                        dpc<C12226g> dpcVar = zzek;
                        dpc<C12226g> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12226g.class) {
                                try {
                                    dpc<C12226g> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzle);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
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
            C12217a c12217a = new C12217a();
            zzil = c12217a;
            dnh.m16339a(C12217a.class, c12217a);
        }

        private C12217a() {
        }

        /* renamed from: A */
        static /* synthetic */ void m18118A(C12217a c12217a, long j) {
            c12217a.zzfn |= 16384;
            c12217a.zzhe = j;
        }

        /* renamed from: B */
        static /* synthetic */ void m18117B(C12217a c12217a, long j) {
            c12217a.zzfn |= 2097152;
            c12217a.zzhm = j;
        }

        /* renamed from: C */
        static /* synthetic */ void m18116C(C12217a c12217a, long j) {
            c12217a.zzfn |= 4194304;
            c12217a.zzhn = j;
        }

        /* renamed from: D */
        static /* synthetic */ void m18115D(C12217a c12217a, long j) {
            c12217a.zzfn |= 8388608;
            c12217a.zzho = j;
        }

        /* renamed from: E */
        static /* synthetic */ void m18114E(C12217a c12217a, long j) {
            c12217a.zzfn |= 67108864;
            c12217a.zzhr = j;
        }

        /* renamed from: F */
        static /* synthetic */ void m18113F(C12217a c12217a, long j) {
            c12217a.zzfn |= 134217728;
            c12217a.zzhs = j;
        }

        /* renamed from: G */
        static /* synthetic */ void m18112G(C12217a c12217a, long j) {
            c12217a.zzfo |= 2048;
            c12217a.zzij = j;
        }

        /* renamed from: a */
        public static C12217a m18102a(byte[] bArr, dmt dmtVar) throws zzenn {
            return (C12217a) dnh.m16344a(zzil, bArr, dmtVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m18110a(C12217a c12217a) {
            c12217a.zzhj = dph.m16197d();
        }

        /* renamed from: a */
        static /* synthetic */ void m18109a(C12217a c12217a, long j) {
            c12217a.zzdv |= 4;
            c12217a.zzfq = j;
        }

        /* renamed from: a */
        static /* synthetic */ void m18108a(C12217a c12217a, EnumC12220c enumC12220c) {
            c12217a.zzig = enumC12220c.zzv();
            c12217a.zzfo |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }

        /* renamed from: a */
        static /* synthetic */ void m18107a(C12217a c12217a, C12224f c12224f) {
            c12224f.getClass();
            c12217a.zzhi = c12224f;
            c12217a.zzfn |= 262144;
        }

        /* renamed from: a */
        static /* synthetic */ void m18106a(C12217a c12217a, C12226g c12226g) {
            c12226g.getClass();
            c12217a.zzhk = c12226g;
            c12217a.zzfn |= 524288;
        }

        /* renamed from: a */
        static /* synthetic */ void m18105a(C12217a c12217a, bpi bpiVar) {
            c12217a.zzha = bpiVar.zzv();
            c12217a.zzfn |= 1024;
        }

        /* renamed from: a */
        static /* synthetic */ void m18104a(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzdv |= 1;
            c12217a.zzfp = str;
        }

        /* renamed from: a */
        static /* synthetic */ void m18103a(C12217a c12217a, boolean z) {
            c12217a.zzfo |= 512;
            c12217a.zzih = z;
        }

        /* renamed from: b */
        static /* synthetic */ void m18100b(C12217a c12217a, long j) {
            c12217a.zzdv |= 16;
            c12217a.zzfs = j;
        }

        /* renamed from: b */
        static /* synthetic */ void m18099b(C12217a c12217a, C12224f c12224f) {
            c12224f.getClass();
            dnr<C12224f> dnrVar = c12217a.zzhj;
            if (!dnrVar.mo16298a()) {
                c12217a.zzhj = dnh.m16342a(dnrVar);
            }
            c12217a.zzhj.add(c12224f);
        }

        /* renamed from: b */
        static /* synthetic */ void m18098b(C12217a c12217a, bpi bpiVar) {
            c12217a.zzhb = bpiVar.zzv();
            c12217a.zzfn |= 2048;
        }

        /* renamed from: b */
        static /* synthetic */ void m18097b(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzdv |= 2;
            c12217a.zzef = str;
        }

        /* renamed from: c */
        public static C12219b m18096c() {
            return zzil.m16335i();
        }

        /* renamed from: c */
        static /* synthetic */ void m18095c(C12217a c12217a, long j) {
            c12217a.zzdv |= 32;
            c12217a.zzft = j;
        }

        /* renamed from: c */
        static /* synthetic */ void m18094c(C12217a c12217a, bpi bpiVar) {
            c12217a.zzhh = bpiVar.zzv();
            c12217a.zzfn |= 131072;
        }

        /* renamed from: c */
        static /* synthetic */ void m18093c(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzdv |= 4194304;
            c12217a.zzfg = str;
        }

        /* renamed from: d */
        public static C12217a m18092d() {
            return zzil;
        }

        /* renamed from: d */
        static /* synthetic */ void m18091d(C12217a c12217a, long j) {
            c12217a.zzdv |= 1024;
            c12217a.zzfy = j;
        }

        /* renamed from: d */
        static /* synthetic */ void m18090d(C12217a c12217a, bpi bpiVar) {
            c12217a.zzia = bpiVar.zzv();
            c12217a.zzfo |= 8;
        }

        /* renamed from: d */
        static /* synthetic */ void m18089d(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzdv |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            c12217a.zzgl = str;
        }

        /* renamed from: e */
        static /* synthetic */ void m18087e(C12217a c12217a, long j) {
            c12217a.zzdv |= 2048;
            c12217a.zzfz = j;
        }

        /* renamed from: e */
        static /* synthetic */ void m18086e(C12217a c12217a, bpi bpiVar) {
            c12217a.zzib = bpiVar.zzv();
            c12217a.zzfo |= 16;
        }

        /* renamed from: e */
        static /* synthetic */ void m18085e(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzdv |= 268435456;
            c12217a.zzfi = str;
        }

        /* renamed from: f */
        static /* synthetic */ void m18084f(C12217a c12217a, long j) {
            c12217a.zzdv |= PropertyFlags.UNSIGNED;
            c12217a.zzgb = j;
        }

        /* renamed from: f */
        static /* synthetic */ void m18083f(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzfn |= 128;
            c12217a.zzfj = str;
        }

        /* renamed from: g */
        static /* synthetic */ void m18082g(C12217a c12217a, long j) {
            c12217a.zzdv |= 16384;
            c12217a.zzgc = j;
        }

        /* renamed from: g */
        static /* synthetic */ void m18081g(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzfn |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            c12217a.zzfk = str;
        }

        /* renamed from: h */
        static /* synthetic */ void m18080h(C12217a c12217a, long j) {
            c12217a.zzdv |= 32768;
            c12217a.zzgd = j;
        }

        /* renamed from: h */
        static /* synthetic */ void m18079h(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzfn |= 268435456;
            c12217a.zzht = str;
        }

        /* renamed from: i */
        static /* synthetic */ void m18078i(C12217a c12217a, long j) {
            c12217a.zzdv |= 65536;
            c12217a.zzge = j;
        }

        /* renamed from: i */
        static /* synthetic */ void m18077i(C12217a c12217a, String str) {
            str.getClass();
            c12217a.zzfo |= 128;
            c12217a.zzif = str;
        }

        /* renamed from: j */
        static /* synthetic */ void m18076j(C12217a c12217a, long j) {
            c12217a.zzdv |= 524288;
            c12217a.zzgh = j;
        }

        /* renamed from: k */
        static /* synthetic */ void m18075k(C12217a c12217a, long j) {
            c12217a.zzdv |= 1048576;
            c12217a.zzgi = j;
        }

        /* renamed from: l */
        static /* synthetic */ void m18074l(C12217a c12217a, long j) {
            c12217a.zzdv |= 2097152;
            c12217a.zzgj = j;
        }

        /* renamed from: m */
        static /* synthetic */ void m18073m(C12217a c12217a, long j) {
            c12217a.zzdv |= 33554432;
            c12217a.zzgm = j;
        }

        /* renamed from: n */
        static /* synthetic */ void m18072n(C12217a c12217a, long j) {
            c12217a.zzdv |= 67108864;
            c12217a.zzgn = j;
        }

        /* renamed from: o */
        static /* synthetic */ void m18071o(C12217a c12217a, long j) {
            c12217a.zzdv |= 134217728;
            c12217a.zzgo = j;
        }

        /* renamed from: p */
        static /* synthetic */ void m18070p(C12217a c12217a, long j) {
            c12217a.zzdv |= 536870912;
            c12217a.zzgp = j;
        }

        /* renamed from: q */
        static /* synthetic */ void m18069q(C12217a c12217a, long j) {
            c12217a.zzdv |= 1073741824;
            c12217a.zzgq = j;
        }

        /* renamed from: r */
        static /* synthetic */ void m18068r(C12217a c12217a, long j) {
            c12217a.zzdv |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            c12217a.zzgr = j;
        }

        /* renamed from: s */
        static /* synthetic */ void m18067s(C12217a c12217a, long j) {
            c12217a.zzfn |= 2;
            c12217a.zzgt = j;
        }

        /* renamed from: t */
        static /* synthetic */ void m18066t(C12217a c12217a, long j) {
            c12217a.zzfn |= 4;
            c12217a.zzgu = j;
        }

        /* renamed from: u */
        static /* synthetic */ void m18065u(C12217a c12217a, long j) {
            c12217a.zzfn |= 8;
            c12217a.zzgv = j;
        }

        /* renamed from: v */
        static /* synthetic */ void m18064v(C12217a c12217a, long j) {
            c12217a.zzfn |= 16;
            c12217a.zzgw = j;
        }

        /* renamed from: w */
        static /* synthetic */ void m18063w(C12217a c12217a, long j) {
            c12217a.zzfn |= 32;
            c12217a.zzgx = j;
        }

        /* renamed from: x */
        static /* synthetic */ void m18062x(C12217a c12217a, long j) {
            c12217a.zzfn |= 64;
            c12217a.zzgy = j;
        }

        /* renamed from: y */
        static /* synthetic */ void m18061y(C12217a c12217a, long j) {
            c12217a.zzfn |= 4096;
            c12217a.zzhc = j;
        }

        /* renamed from: z */
        static /* synthetic */ void m18060z(C12217a c12217a, long j) {
            c12217a.zzfn |= PropertyFlags.UNSIGNED;
            c12217a.zzhd = j;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12217a();
                case 2:
                    return new C12219b(null);
                case 3:
                    return m16341a(zzil, "\u0001O��\u0003\u0001ÉO��\u0002��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂF\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈG\u0019ဂK\u001aဌH\u001bဈ\u0016\u001cဇI\u001dဈ\u0018\u001eဈJ\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEN\u001bÉဉL", new Object[]{"zzdv", "zzfn", "zzfo", "zzfp", "zzef", "zzfq", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzfz", "zzga", "zzgb", "zzgc", "zzgd", "zzge", "zzgf", "zzgg", "zzgh", "zzie", "zzgi", "zzgj", "zzif", "zzij", "zzig", EnumC12220c.zzw(), "zzfg", "zzih", "zzgl", "zzii", "zzgm", "zzgn", "zzgo", "zzfi", "zzgp", "zzgq", "zzgr", "zzgs", "zzgt", "zzgu", "zzgv", "zzgw", "zzhj", C12224f.class, "zzgx", "zzgy", "zzfj", "zzfk", "zzha", bpi.zzw(), "zzhb", bpi.zzw(), "zzhi", "zzhc", "zzhd", "zzhe", "zzhf", "zzhg", "zzhh", bpi.zzw(), "zzhk", "zzhl", "zzhm", "zzhn", "zzho", "zzhr", "zzhs", "zzhu", "zzhv", blg.zzw(), "zzhw", bqj.zzw(), "zzht", "zzhx", EnumC12218a.zzw(), "zzhy", "zzhz", "zzhp", "zzhq", "zzia", bpi.zzw(), "zzgz", "zzgk", "zzib", bpi.zzw(), "zzic", "zzid", C12222e.class, "zzik"});
                case 4:
                    return zzil;
                case 5:
                    dpc<C12217a> dpcVar = zzek;
                    dpc<C12217a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12217a.class) {
                            try {
                                dpc<C12217a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzil);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final boolean m18111a() {
            return (this.zzdv & 4194304) != 0;
        }

        /* renamed from: b */
        public final C12232d m18101b() {
            C12232d c12232d = this.zzik;
            C12232d c12232d2 = c12232d;
            if (c12232d == null) {
                c12232d2 = C12232d.m17941a();
            }
            return c12232d2;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.beb$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$b.class */
    public static final class C12228b extends dnh<C12228b, C12229a> implements dov {
        private static volatile dpc<C12228b> zzek;
        private static final C12228b zzlk;
        private int zzdv;
        private long zzlf;
        private int zzlg;
        private boolean zzlh;
        private dnn zzli = dnk.m16308d();
        private long zzlj;

        /* renamed from: com.google.android.gms.internal.ads.beb$b$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$b$a.class */
        public static final class C12229a extends dnh.C12383b<C12228b, C12229a> implements dov {
            private C12229a() {
                super(C12228b.zzlk);
            }

            /* synthetic */ C12229a(bfc bfcVar) {
                this();
            }
        }

        static {
            C12228b c12228b = new C12228b();
            zzlk = c12228b;
            dnh.m16339a(C12228b.class, c12228b);
        }

        private C12228b() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12228b();
                case 2:
                    return new C12229a(null);
                case 3:
                    return m16341a(zzlk, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဂ��\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzdv", "zzlf", "zzlg", "zzlh", "zzli", "zzlj"});
                case 4:
                    return zzlk;
                case 5:
                    dpc<C12228b> dpcVar = zzek;
                    dpc<C12228b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12228b.class) {
                            try {
                                dpc<C12228b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzlk);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.beb$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$c.class */
    public static final class C12230c extends dnh<C12230c, C12231a> implements dov {
        private static volatile dpc<C12230c> zzek;
        private static final C12230c zzlp;
        private int zzdv;
        dlw zzll = dlw.f47199a;
        dlw zzlm = dlw.f47199a;
        dlw zzln = dlw.f47199a;
        dlw zzlo = dlw.f47199a;

        /* renamed from: com.google.android.gms.internal.ads.beb$c$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$c$a.class */
        public static final class C12231a extends dnh.C12383b<C12230c, C12231a> implements dov {
            private C12231a() {
                super(C12230c.zzlp);
            }

            /* synthetic */ C12231a(bfc bfcVar) {
                this();
            }

            /* renamed from: a */
            public final C12231a m17945a(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12230c.m17951a((C12230c) this.f47274a, dlwVar);
                return this;
            }

            /* renamed from: b */
            public final C12231a m17944b(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12230c.m17948b((C12230c) this.f47274a, dlwVar);
                return this;
            }

            /* renamed from: c */
            public final C12231a m17943c(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12230c.m17947c((C12230c) this.f47274a, dlwVar);
                return this;
            }

            /* renamed from: d */
            public final C12231a m17942d(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12230c.m17946d((C12230c) this.f47274a, dlwVar);
                return this;
            }
        }

        static {
            C12230c c12230c = new C12230c();
            zzlp = c12230c;
            dnh.m16339a(C12230c.class, c12230c);
        }

        private C12230c() {
        }

        /* renamed from: a */
        public static C12231a m17952a() {
            return zzlp.m16335i();
        }

        /* renamed from: a */
        public static C12230c m17950a(byte[] bArr, dmt dmtVar) throws zzenn {
            return (C12230c) dnh.m16344a(zzlp, bArr, dmtVar);
        }

        /* renamed from: a */
        static /* synthetic */ void m17951a(C12230c c12230c, dlw dlwVar) {
            dlwVar.getClass();
            c12230c.zzdv |= 1;
            c12230c.zzll = dlwVar;
        }

        /* renamed from: b */
        static /* synthetic */ void m17948b(C12230c c12230c, dlw dlwVar) {
            dlwVar.getClass();
            c12230c.zzdv |= 2;
            c12230c.zzlm = dlwVar;
        }

        /* renamed from: c */
        static /* synthetic */ void m17947c(C12230c c12230c, dlw dlwVar) {
            dlwVar.getClass();
            c12230c.zzdv |= 4;
            c12230c.zzln = dlwVar;
        }

        /* renamed from: d */
        static /* synthetic */ void m17946d(C12230c c12230c, dlw dlwVar) {
            dlwVar.getClass();
            c12230c.zzdv |= 8;
            c12230c.zzlo = dlwVar;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12230c();
                case 2:
                    return new C12231a(null);
                case 3:
                    return m16341a(zzlp, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ည��\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzdv", "zzll", "zzlm", "zzln", "zzlo"});
                case 4:
                    return zzlp;
                case 5:
                    dpc<C12230c> dpcVar = zzek;
                    dpc<C12230c> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12230c.class) {
                            try {
                                dpc<C12230c> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzlp);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.beb$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$d.class */
    public static final class C12232d extends dnh<C12232d, C12233a> implements dov {
        private static volatile dpc<C12232d> zzek;
        private static final C12232d zzmj;
        int zzdv;
        long zzlf;
        private String zzmh = "";
        private dlw zzmi = dlw.f47199a;

        /* renamed from: com.google.android.gms.internal.ads.beb$d$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$d$a.class */
        public static final class C12233a extends dnh.C12383b<C12232d, C12233a> implements dov {
            private C12233a() {
                super(C12232d.zzmj);
            }

            /* synthetic */ C12233a(bfc bfcVar) {
                this();
            }
        }

        static {
            C12232d c12232d = new C12232d();
            zzmj = c12232d;
            dnh.m16339a(C12232d.class, c12232d);
        }

        private C12232d() {
        }

        /* renamed from: a */
        public static C12232d m17941a() {
            return zzmj;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12232d();
                case 2:
                    return new C12233a(null);
                case 3:
                    return m16341a(zzmj, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001ဂ��\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzdv", "zzlf", "zzmh", "zzmi"});
                case 4:
                    return zzmj;
                case 5:
                    dpc<C12232d> dpcVar = zzek;
                    dpc<C12232d> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12232d.class) {
                            try {
                                dpc<C12232d> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzmj);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.beb$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$e.class */
    public static final class C12234e extends dnh<C12234e, C12235a> implements dov {
        private static volatile dpc<C12234e> zzek;
        private static final C12234e zzmk;
        private int zzdv;
        private String zzfl = "";

        /* renamed from: com.google.android.gms.internal.ads.beb$e$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$e$a.class */
        public static final class C12235a extends dnh.C12383b<C12234e, C12235a> implements dov {
            private C12235a() {
                super(C12234e.zzmk);
            }

            /* synthetic */ C12235a(bfc bfcVar) {
                this();
            }
        }

        static {
            C12234e c12234e = new C12234e();
            zzmk = c12234e;
            dnh.m16339a(C12234e.class, c12234e);
        }

        private C12234e() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12234e();
                case 2:
                    return new C12235a(null);
                case 3:
                    return m16341a(zzmk, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zzfl"});
                case 4:
                    return zzmk;
                case 5:
                    dpc<C12234e> dpcVar = zzek;
                    dpc<C12234e> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12234e.class) {
                            try {
                                dpc<C12234e> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzmk);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.beb$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$f.class */
    public static final class C12236f extends dnh<C12236f, C12237a> implements dov {
        private static volatile dpc<C12236f> zzek;
        private static final C12236f zzmm;
        private int zzdv;
        private dnr<dlw> zzml = dph.m16197d();
        private dlw zzlm = dlw.f47199a;
        private int zzhw = 1;
        private int zzhv = 1;

        /* renamed from: com.google.android.gms.internal.ads.beb$f$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$f$a.class */
        public static final class C12237a extends dnh.C12383b<C12236f, C12237a> implements dov {
            private C12237a() {
                super(C12236f.zzmm);
            }

            /* synthetic */ C12237a(bfc bfcVar) {
                this();
            }

            /* renamed from: a */
            public final C12237a m17933a(blg blgVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12236f.m17937a((C12236f) this.f47274a, blgVar);
                return this;
            }

            /* renamed from: a */
            public final C12237a m17932a(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12236f.m17936a((C12236f) this.f47274a, dlwVar);
                return this;
            }

            /* renamed from: b */
            public final C12237a m17931b(dlw dlwVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12236f.m17934b((C12236f) this.f47274a, dlwVar);
                return this;
            }
        }

        static {
            C12236f c12236f = new C12236f();
            zzmm = c12236f;
            dnh.m16339a(C12236f.class, c12236f);
        }

        private C12236f() {
        }

        /* renamed from: a */
        public static C12237a m17938a() {
            return zzmm.m16335i();
        }

        /* renamed from: a */
        static /* synthetic */ void m17937a(C12236f c12236f, blg blgVar) {
            c12236f.zzhv = blgVar.zzv();
            c12236f.zzdv |= 4;
        }

        /* renamed from: a */
        static /* synthetic */ void m17936a(C12236f c12236f, dlw dlwVar) {
            dlwVar.getClass();
            dnr<dlw> dnrVar = c12236f.zzml;
            if (!dnrVar.mo16298a()) {
                c12236f.zzml = dnh.m16342a(dnrVar);
            }
            c12236f.zzml.add(dlwVar);
        }

        /* renamed from: b */
        static /* synthetic */ void m17934b(C12236f c12236f, dlw dlwVar) {
            dlwVar.getClass();
            c12236f.zzdv |= 1;
            c12236f.zzlm = dlwVar;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (bfc.f43775a[i - 1]) {
                case 1:
                    return new C12236f();
                case 2:
                    return new C12237a(null);
                case 3:
                    return m16341a(zzmm, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002ည��\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzdv", "zzml", "zzlm", "zzhw", bqj.zzw(), "zzhv", blg.zzw()});
                case 4:
                    return zzmm;
                case 5:
                    dpc<C12236f> dpcVar = zzek;
                    dpc<C12236f> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12236f.class) {
                            try {
                                dpc<C12236f> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzmm);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
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
