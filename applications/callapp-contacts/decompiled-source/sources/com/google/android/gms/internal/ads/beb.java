package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.internal.ads.dnh;
import io.objectbox.model.PropertyFlags;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb.class */
public final class beb {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a.class */
    public static final class a extends dnh<a, b> implements dov {
        private static volatile dpc<a> zzek;
        private static final a zzil;
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
        private b zzgs;
        private f zzhi;
        private g zzhk;
        private int zzhv;
        private int zzhw;
        private int zzhx;
        private e zzhy;
        private long zzie;
        boolean zzih;
        private long zzij;
        private d zzik;
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
        private dnr<f> zzhj = dph.d();
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
        private dnr<e> zzid = dph.d();
        String zzif = "";
        int zzig = 2;
        private String zzii = "";

        /* renamed from: com.google.android.gms.internal.ads.beb$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$a.class */
        public enum EnumC0461a implements dnm {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3),
            DEBUGGER_STATE_ENVVAR(4),
            DEBUGGER_STATE_MACHPORT(5),
            DEBUGGER_STATE_ENVVAR_MACHPORT(6);
            
            private static final dnl<EnumC0461a> zzes = new bhe();
            private final int value;

            EnumC0461a(int i) {
                this.value = i;
            }

            public static EnumC0461a zzk(int i) {
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
                return bgd.f24378a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$b.class */
        public static final class b extends dnh.b<a, b> implements dov {
            private b() {
                super(a.zzil);
            }

            /* synthetic */ b(bfc bfcVar) {
                this();
            }

            public final b A(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.A((a) this.f26993a, j);
                return this;
            }

            public final b B(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.B((a) this.f26993a, j);
                return this;
            }

            public final b C(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.C((a) this.f26993a, j);
                return this;
            }

            public final b D(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.D((a) this.f26993a, j);
                return this;
            }

            public final b E(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.E((a) this.f26993a, j);
                return this;
            }

            public final b F(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.F((a) this.f26993a, j);
                return this;
            }

            public final b G(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.G((a) this.f26993a, j);
                return this;
            }

            public final b a() {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a);
                return this;
            }

            public final b a(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, j);
                return this;
            }

            public final b a(c cVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, cVar);
                return this;
            }

            public final b a(f fVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, fVar);
                return this;
            }

            public final b a(g gVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, gVar);
                return this;
            }

            public final b a(bpi bpiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, bpiVar);
                return this;
            }

            public final b a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, str);
                return this;
            }

            public final b a(boolean z) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, z);
                return this;
            }

            public final b b(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.b((a) this.f26993a, j);
                return this;
            }

            public final b b(f fVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.b((a) this.f26993a, fVar);
                return this;
            }

            public final b b(bpi bpiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.b((a) this.f26993a, bpiVar);
                return this;
            }

            public final b b(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.b((a) this.f26993a, str);
                return this;
            }

            public final b c(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.c((a) this.f26993a, j);
                return this;
            }

            public final b c(bpi bpiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.c((a) this.f26993a, bpiVar);
                return this;
            }

            public final b c(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.c((a) this.f26993a, str);
                return this;
            }

            public final b d(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.d((a) this.f26993a, j);
                return this;
            }

            public final b d(bpi bpiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.d((a) this.f26993a, bpiVar);
                return this;
            }

            public final b d(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.d((a) this.f26993a, str);
                return this;
            }

            public final b e(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.e((a) this.f26993a, j);
                return this;
            }

            public final b e(bpi bpiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.e((a) this.f26993a, bpiVar);
                return this;
            }

            public final b e(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.e((a) this.f26993a, str);
                return this;
            }

            public final b f(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.f((a) this.f26993a, j);
                return this;
            }

            public final b f(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.f((a) this.f26993a, str);
                return this;
            }

            public final b g(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.g((a) this.f26993a, j);
                return this;
            }

            public final b g(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.g((a) this.f26993a, str);
                return this;
            }

            public final b h(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.h((a) this.f26993a, j);
                return this;
            }

            public final b h(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.h((a) this.f26993a, str);
                return this;
            }

            public final b i(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.i((a) this.f26993a, j);
                return this;
            }

            public final b i(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.i((a) this.f26993a, str);
                return this;
            }

            public final b j(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.j((a) this.f26993a, j);
                return this;
            }

            public final b k(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.k((a) this.f26993a, j);
                return this;
            }

            public final b l(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.l((a) this.f26993a, j);
                return this;
            }

            public final b m(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.m((a) this.f26993a, j);
                return this;
            }

            public final b n(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.n((a) this.f26993a, j);
                return this;
            }

            public final b o(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.o((a) this.f26993a, j);
                return this;
            }

            public final b p(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.p((a) this.f26993a, j);
                return this;
            }

            @Deprecated
            public final b q(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.q((a) this.f26993a, j);
                return this;
            }

            public final b r(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.r((a) this.f26993a, j);
                return this;
            }

            public final b s(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.s((a) this.f26993a, j);
                return this;
            }

            public final b t(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.t((a) this.f26993a, j);
                return this;
            }

            public final b u(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.u((a) this.f26993a, j);
                return this;
            }

            public final b v(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.v((a) this.f26993a, j);
                return this;
            }

            public final b w(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.w((a) this.f26993a, j);
                return this;
            }

            public final b x(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.x((a) this.f26993a, j);
                return this;
            }

            public final b y(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.y((a) this.f26993a, j);
                return this;
            }

            public final b z(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.z((a) this.f26993a, j);
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$c.class */
        public enum c implements dnm {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6),
            DEVICE_IDENTIFIER_PER_APP_ID(7);
            
            private static final dnl<c> zzes = new bie();
            private final int value;

            c(int i) {
                this.value = i;
            }

            public static c zzl(int i) {
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
                return bje.f24540a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$d.class */
        public enum d implements dnm {
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
            
            private static final dnl<d> zzes = new bkf();
            private final int value;

            d(int i) {
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$e.class */
        public static final class e extends dnh<e, C0462a> implements dov {
            private static volatile dpc<e> zzek;
            private static final e zzkf;
            private int zzdv;
            private int zzkd;
            private long zzke = -1;

            /* renamed from: com.google.android.gms.internal.ads.beb$a$e$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$e$a.class */
            public static final class C0462a extends dnh.b<e, C0462a> implements dov {
                private C0462a() {
                    super(e.zzkf);
                }

                /* synthetic */ C0462a(bfc bfcVar) {
                    this();
                }
            }

            static {
                e eVar = new e();
                zzkf = eVar;
                dnh.a(e.class, eVar);
            }

            private e() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (bfc.f24313a[i - 1]) {
                    case 1:
                        return new e();
                    case 2:
                        return new C0462a(null);
                    case 3:
                        return a(zzkf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဂ\u0001", new Object[]{"zzdv", "zzkd", c.zzw(), "zzke"});
                    case 4:
                        return zzkf;
                    case 5:
                        dpc<e> dpcVar = zzek;
                        dpc<e> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (e.class) {
                                try {
                                    dpc<e> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzkf);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$f.class */
        public static final class f extends dnh<f, C0463a> implements dov {
            private static volatile dpc<f> zzek;
            private static final f zzkz;
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

            /* renamed from: com.google.android.gms.internal.ads.beb$a$f$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$f$a.class */
            public static final class C0463a extends dnh.b<f, C0463a> implements dov {
                private C0463a() {
                    super(f.zzkz);
                }

                /* synthetic */ C0463a(bfc bfcVar) {
                    this();
                }

                public final C0463a a() {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a);
                    return this;
                }

                public final C0463a a(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a, j);
                    return this;
                }

                public final C0463a a(bpi bpiVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a, bpiVar);
                    return this;
                }

                public final C0463a b(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.b((f) this.f26993a, j);
                    return this;
                }

                public final C0463a b(bpi bpiVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.b((f) this.f26993a, bpiVar);
                    return this;
                }

                public final C0463a c(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.c((f) this.f26993a, j);
                    return this;
                }

                public final C0463a d(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.d((f) this.f26993a, j);
                    return this;
                }

                public final C0463a e(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.e((f) this.f26993a, j);
                    return this;
                }

                public final C0463a f(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.f((f) this.f26993a, j);
                    return this;
                }

                public final C0463a g(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.g((f) this.f26993a, j);
                    return this;
                }

                public final C0463a h(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.h((f) this.f26993a, j);
                    return this;
                }

                public final C0463a i(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.i((f) this.f26993a, j);
                    return this;
                }

                public final C0463a j(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.j((f) this.f26993a, j);
                    return this;
                }

                public final C0463a k(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.k((f) this.f26993a, j);
                    return this;
                }

                public final C0463a l(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.l((f) this.f26993a, j);
                    return this;
                }

                public final C0463a m(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.m((f) this.f26993a, j);
                    return this;
                }

                public final C0463a n(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.n((f) this.f26993a, j);
                    return this;
                }

                public final C0463a o(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.o((f) this.f26993a, j);
                    return this;
                }

                public final C0463a p(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.p((f) this.f26993a, j);
                    return this;
                }

                public final C0463a q(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.q((f) this.f26993a, j);
                    return this;
                }
            }

            static {
                f fVar = new f();
                zzkz = fVar;
                dnh.a(f.class, fVar);
            }

            private f() {
            }

            public static C0463a a() {
                return zzkz.i();
            }

            static /* synthetic */ void a(f fVar) {
                fVar.zzdv &= -9;
                fVar.zzkh = -1L;
            }

            static /* synthetic */ void a(f fVar, long j) {
                fVar.zzdv |= 1;
                fVar.zzgb = j;
            }

            static /* synthetic */ void a(f fVar, bpi bpiVar) {
                fVar.zzkk = bpiVar.zzv();
                fVar.zzdv |= 64;
            }

            static /* synthetic */ void b(f fVar, long j) {
                fVar.zzdv |= 2;
                fVar.zzgc = j;
            }

            static /* synthetic */ void b(f fVar, bpi bpiVar) {
                fVar.zzko = bpiVar.zzv();
                fVar.zzdv |= 1024;
            }

            static /* synthetic */ void c(f fVar, long j) {
                fVar.zzdv |= 4;
                fVar.zzkg = j;
            }

            static /* synthetic */ void d(f fVar, long j) {
                fVar.zzdv |= 8;
                fVar.zzkh = j;
            }

            static /* synthetic */ void e(f fVar, long j) {
                fVar.zzdv |= 16;
                fVar.zzki = j;
            }

            static /* synthetic */ void f(f fVar, long j) {
                fVar.zzdv |= 32;
                fVar.zzkj = j;
            }

            static /* synthetic */ void g(f fVar, long j) {
                fVar.zzdv |= 128;
                fVar.zzkl = j;
            }

            static /* synthetic */ void h(f fVar, long j) {
                fVar.zzdv |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                fVar.zzkm = j;
            }

            static /* synthetic */ void i(f fVar, long j) {
                fVar.zzdv |= 512;
                fVar.zzkn = j;
            }

            static /* synthetic */ void j(f fVar, long j) {
                fVar.zzdv |= 2048;
                fVar.zzkp = j;
            }

            static /* synthetic */ void k(f fVar, long j) {
                fVar.zzdv |= 4096;
                fVar.zzkq = j;
            }

            static /* synthetic */ void l(f fVar, long j) {
                fVar.zzdv |= PropertyFlags.UNSIGNED;
                fVar.zzkr = j;
            }

            static /* synthetic */ void m(f fVar, long j) {
                fVar.zzdv |= 16384;
                fVar.zzks = j;
            }

            static /* synthetic */ void n(f fVar, long j) {
                fVar.zzdv |= 32768;
                fVar.zzkt = j;
            }

            static /* synthetic */ void o(f fVar, long j) {
                fVar.zzdv |= 65536;
                fVar.zzku = j;
            }

            static /* synthetic */ void p(f fVar, long j) {
                fVar.zzdv |= 131072;
                fVar.zzkv = j;
            }

            static /* synthetic */ void q(f fVar, long j) {
                fVar.zzdv |= 262144;
                fVar.zzkw = j;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (bfc.f24313a[i - 1]) {
                    case 1:
                        return new f();
                    case 2:
                        return new C0463a(null);
                    case 3:
                        return a(zzkz, "\u0001\u0015��\u0001\u0001\u0015\u0015������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzdv", "zzgb", "zzgc", "zzkg", "zzkh", "zzki", "zzkj", "zzkk", bpi.zzw(), "zzkl", "zzkm", "zzkn", "zzko", bpi.zzw(), "zzkp", "zzkq", "zzkr", "zzks", "zzkt", "zzku", "zzkv", "zzkw", "zzkx", "zzky"});
                    case 4:
                        return zzkz;
                    case 5:
                        dpc<f> dpcVar = zzek;
                        dpc<f> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (f.class) {
                                try {
                                    dpc<f> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzkz);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$g.class */
        public static final class g extends dnh<g, C0464a> implements dov {
            private static volatile dpc<g> zzek;
            private static final g zzle;
            private int zzdv;
            private long zzhf = -1;
            private long zzhg = -1;
            private long zzla = -1;
            private long zzlb = -1;
            private long zzlc = -1;
            private long zzld = -1;

            /* renamed from: com.google.android.gms.internal.ads.beb$a$g$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$a$g$a.class */
            public static final class C0464a extends dnh.b<g, C0464a> implements dov {
                private C0464a() {
                    super(g.zzle);
                }

                /* synthetic */ C0464a(bfc bfcVar) {
                    this();
                }

                public final C0464a a(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    g.a((g) this.f26993a, j);
                    return this;
                }

                public final C0464a b(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    g.b((g) this.f26993a, j);
                    return this;
                }

                public final C0464a c(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    g.c((g) this.f26993a, j);
                    return this;
                }

                public final C0464a d(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    g.d((g) this.f26993a, j);
                    return this;
                }
            }

            static {
                g gVar = new g();
                zzle = gVar;
                dnh.a(g.class, gVar);
            }

            private g() {
            }

            public static C0464a a() {
                return zzle.i();
            }

            static /* synthetic */ void a(g gVar, long j) {
                gVar.zzdv |= 4;
                gVar.zzla = j;
            }

            static /* synthetic */ void b(g gVar, long j) {
                gVar.zzdv |= 8;
                gVar.zzlb = j;
            }

            static /* synthetic */ void c(g gVar, long j) {
                gVar.zzdv |= 16;
                gVar.zzlc = j;
            }

            static /* synthetic */ void d(g gVar, long j) {
                gVar.zzdv |= 32;
                gVar.zzld = j;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (bfc.f24313a[i - 1]) {
                    case 1:
                        return new g();
                    case 2:
                        return new C0464a(null);
                    case 3:
                        return a(zzle, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzdv", "zzhf", "zzhg", "zzla", "zzlb", "zzlc", "zzld"});
                    case 4:
                        return zzle;
                    case 5:
                        dpc<g> dpcVar = zzek;
                        dpc<g> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (g.class) {
                                try {
                                    dpc<g> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzle);
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
            a aVar = new a();
            zzil = aVar;
            dnh.a(a.class, aVar);
        }

        private a() {
        }

        static /* synthetic */ void A(a aVar, long j) {
            aVar.zzfn |= 16384;
            aVar.zzhe = j;
        }

        static /* synthetic */ void B(a aVar, long j) {
            aVar.zzfn |= 2097152;
            aVar.zzhm = j;
        }

        static /* synthetic */ void C(a aVar, long j) {
            aVar.zzfn |= 4194304;
            aVar.zzhn = j;
        }

        static /* synthetic */ void D(a aVar, long j) {
            aVar.zzfn |= 8388608;
            aVar.zzho = j;
        }

        static /* synthetic */ void E(a aVar, long j) {
            aVar.zzfn |= 67108864;
            aVar.zzhr = j;
        }

        static /* synthetic */ void F(a aVar, long j) {
            aVar.zzfn |= 134217728;
            aVar.zzhs = j;
        }

        static /* synthetic */ void G(a aVar, long j) {
            aVar.zzfo |= 2048;
            aVar.zzij = j;
        }

        public static a a(byte[] bArr, dmt dmtVar) throws zzenn {
            return (a) dnh.a(zzil, bArr, dmtVar);
        }

        static /* synthetic */ void a(a aVar) {
            aVar.zzhj = dph.d();
        }

        static /* synthetic */ void a(a aVar, long j) {
            aVar.zzdv |= 4;
            aVar.zzfq = j;
        }

        static /* synthetic */ void a(a aVar, c cVar) {
            aVar.zzig = cVar.zzv();
            aVar.zzfo |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }

        static /* synthetic */ void a(a aVar, f fVar) {
            fVar.getClass();
            aVar.zzhi = fVar;
            aVar.zzfn |= 262144;
        }

        static /* synthetic */ void a(a aVar, g gVar) {
            gVar.getClass();
            aVar.zzhk = gVar;
            aVar.zzfn |= 524288;
        }

        static /* synthetic */ void a(a aVar, bpi bpiVar) {
            aVar.zzha = bpiVar.zzv();
            aVar.zzfn |= 1024;
        }

        static /* synthetic */ void a(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 1;
            aVar.zzfp = str;
        }

        static /* synthetic */ void a(a aVar, boolean z) {
            aVar.zzfo |= 512;
            aVar.zzih = z;
        }

        static /* synthetic */ void b(a aVar, long j) {
            aVar.zzdv |= 16;
            aVar.zzfs = j;
        }

        static /* synthetic */ void b(a aVar, f fVar) {
            fVar.getClass();
            dnr<f> dnrVar = aVar.zzhj;
            if (!dnrVar.a()) {
                aVar.zzhj = dnh.a(dnrVar);
            }
            aVar.zzhj.add(fVar);
        }

        static /* synthetic */ void b(a aVar, bpi bpiVar) {
            aVar.zzhb = bpiVar.zzv();
            aVar.zzfn |= 2048;
        }

        static /* synthetic */ void b(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 2;
            aVar.zzef = str;
        }

        public static b c() {
            return zzil.i();
        }

        static /* synthetic */ void c(a aVar, long j) {
            aVar.zzdv |= 32;
            aVar.zzft = j;
        }

        static /* synthetic */ void c(a aVar, bpi bpiVar) {
            aVar.zzhh = bpiVar.zzv();
            aVar.zzfn |= 131072;
        }

        static /* synthetic */ void c(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 4194304;
            aVar.zzfg = str;
        }

        public static a d() {
            return zzil;
        }

        static /* synthetic */ void d(a aVar, long j) {
            aVar.zzdv |= 1024;
            aVar.zzfy = j;
        }

        static /* synthetic */ void d(a aVar, bpi bpiVar) {
            aVar.zzia = bpiVar.zzv();
            aVar.zzfo |= 8;
        }

        static /* synthetic */ void d(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            aVar.zzgl = str;
        }

        static /* synthetic */ void e(a aVar, long j) {
            aVar.zzdv |= 2048;
            aVar.zzfz = j;
        }

        static /* synthetic */ void e(a aVar, bpi bpiVar) {
            aVar.zzib = bpiVar.zzv();
            aVar.zzfo |= 16;
        }

        static /* synthetic */ void e(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 268435456;
            aVar.zzfi = str;
        }

        static /* synthetic */ void f(a aVar, long j) {
            aVar.zzdv |= PropertyFlags.UNSIGNED;
            aVar.zzgb = j;
        }

        static /* synthetic */ void f(a aVar, String str) {
            str.getClass();
            aVar.zzfn |= 128;
            aVar.zzfj = str;
        }

        static /* synthetic */ void g(a aVar, long j) {
            aVar.zzdv |= 16384;
            aVar.zzgc = j;
        }

        static /* synthetic */ void g(a aVar, String str) {
            str.getClass();
            aVar.zzfn |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
            aVar.zzfk = str;
        }

        static /* synthetic */ void h(a aVar, long j) {
            aVar.zzdv |= 32768;
            aVar.zzgd = j;
        }

        static /* synthetic */ void h(a aVar, String str) {
            str.getClass();
            aVar.zzfn |= 268435456;
            aVar.zzht = str;
        }

        static /* synthetic */ void i(a aVar, long j) {
            aVar.zzdv |= 65536;
            aVar.zzge = j;
        }

        static /* synthetic */ void i(a aVar, String str) {
            str.getClass();
            aVar.zzfo |= 128;
            aVar.zzif = str;
        }

        static /* synthetic */ void j(a aVar, long j) {
            aVar.zzdv |= 524288;
            aVar.zzgh = j;
        }

        static /* synthetic */ void k(a aVar, long j) {
            aVar.zzdv |= 1048576;
            aVar.zzgi = j;
        }

        static /* synthetic */ void l(a aVar, long j) {
            aVar.zzdv |= 2097152;
            aVar.zzgj = j;
        }

        static /* synthetic */ void m(a aVar, long j) {
            aVar.zzdv |= 33554432;
            aVar.zzgm = j;
        }

        static /* synthetic */ void n(a aVar, long j) {
            aVar.zzdv |= 67108864;
            aVar.zzgn = j;
        }

        static /* synthetic */ void o(a aVar, long j) {
            aVar.zzdv |= 134217728;
            aVar.zzgo = j;
        }

        static /* synthetic */ void p(a aVar, long j) {
            aVar.zzdv |= 536870912;
            aVar.zzgp = j;
        }

        static /* synthetic */ void q(a aVar, long j) {
            aVar.zzdv |= 1073741824;
            aVar.zzgq = j;
        }

        static /* synthetic */ void r(a aVar, long j) {
            aVar.zzdv |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            aVar.zzgr = j;
        }

        static /* synthetic */ void s(a aVar, long j) {
            aVar.zzfn |= 2;
            aVar.zzgt = j;
        }

        static /* synthetic */ void t(a aVar, long j) {
            aVar.zzfn |= 4;
            aVar.zzgu = j;
        }

        static /* synthetic */ void u(a aVar, long j) {
            aVar.zzfn |= 8;
            aVar.zzgv = j;
        }

        static /* synthetic */ void v(a aVar, long j) {
            aVar.zzfn |= 16;
            aVar.zzgw = j;
        }

        static /* synthetic */ void w(a aVar, long j) {
            aVar.zzfn |= 32;
            aVar.zzgx = j;
        }

        static /* synthetic */ void x(a aVar, long j) {
            aVar.zzfn |= 64;
            aVar.zzgy = j;
        }

        static /* synthetic */ void y(a aVar, long j) {
            aVar.zzfn |= 4096;
            aVar.zzhc = j;
        }

        static /* synthetic */ void z(a aVar, long j) {
            aVar.zzfn |= PropertyFlags.UNSIGNED;
            aVar.zzhd = j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new b(null);
                case 3:
                    return a(zzil, "\u0001O��\u0003\u0001ÉO��\u0002��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂF\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈG\u0019ဂK\u001aဌH\u001bဈ\u0016\u001cဇI\u001dဈ\u0018\u001eဈJ\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0ဌ*1ဌ+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08ဌ19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=Aဌ>Bဌ?Cဈ<Dဌ@EဉAFဂBGဂ8Hဂ9IဌCJဂ)Kဈ\u0017LဌDMဈEN\u001bÉဉL", new Object[]{"zzdv", "zzfn", "zzfo", "zzfp", "zzef", "zzfq", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzfz", "zzga", "zzgb", "zzgc", "zzgd", "zzge", "zzgf", "zzgg", "zzgh", "zzie", "zzgi", "zzgj", "zzif", "zzij", "zzig", c.zzw(), "zzfg", "zzih", "zzgl", "zzii", "zzgm", "zzgn", "zzgo", "zzfi", "zzgp", "zzgq", "zzgr", "zzgs", "zzgt", "zzgu", "zzgv", "zzgw", "zzhj", f.class, "zzgx", "zzgy", "zzfj", "zzfk", "zzha", bpi.zzw(), "zzhb", bpi.zzw(), "zzhi", "zzhc", "zzhd", "zzhe", "zzhf", "zzhg", "zzhh", bpi.zzw(), "zzhk", "zzhl", "zzhm", "zzhn", "zzho", "zzhr", "zzhs", "zzhu", "zzhv", blg.zzw(), "zzhw", bqj.zzw(), "zzht", "zzhx", EnumC0461a.zzw(), "zzhy", "zzhz", "zzhp", "zzhq", "zzia", bpi.zzw(), "zzgz", "zzgk", "zzib", bpi.zzw(), "zzic", "zzid", e.class, "zzik"});
                case 4:
                    return zzil;
                case 5:
                    dpc<a> dpcVar = zzek;
                    dpc<a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (a.class) {
                            try {
                                dpc<a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzil);
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

        public final boolean a() {
            return (this.zzdv & 4194304) != 0;
        }

        public final d b() {
            d dVar = this.zzik;
            d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = d.a();
            }
            return dVar2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$b.class */
    public static final class b extends dnh<b, a> implements dov {
        private static volatile dpc<b> zzek;
        private static final b zzlk;
        private int zzdv;
        private long zzlf;
        private int zzlg;
        private boolean zzlh;
        private dnn zzli = dnk.d();
        private long zzlj;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$b$a.class */
        public static final class a extends dnh.b<b, a> implements dov {
            private a() {
                super(b.zzlk);
            }

            /* synthetic */ a(bfc bfcVar) {
                this();
            }
        }

        static {
            b bVar = new b();
            zzlk = bVar;
            dnh.a(b.class, bVar);
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzlk, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဂ��\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzdv", "zzlf", "zzlg", "zzlh", "zzli", "zzlj"});
                case 4:
                    return zzlk;
                case 5:
                    dpc<b> dpcVar = zzek;
                    dpc<b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (b.class) {
                            try {
                                dpc<b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzlk);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$c.class */
    public static final class c extends dnh<c, a> implements dov {
        private static volatile dpc<c> zzek;
        private static final c zzlp;
        private int zzdv;
        dlw zzll = dlw.f26941a;
        dlw zzlm = dlw.f26941a;
        dlw zzln = dlw.f26941a;
        dlw zzlo = dlw.f26941a;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$c$a.class */
        public static final class a extends dnh.b<c, a> implements dov {
            private a() {
                super(c.zzlp);
            }

            /* synthetic */ a(bfc bfcVar) {
                this();
            }

            public final a a(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                c.a((c) this.f26993a, dlwVar);
                return this;
            }

            public final a b(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                c.b((c) this.f26993a, dlwVar);
                return this;
            }

            public final a c(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                c.c((c) this.f26993a, dlwVar);
                return this;
            }

            public final a d(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                c.d((c) this.f26993a, dlwVar);
                return this;
            }
        }

        static {
            c cVar = new c();
            zzlp = cVar;
            dnh.a(c.class, cVar);
        }

        private c() {
        }

        public static a a() {
            return zzlp.i();
        }

        public static c a(byte[] bArr, dmt dmtVar) throws zzenn {
            return (c) dnh.a(zzlp, bArr, dmtVar);
        }

        static /* synthetic */ void a(c cVar, dlw dlwVar) {
            dlwVar.getClass();
            cVar.zzdv |= 1;
            cVar.zzll = dlwVar;
        }

        static /* synthetic */ void b(c cVar, dlw dlwVar) {
            dlwVar.getClass();
            cVar.zzdv |= 2;
            cVar.zzlm = dlwVar;
        }

        static /* synthetic */ void c(c cVar, dlw dlwVar) {
            dlwVar.getClass();
            cVar.zzdv |= 4;
            cVar.zzln = dlwVar;
        }

        static /* synthetic */ void d(c cVar, dlw dlwVar) {
            dlwVar.getClass();
            cVar.zzdv |= 8;
            cVar.zzlo = dlwVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzlp, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ည��\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzdv", "zzll", "zzlm", "zzln", "zzlo"});
                case 4:
                    return zzlp;
                case 5:
                    dpc<c> dpcVar = zzek;
                    dpc<c> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (c.class) {
                            try {
                                dpc<c> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzlp);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$d.class */
    public static final class d extends dnh<d, a> implements dov {
        private static volatile dpc<d> zzek;
        private static final d zzmj;
        int zzdv;
        long zzlf;
        private String zzmh = "";
        private dlw zzmi = dlw.f26941a;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$d$a.class */
        public static final class a extends dnh.b<d, a> implements dov {
            private a() {
                super(d.zzmj);
            }

            /* synthetic */ a(bfc bfcVar) {
                this();
            }
        }

        static {
            d dVar = new d();
            zzmj = dVar;
            dnh.a(d.class, dVar);
        }

        private d() {
        }

        public static d a() {
            return zzmj;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new d();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzmj, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001ဂ��\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzdv", "zzlf", "zzmh", "zzmi"});
                case 4:
                    return zzmj;
                case 5:
                    dpc<d> dpcVar = zzek;
                    dpc<d> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (d.class) {
                            try {
                                dpc<d> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzmj);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$e.class */
    public static final class e extends dnh<e, a> implements dov {
        private static volatile dpc<e> zzek;
        private static final e zzmk;
        private int zzdv;
        private String zzfl = "";

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$e$a.class */
        public static final class a extends dnh.b<e, a> implements dov {
            private a() {
                super(e.zzmk);
            }

            /* synthetic */ a(bfc bfcVar) {
                this();
            }
        }

        static {
            e eVar = new e();
            zzmk = eVar;
            dnh.a(e.class, eVar);
        }

        private e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new e();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzmk, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zzfl"});
                case 4:
                    return zzmk;
                case 5:
                    dpc<e> dpcVar = zzek;
                    dpc<e> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (e.class) {
                            try {
                                dpc<e> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzmk);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$f.class */
    public static final class f extends dnh<f, a> implements dov {
        private static volatile dpc<f> zzek;
        private static final f zzmm;
        private int zzdv;
        private dnr<dlw> zzml = dph.d();
        private dlw zzlm = dlw.f26941a;
        private int zzhw = 1;
        private int zzhv = 1;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/beb$f$a.class */
        public static final class a extends dnh.b<f, a> implements dov {
            private a() {
                super(f.zzmm);
            }

            /* synthetic */ a(bfc bfcVar) {
                this();
            }

            public final a a(blg blgVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                f.a((f) this.f26993a, blgVar);
                return this;
            }

            public final a a(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                f.a((f) this.f26993a, dlwVar);
                return this;
            }

            public final a b(dlw dlwVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                f.b((f) this.f26993a, dlwVar);
                return this;
            }
        }

        static {
            f fVar = new f();
            zzmm = fVar;
            dnh.a(f.class, fVar);
        }

        private f() {
        }

        public static a a() {
            return zzmm.i();
        }

        static /* synthetic */ void a(f fVar, blg blgVar) {
            fVar.zzhv = blgVar.zzv();
            fVar.zzdv |= 4;
        }

        static /* synthetic */ void a(f fVar, dlw dlwVar) {
            dlwVar.getClass();
            dnr<dlw> dnrVar = fVar.zzml;
            if (!dnrVar.a()) {
                fVar.zzml = dnh.a(dnrVar);
            }
            fVar.zzml.add(dlwVar);
        }

        static /* synthetic */ void b(f fVar, dlw dlwVar) {
            dlwVar.getClass();
            fVar.zzdv |= 1;
            fVar.zzlm = dlwVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (bfc.f24313a[i - 1]) {
                case 1:
                    return new f();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzmm, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002ည��\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzdv", "zzml", "zzlm", "zzhw", bqj.zzw(), "zzhv", blg.zzw()});
                case 4:
                    return zzmm;
                case 5:
                    dpc<f> dpcVar = zzek;
                    dpc<f> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (f.class) {
                            try {
                                dpc<f> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzmm);
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
