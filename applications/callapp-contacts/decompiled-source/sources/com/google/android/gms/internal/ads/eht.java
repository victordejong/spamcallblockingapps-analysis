package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import io.objectbox.model.PropertyFlags;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht.class */
public final class eht {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$a.class */
    public static final class a extends dnh<a, b> implements dov {
        private static final a zzbzk;
        private static volatile dpc<a> zzek;
        private int zzbyz;
        private i zzbzb;
        j zzbzc;
        private k zzbze;
        private u zzbzf;
        private s zzbzg;
        private p zzbzh;
        private q zzbzi;
        private int zzdv;
        private int zzbza = 1000;
        private dnr<h> zzbzd = dph.d();
        private dnr<aa> zzbzj = dph.d();

        /* renamed from: com.google.android.gms.internal.ads.eht$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$a$a.class */
        public enum EnumC0477a implements dnm {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10),
            REWARDED_INTERSTITIAL(11);
            
            private static final dnl<EnumC0477a> zzes = new ehw();
            private final int value;

            EnumC0477a(int i) {
                this.value = i;
            }

            public static EnumC0477a zzbz(int i) {
                switch (i) {
                    case 0:
                        return AD_INITIATER_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return DFP_BANNER;
                    case 3:
                        return INTERSTITIAL;
                    case 4:
                        return DFP_INTERSTITIAL;
                    case 5:
                        return NATIVE_EXPRESS;
                    case 6:
                        return AD_LOADER;
                    case 7:
                        return REWARD_BASED_VIDEO_AD;
                    case 8:
                        return BANNER_SEARCH_ADS;
                    case 9:
                        return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                    case 10:
                        return APP_OPEN;
                    case 11:
                        return REWARDED_INTERSTITIAL;
                    default:
                        return null;
                }
            }

            public static dno zzw() {
                return ehx.f27857a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$a$b.class */
        public static final class b extends dnh.b<a, b> implements dov {
            private b() {
                super(a.zzbzk);
            }

            /* synthetic */ b(ehv ehvVar) {
                this();
            }

            public final b a(EnumC0477a aVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, aVar);
                return this;
            }

            public final b a(j.a aVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, (j) ((dnh) aVar.f()));
                return this;
            }
        }

        static {
            a aVar = new a();
            zzbzk = aVar;
            dnh.a(a.class, aVar);
        }

        private a() {
        }

        public static a a() {
            return zzbzk;
        }

        static /* synthetic */ void a(a aVar, EnumC0477a aVar2) {
            aVar.zzbyz = aVar2.zzv();
            aVar.zzdv |= 1;
        }

        static /* synthetic */ void a(a aVar, j jVar) {
            jVar.getClass();
            aVar.zzbzc = jVar;
            aVar.zzdv |= 8;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new b(null);
                case 3:
                    return a(zzbzk, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzdv", "zzbyz", EnumC0477a.zzw(), "zzbza", eid.zzw(), "zzbzb", "zzbzc", "zzbzd", h.class, "zzbze", "zzbzf", "zzbzg", "zzbzh", "zzbzi", "zzbzj", aa.class});
                case 4:
                    return zzbzk;
                case 5:
                    dpc<a> dpcVar = zzek;
                    dpc<a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (a.class) {
                            try {
                                dpc<a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzbzk);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$aa.class */
    public static final class aa extends dnh<aa, a> implements dov {
        private static final aa zzcgs;
        private static volatile dpc<aa> zzek;
        private ae zzcgc;
        private c zzcgd;
        private d zzcge;
        private e zzcgf;
        private ab zzcgg;
        private b zzcgh;
        private ad zzcgi;
        private int zzcgj;
        private int zzcgk;
        private y zzcgl;
        private int zzcgm;
        private int zzcgn;
        private int zzcgo;
        private int zzcgp;
        private int zzcgq;
        private long zzcgr;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$aa$a.class */
        public static final class a extends dnh.b<aa, a> implements dov {
            private a() {
                super(aa.zzcgs);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            aa aaVar = new aa();
            zzcgs = aaVar;
            dnh.a(aa.class, aaVar);
        }

        private aa() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new aa();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcgs, "\u0001\u0010��\u0001\u0005\u0014\u0010������\u0005ဉ��\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzdv", "zzcgc", "zzcgd", "zzcge", "zzcgf", "zzcgg", "zzcgh", "zzcgi", "zzcgj", "zzcgk", "zzcgl", "zzcgm", "zzcgn", "zzcgo", "zzcgp", "zzcgq", "zzcgr"});
                case 4:
                    return zzcgs;
                case 5:
                    dpc<aa> dpcVar = zzek;
                    dpc<aa> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (aa.class) {
                            try {
                                dpc<aa> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcgs);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ab.class */
    public static final class ab extends dnh<ab, a> implements dov {
        private static final ab zzcgv;
        private static volatile dpc<ab> zzek;
        private int zzcdi = 1000;
        private ac zzcgt;
        private y zzcgu;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ab$a.class */
        public static final class a extends dnh.b<ab, a> implements dov {
            private a() {
                super(ab.zzcgv);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            ab abVar = new ab();
            zzcgv = abVar;
            dnh.a(ab.class, abVar);
        }

        private ab() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new ab();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcgv, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt", "zzcgu"});
                case 4:
                    return zzcgv;
                case 5:
                    dpc<ab> dpcVar = zzek;
                    dpc<ab> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (ab.class) {
                            try {
                                dpc<ab> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcgv);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ac.class */
    public static final class ac extends dnh<ac, a> implements dov {
        private static final ac zzcgx;
        private static volatile dpc<ac> zzek;
        private int zzcgw;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ac$a.class */
        public static final class a extends dnh.b<ac, a> implements dov {
            private a() {
                super(ac.zzcgx);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ac$b.class */
        public enum b implements dnm {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);
            
            private static final dnl<b> zzes = new eip();
            private final int value;

            b(int i) {
                this.value = i;
            }

            public static b zzcw(int i) {
                if (i == 0) {
                    return VIDEO_ERROR_CODE_UNSPECIFIED;
                }
                if (i == 1) {
                    return OPENGL_RENDERING_FAILED;
                }
                if (i == 2) {
                    return CACHE_LOAD_FAILED;
                }
                if (i != 3) {
                    return null;
                }
                return ANDROID_TARGET_API_TOO_LOW;
            }

            public static dno zzw() {
                return eiq.f27867a;
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

        static {
            ac acVar = new ac();
            zzcgx = acVar;
            dnh.a(ac.class, acVar);
        }

        private ac() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new ac();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcgx, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzdv", "zzcgw", b.zzw()});
                case 4:
                    return zzcgx;
                case 5:
                    dpc<ac> dpcVar = zzek;
                    dpc<ac> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (ac.class) {
                            try {
                                dpc<ac> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcgx);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ad.class */
    public static final class ad extends dnh<ad, a> implements dov {
        private static final ad zzche;
        private static volatile dpc<ad> zzek;
        private int zzcdi = 1000;
        private ac zzcgt;
        private y zzcgu;
        private z zzchd;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ad$a.class */
        public static final class a extends dnh.b<ad, a> implements dov {
            private a() {
                super(ad.zzche);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            ad adVar = new ad();
            zzche = adVar;
            dnh.a(ad.class, adVar);
        }

        private ad() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new ad();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzche, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzchd", "zzcdi", eid.zzw(), "zzcgt", "zzcgu"});
                case 4:
                    return zzche;
                case 5:
                    dpc<ad> dpcVar = zzek;
                    dpc<ad> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (ad.class) {
                            try {
                                dpc<ad> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzche);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ae.class */
    public static final class ae extends dnh<ae, a> implements dov {
        private static final ae zzchg;
        private static volatile dpc<ae> zzek;
        private int zzcdi = 1000;
        private int zzcgj;
        private int zzcgk;
        private ac zzcgt;
        private int zzchf;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$ae$a.class */
        public static final class a extends dnh.b<ae, a> implements dov {
            private a() {
                super(ae.zzchg);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            ae aeVar = new ae();
            zzchg = aeVar;
            dnh.a(ae.class, aeVar);
        }

        private ae() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new ae();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzchg, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt", "zzcgj", "zzcgk", "zzchf"});
                case 4:
                    return zzchg;
                case 5:
                    dpc<ae> dpcVar = zzek;
                    dpc<ae> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (ae.class) {
                            try {
                                dpc<ae> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzchg);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$b.class */
    public static final class b extends dnh<b, a> implements dov {
        private static final b zzchh;
        private static volatile dpc<b> zzek;
        private int zzcdi = 1000;
        private ac zzcgt;
        private y zzcgu;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$b$a.class */
        public static final class a extends dnh.b<b, a> implements dov {
            private a() {
                super(b.zzchh);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            b bVar = new b();
            zzchh = bVar;
            dnh.a(b.class, bVar);
        }

        private b() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzchh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt", "zzcgu"});
                case 4:
                    return zzchh;
                case 5:
                    dpc<b> dpcVar = zzek;
                    dpc<b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (b.class) {
                            try {
                                dpc<b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzchh);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$c.class */
    public static final class c extends dnh<c, a> implements dov {
        private static final c zzchj;
        private static volatile dpc<c> zzek;
        private int zzcdi = 1000;
        private int zzcgj;
        private int zzcgk;
        private ac zzcgt;
        private int zzchf;
        private long zzchi;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$c$a.class */
        public static final class a extends dnh.b<c, a> implements dov {
            private a() {
                super(c.zzchj);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            c cVar = new c();
            zzchj = cVar;
            dnh.a(c.class, cVar);
        }

        private c() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzchj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt", "zzcgj", "zzcgk", "zzchf", "zzchi"});
                case 4:
                    return zzchj;
                case 5:
                    dpc<c> dpcVar = zzek;
                    dpc<c> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (c.class) {
                            try {
                                dpc<c> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzchj);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$d.class */
    public static final class d extends dnh<d, a> implements dov {
        private static final d zzchk;
        private static volatile dpc<d> zzek;
        private int zzcdi = 1000;
        private ac zzcgt;
        private y zzcgu;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$d$a.class */
        public static final class a extends dnh.b<d, a> implements dov {
            private a() {
                super(d.zzchk);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            d dVar = new d();
            zzchk = dVar;
            dnh.a(d.class, dVar);
        }

        private d() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new d();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzchk, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt", "zzcgu"});
                case 4:
                    return zzchk;
                case 5:
                    dpc<d> dpcVar = zzek;
                    dpc<d> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (d.class) {
                            try {
                                dpc<d> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzchk);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$e.class */
    public static final class e extends dnh<e, a> implements dov {
        private static final e zzchl;
        private static volatile dpc<e> zzek;
        private int zzcdi = 1000;
        private ac zzcgt;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$e$a.class */
        public static final class a extends dnh.b<e, a> implements dov {
            private a() {
                super(e.zzchl);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            e eVar = new e();
            zzchl = eVar;
            dnh.a(e.class, eVar);
        }

        private e() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new e();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzchl, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcgt"});
                case 4:
                    return zzchl;
                case 5:
                    dpc<e> dpcVar = zzek;
                    dpc<e> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (e.class) {
                            try {
                                dpc<e> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzchl);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$f.class */
    public static final class f extends dnh<f, a> implements dov {
        private static final f zzcho;
        private static volatile dpc<f> zzek;
        boolean zzchm;
        private int zzchn;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$f$a.class */
        public static final class a extends dnh.b<f, a> implements dov {
            private a() {
                super(f.zzcho);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                f.a((f) this.f26993a, i);
                return this;
            }

            public final a a(boolean z) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                f.a((f) this.f26993a, z);
                return this;
            }

            public final boolean a() {
                return ((f) this.f26993a).zzchm;
            }
        }

        static {
            f fVar = new f();
            zzcho = fVar;
            dnh.a(f.class, fVar);
        }

        private f() {
        }

        public static a a() {
            return zzcho.i();
        }

        static /* synthetic */ void a(f fVar, int i) {
            fVar.zzdv |= 2;
            fVar.zzchn = i;
        }

        static /* synthetic */ void a(f fVar, boolean z) {
            fVar.zzdv |= 1;
            fVar.zzchm = z;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new f();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcho, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zzdv", "zzchm", "zzchn"});
                case 4:
                    return zzcho;
                case 5:
                    dpc<f> dpcVar = zzek;
                    dpc<f> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (f.class) {
                            try {
                                dpc<f> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcho);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g.class */
    public static final class g extends dnh<g, b> implements dov {
        private static final g zzcad;
        private static volatile dpc<g> zzek;
        private dnr<a> zzcac = dph.d();

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$a.class */
        public static final class a extends dnh<a, C0478a> implements dov {
            private static final a zzcab;
            private static volatile dpc<a> zzek;
            private int zzbzy;
            private d zzbzz;
            private e zzcaa;
            private int zzdv;

            /* renamed from: com.google.android.gms.internal.ads.eht$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$a$a.class */
            public static final class C0478a extends dnh.b<a, C0478a> implements dov {
                private C0478a() {
                    super(a.zzcab);
                }

                /* synthetic */ C0478a(ehv ehvVar) {
                    this();
                }

                public final C0478a a(c cVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, cVar);
                    return this;
                }

                public final C0478a a(d.a aVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, (d) ((dnh) aVar.f()));
                    return this;
                }

                public final C0478a a(e.a aVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, (e) ((dnh) aVar.f()));
                    return this;
                }
            }

            static {
                a aVar = new a();
                zzcab = aVar;
                dnh.a(a.class, aVar);
            }

            private a() {
            }

            public static C0478a a() {
                return zzcab.i();
            }

            static /* synthetic */ void a(a aVar, c cVar) {
                aVar.zzbzy = cVar.zzv();
                aVar.zzdv |= 1;
            }

            static /* synthetic */ void a(a aVar, d dVar) {
                dVar.getClass();
                aVar.zzbzz = dVar;
                aVar.zzdv |= 2;
            }

            static /* synthetic */ void a(a aVar, e eVar) {
                eVar.getClass();
                aVar.zzcaa = eVar;
                aVar.zzdv |= 4;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            protected final Object a(int i, Object obj) {
                switch (ehv.f27856a[i - 1]) {
                    case 1:
                        return new a();
                    case 2:
                        return new C0478a(null);
                    case 3:
                        return a(zzcab, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzbzy", c.zzw(), "zzbzz", "zzcaa"});
                    case 4:
                        return zzcab;
                    case 5:
                        dpc<a> dpcVar = zzek;
                        dpc<a> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (a.class) {
                                try {
                                    dpc<a> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzcab);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$b.class */
        public static final class b extends dnh.b<g, b> implements dov {
            private b() {
                super(g.zzcad);
            }

            /* synthetic */ b(ehv ehvVar) {
                this();
            }

            public final b a(a.C0478a aVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                g.a((g) this.f26993a, (a) ((dnh) aVar.f()));
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$c.class */
        public enum c implements dnm {
            UNSPECIFIED(0),
            IN_MEMORY(1);
            
            private static final dnl<c> zzes = new ehy();
            private final int value;

            c(int i) {
                this.value = i;
            }

            public static c zzca(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i != 1) {
                    return null;
                }
                return IN_MEMORY;
            }

            public static dno zzw() {
                return ehz.f27858a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$d.class */
        public static final class d extends dnh<d, a> implements dov {
            private static final d zzcaj;
            private static volatile dpc<d> zzek;
            private boolean zzcah;
            private int zzcai;
            private int zzdv;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$d$a.class */
            public static final class a extends dnh.b<d, a> implements dov {
                private a() {
                    super(d.zzcaj);
                }

                /* synthetic */ a(ehv ehvVar) {
                    this();
                }

                public final a a(int i) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    d.a((d) this.f26993a, i);
                    return this;
                }

                public final a a(boolean z) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    d.a((d) this.f26993a, z);
                    return this;
                }
            }

            static {
                d dVar = new d();
                zzcaj = dVar;
                dnh.a(d.class, dVar);
            }

            private d() {
            }

            public static a a() {
                return zzcaj.i();
            }

            static /* synthetic */ void a(d dVar, int i) {
                dVar.zzdv |= 2;
                dVar.zzcai = i;
            }

            static /* synthetic */ void a(d dVar, boolean z) {
                dVar.zzdv |= 1;
                dVar.zzcah = z;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            protected final Object a(int i, Object obj) {
                switch (ehv.f27856a[i - 1]) {
                    case 1:
                        return new d();
                    case 2:
                        return new a(null);
                    case 3:
                        return a(zzcaj, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zzdv", "zzcah", "zzcai"});
                    case 4:
                        return zzcaj;
                    case 5:
                        dpc<d> dpcVar = zzek;
                        dpc<d> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (d.class) {
                                try {
                                    dpc<d> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzcaj);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$e.class */
        public static final class e extends dnh<e, a> implements dov {
            private static final e zzcam;
            private static volatile dpc<e> zzek;
            private int zzcai;
            private boolean zzcak;
            private boolean zzcal;
            private int zzdv;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$g$e$a.class */
            public static final class a extends dnh.b<e, a> implements dov {
                private a() {
                    super(e.zzcam);
                }

                /* synthetic */ a(ehv ehvVar) {
                    this();
                }

                public final a a(int i) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    e.a((e) this.f26993a, i);
                    return this;
                }

                public final a a(boolean z) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    e.a((e) this.f26993a, z);
                    return this;
                }

                public final a b(boolean z) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    e.b((e) this.f26993a, z);
                    return this;
                }
            }

            static {
                e eVar = new e();
                zzcam = eVar;
                dnh.a(e.class, eVar);
            }

            private e() {
            }

            public static a a() {
                return zzcam.i();
            }

            static /* synthetic */ void a(e eVar, int i) {
                eVar.zzdv |= 4;
                eVar.zzcai = i;
            }

            static /* synthetic */ void a(e eVar, boolean z) {
                eVar.zzdv |= 1;
                eVar.zzcak = z;
            }

            static /* synthetic */ void b(e eVar, boolean z) {
                eVar.zzdv |= 2;
                eVar.zzcal = z;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            protected final Object a(int i, Object obj) {
                switch (ehv.f27856a[i - 1]) {
                    case 1:
                        return new e();
                    case 2:
                        return new a(null);
                    case 3:
                        return a(zzcam, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzdv", "zzcak", "zzcal", "zzcai"});
                    case 4:
                        return zzcam;
                    case 5:
                        dpc<e> dpcVar = zzek;
                        dpc<e> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (e.class) {
                                try {
                                    dpc<e> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzcam);
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
            g gVar = new g();
            zzcad = gVar;
            dnh.a(g.class, gVar);
        }

        private g() {
        }

        public static b a() {
            return zzcad.i();
        }

        static /* synthetic */ void a(g gVar, a aVar) {
            aVar.getClass();
            dnr<a> dnrVar = gVar.zzcac;
            if (!dnrVar.a()) {
                gVar.zzcac = dnh.a(dnrVar);
            }
            gVar.zzcac.add(aVar);
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new g();
                case 2:
                    return new b(null);
                case 3:
                    return a(zzcad, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzcac", a.class});
                case 4:
                    return zzcad;
                case 5:
                    dpc<g> dpcVar = zzek;
                    dpc<g> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (g.class) {
                            try {
                                dpc<g> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcad);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$h.class */
    public static final class h extends dnh<h, b> implements dov {
        private static final h zzcap;
        private static volatile dpc<h> zzek;
        private int zzcan;
        private w zzcao;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$h$a.class */
        public enum a implements dnm {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);
            
            private static final dnl<a> zzes = new eia();
            private final int value;

            a(int i) {
                this.value = i;
            }

            public static a zzce(int i) {
                switch (i) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
            }

            public static dno zzw() {
                return eib.f27859a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$h$b.class */
        public static final class b extends dnh.b<h, b> implements dov {
            private b() {
                super(h.zzcap);
            }

            /* synthetic */ b(ehv ehvVar) {
                this();
            }
        }

        static {
            h hVar = new h();
            zzcap = hVar;
            dnh.a(h.class, hVar);
        }

        private h() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new h();
                case 2:
                    return new b(null);
                case 3:
                    return a(zzcap, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzcan", a.zzw(), "zzcao"});
                case 4:
                    return zzcap;
                case 5:
                    dpc<h> dpcVar = zzek;
                    dpc<h> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (h.class) {
                            try {
                                dpc<h> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcap);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$i.class */
    public static final class i extends dnh<i, a> implements dov {
        private static final i zzcbf;
        private static volatile dpc<i> zzek;
        private String zzcbc = "";
        private dnr<h> zzcbd = dph.d();
        private int zzcbe;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$i$a.class */
        public static final class a extends dnh.b<i, a> implements dov {
            private a() {
                super(i.zzcbf);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            i iVar = new i();
            zzcbf = iVar;
            dnh.a(i.class, iVar);
        }

        private i() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new i();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcbf, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzdv", "zzcbc", "zzcbd", h.class, "zzcbe", eid.zzw()});
                case 4:
                    return zzcbf;
                case 5:
                    dpc<i> dpcVar = zzek;
                    dpc<i> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (i.class) {
                            try {
                                dpc<i> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcbf);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$j.class */
    public static final class j extends dnh<j, a> implements dov {
        private static final j zzcbl;
        private static volatile dpc<j> zzek;
        private String zzcbg = "";
        private dnr<h> zzcbh = dph.d();
        private int zzcbi = 1000;
        private int zzcbj = 1000;
        private int zzcbk = 1000;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$j$a.class */
        public static final class a extends dnh.b<j, a> implements dov {
            private a() {
                super(j.zzcbl);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                j.a((j) this.f26993a, str);
                return this;
            }
        }

        static {
            j jVar = new j();
            zzcbl = jVar;
            dnh.a(j.class, jVar);
        }

        private j() {
        }

        public static j a() {
            return zzcbl;
        }

        static /* synthetic */ void a(j jVar, String str) {
            str.getClass();
            jVar.zzdv |= 1;
            jVar.zzcbg = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new j();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcbl, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzdv", "zzcbg", "zzcbh", h.class, "zzcbi", eid.zzw(), "zzcbj", eid.zzw(), "zzcbk", eid.zzw()});
                case 4:
                    return zzcbl;
                case 5:
                    dpc<j> dpcVar = zzek;
                    dpc<j> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (j.class) {
                            try {
                                dpc<j> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcbl);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$k.class */
    public static final class k extends dnh<k, a> implements dov {
        private static final k zzcbs;
        private static volatile dpc<k> zzek;
        private int zzcbm;
        private y zzcbn;
        private y zzcbo;
        private y zzcbp;
        private dnr<y> zzcbq = dph.d();
        private int zzcbr;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$k$a.class */
        public static final class a extends dnh.b<k, a> implements dov {
            private a() {
                super(k.zzcbs);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            k kVar = new k();
            zzcbs = kVar;
            dnh.a(k.class, kVar);
        }

        private k() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new k();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcbs, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzdv", "zzcbm", "zzcbn", "zzcbo", "zzcbp", "zzcbq", y.class, "zzcbr"});
                case 4:
                    return zzcbs;
                case 5:
                    dpc<k> dpcVar = zzek;
                    dpc<k> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (k.class) {
                            try {
                                dpc<k> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcbs);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$l.class */
    public static final class l extends dnh<l, a> implements dov {
        private static final l zzccb;
        private static volatile dpc<l> zzek;
        private y zzcbu;
        private int zzcbv;
        private z zzcbw;
        private int zzcbx;
        private int zzdv;
        private String zzcbt = "";
        private int zzcby = 1000;
        private int zzcbz = 1000;
        private int zzcca = 1000;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$l$a.class */
        public static final class a extends dnh.b<l, a> implements dov {
            private a() {
                super(l.zzccb);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(z zVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                l.a((l) this.f26993a, zVar);
                return this;
            }

            public final a a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                l.a((l) this.f26993a, str);
                return this;
            }
        }

        static {
            l lVar = new l();
            zzccb = lVar;
            dnh.a(l.class, lVar);
        }

        private l() {
        }

        public static l a() {
            return zzccb;
        }

        static /* synthetic */ void a(l lVar, z zVar) {
            zVar.getClass();
            lVar.zzcbw = zVar;
            lVar.zzdv |= 8;
        }

        static /* synthetic */ void a(l lVar, String str) {
            str.getClass();
            lVar.zzdv |= 1;
            lVar.zzcbt = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new l();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzccb, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzdv", "zzcbt", "zzcbu", "zzcbv", "zzcbw", "zzcbx", "zzcby", eid.zzw(), "zzcbz", eid.zzw(), "zzcca", eid.zzw()});
                case 4:
                    return zzccb;
                case 5:
                    dpc<l> dpcVar = zzek;
                    dpc<l> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (l.class) {
                            try {
                                dpc<l> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzccb);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$m.class */
    public static final class m extends dnh<m, a> implements dov {
        private static final m zzccg;
        private static volatile dpc<m> zzek;
        private int zzccc;
        private z zzccd;
        private String zzcce = "";
        private String zzccf = "";
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$m$a.class */
        public static final class a extends dnh.b<m, a> implements dov {
            private a() {
                super(m.zzccg);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$m$b.class */
        public enum b implements dnm {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);
            
            private static final dnl<b> zzes = new eic();
            private final int value;

            b(int i) {
                this.value = i;
            }

            public static b zzcf(int i) {
                if (i == 0) {
                    return PLATFORM_UNSPECIFIED;
                }
                if (i == 1) {
                    return IOS;
                }
                if (i != 2) {
                    return null;
                }
                return ANDROID;
            }

            public static dno zzw() {
                return eie.f27860a;
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

        static {
            m mVar = new m();
            zzccg = mVar;
            dnh.a(m.class, mVar);
        }

        private m() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new m();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzccg, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzdv", "zzccc", b.zzw(), "zzccd", "zzcce", "zzccf"});
                case 4:
                    return zzccg;
                case 5:
                    dpc<m> dpcVar = zzek;
                    dpc<m> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (m.class) {
                            try {
                                dpc<m> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzccg);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$n.class */
    public static final class n extends dnh<n, a> implements dov {
        private static final n zzcdc;
        private static volatile dpc<n> zzek;
        private int zzccp;
        private int zzccr;
        private z zzcct;
        l zzccv;
        private m zzccw;
        private r zzccx;
        a zzccy;
        private t zzccz;
        private f zzcda;
        private g zzcdb;
        private int zzdv;
        String zzccq = "";
        private int zzccs = 1000;
        private dns zzccu = doh.d();

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$n$a.class */
        public static final class a extends dnh.b<n, a> implements dov {
            private a() {
                super(n.zzcdc);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(a.b bVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, (a) ((dnh) bVar.f()));
                return this;
            }

            public final a a(f fVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, fVar);
                return this;
            }

            public final a a(g gVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, gVar);
                return this;
            }

            public final a a(l.a aVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, (l) ((dnh) aVar.f()));
                return this;
            }

            public final a a(t tVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, tVar);
                return this;
            }

            public final a a(Iterable<? extends Long> iterable) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, iterable);
                return this;
            }

            public final a a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a, str);
                return this;
            }

            public final String a() {
                return ((n) this.f26993a).zzccq;
            }

            public final a g() {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                n.a((n) this.f26993a);
                return this;
            }

            public final l h() {
                n nVar = (n) this.f26993a;
                return nVar.zzccv == null ? l.a() : nVar.zzccv;
            }

            public final a i() {
                n nVar = (n) this.f26993a;
                return nVar.zzccy == null ? a.a() : nVar.zzccy;
            }
        }

        static {
            n nVar = new n();
            zzcdc = nVar;
            dnh.a(n.class, nVar);
        }

        private n() {
        }

        public static a a() {
            return zzcdc.i();
        }

        static /* synthetic */ void a(n nVar) {
            nVar.zzccu = doh.d();
        }

        static /* synthetic */ void a(n nVar, a aVar) {
            aVar.getClass();
            nVar.zzccy = aVar;
            nVar.zzdv |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }

        static /* synthetic */ void a(n nVar, f fVar) {
            fVar.getClass();
            nVar.zzcda = fVar;
            nVar.zzdv |= 1024;
        }

        static /* synthetic */ void a(n nVar, g gVar) {
            gVar.getClass();
            nVar.zzcdb = gVar;
            nVar.zzdv |= 2048;
        }

        static /* synthetic */ void a(n nVar, l lVar) {
            lVar.getClass();
            nVar.zzccv = lVar;
            nVar.zzdv |= 32;
        }

        static /* synthetic */ void a(n nVar, t tVar) {
            tVar.getClass();
            nVar.zzccz = tVar;
            nVar.zzdv |= 512;
        }

        static /* synthetic */ void a(n nVar, Iterable iterable) {
            dns dnsVar = nVar.zzccu;
            if (!dnsVar.a()) {
                int size = dnsVar.size();
                nVar.zzccu = dnsVar.b(size == 0 ? 10 : size << 1);
            }
            dln.a(iterable, nVar.zzccu);
        }

        static /* synthetic */ void a(n nVar, String str) {
            str.getClass();
            nVar.zzdv |= 2;
            nVar.zzccq = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new n();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcdc, "\u0001\r��\u0001\t\u0015\r��\u0001��\tင��\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzdv", "zzccp", "zzccq", "zzccr", "zzccs", eid.zzw(), "zzcct", "zzccu", "zzccv", "zzccw", "zzccx", "zzccy", "zzccz", "zzcda", "zzcdb"});
                case 4:
                    return zzcdc;
                case 5:
                    dpc<n> dpcVar = zzek;
                    dpc<n> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (n.class) {
                            try {
                                dpc<n> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcdc);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$o.class */
    public static final class o extends dnh<o, a> implements dov {
        private static final o zzcdh;
        private static volatile dpc<o> zzek;
        private int zzcde;
        private y zzcdg;
        private int zzdv;
        private String zzcdd = "";
        private dnn zzcdf = dnk.d();

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$o$a.class */
        public static final class a extends dnh.b<o, a> implements dov {
            private a() {
                super(o.zzcdh);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            o oVar = new o();
            zzcdh = oVar;
            dnh.a(o.class, oVar);
        }

        private o() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new o();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcdh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzdv", "zzcdd", "zzcde", eid.zzw(), "zzcdf", "zzcdg"});
                case 4:
                    return zzcdh;
                case 5:
                    dpc<o> dpcVar = zzek;
                    dpc<o> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (o.class) {
                            try {
                                dpc<o> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcdh);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$p.class */
    public static final class p extends dnh<p, a> implements dov {
        private static final p zzcdj;
        private static volatile dpc<p> zzek;
        private dnn zzcdf = dnk.d();
        private int zzcdi;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$p$a.class */
        public static final class a extends dnh.b<p, a> implements dov {
            private a() {
                super(p.zzcdj);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            p pVar = new p();
            zzcdj = pVar;
            dnh.a(p.class, pVar);
        }

        private p() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new p();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcdj, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzdv", "zzcdi", eid.zzw(), "zzcdf"});
                case 4:
                    return zzcdj;
                case 5:
                    dpc<p> dpcVar = zzek;
                    dpc<p> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (p.class) {
                            try {
                                dpc<p> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcdj);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$q.class */
    public static final class q extends dnh<q, a> implements dov {
        private static final q zzcdm;
        private static volatile dpc<q> zzek;
        private y zzcdg;
        private int zzcdi;
        private o zzcdk;
        private dnr<x> zzcdl = dph.d();
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$q$a.class */
        public static final class a extends dnh.b<q, a> implements dov {
            private a() {
                super(q.zzcdm);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            q qVar = new q();
            zzcdm = qVar;
            dnh.a(q.class, qVar);
        }

        private q() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new q();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcdm, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzdv", "zzcdk", "zzcdl", x.class, "zzcdi", eid.zzw(), "zzcdg"});
                case 4:
                    return zzcdm;
                case 5:
                    dpc<q> dpcVar = zzek;
                    dpc<q> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (q.class) {
                            try {
                                dpc<q> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcdm);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$r.class */
    public static final class r extends dnh<r, a> implements dov {
        private static final r zzcdo;
        private static volatile dpc<r> zzek;
        private int zzcan;
        int zzcdn;
        int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$r$a.class */
        public static final class a extends dnh.b<r, a> implements dov {
            private a() {
                super(r.zzcdo);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(b bVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                r.a((r) this.f26993a, bVar);
                return this;
            }

            public final a a(c cVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                r.a((r) this.f26993a, cVar);
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$r$b.class */
        public enum b implements dnm {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);
            
            private static final dnl<b> zzes = new eih();
            private final int value;

            b(int i) {
                this.value = i;
            }

            public static b zzch(int i) {
                if (i == 0) {
                    return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return TWO_G;
                }
                if (i == 2) {
                    return THREE_G;
                }
                if (i != 4) {
                    return null;
                }
                return LTE;
            }

            public static dno zzw() {
                return eii.f27862a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$r$c.class */
        public enum c implements dnm {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);
            
            private static final dnl<c> zzes = new eik();
            private final int value;

            c(int i) {
                this.value = i;
            }

            public static c zzci(int i) {
                if (i == 0) {
                    return NETWORKTYPE_UNSPECIFIED;
                }
                if (i == 1) {
                    return CELL;
                }
                if (i != 2) {
                    return null;
                }
                return WIFI;
            }

            public static dno zzw() {
                return eij.f27863a;
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

        static {
            r rVar = new r();
            zzcdo = rVar;
            dnh.a(r.class, rVar);
        }

        private r() {
        }

        static /* synthetic */ void a(r rVar, b bVar) {
            rVar.zzcdn = bVar.zzv();
            rVar.zzdv |= 2;
        }

        static /* synthetic */ void a(r rVar, c cVar) {
            rVar.zzcan = cVar.zzv();
            rVar.zzdv |= 1;
        }

        public static a c() {
            return zzcdo.i();
        }

        public static r d() {
            return zzcdo;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new r();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcdo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzdv", "zzcan", c.zzw(), "zzcdn", b.zzw()});
                case 4:
                    return zzcdo;
                case 5:
                    dpc<r> dpcVar = zzek;
                    dpc<r> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (r.class) {
                            try {
                                dpc<r> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcdo);
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
            return (this.zzdv & 1) != 0;
        }

        public final c b() {
            c zzci = c.zzci(this.zzcan);
            c cVar = zzci;
            if (zzci == null) {
                cVar = c.NETWORKTYPE_UNSPECIFIED;
            }
            return cVar;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$s.class */
    public static final class s extends dnh<s, a> implements dov {
        private static final s zzcea;
        private static volatile dpc<s> zzek;
        private int zzcdy;
        private y zzcdz;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$s$a.class */
        public static final class a extends dnh.b<s, a> implements dov {
            private a() {
                super(s.zzcea);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            s sVar = new s();
            zzcea = sVar;
            dnh.a(s.class, sVar);
        }

        private s() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new s();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcea, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzcdy", eid.zzw(), "zzcdz"});
                case 4:
                    return zzcea;
                case 5:
                    dpc<s> dpcVar = zzek;
                    dpc<s> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (s.class) {
                            try {
                                dpc<s> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcea);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$t.class */
    public static final class t extends dnh<t, c> implements dov {
        private static final t zzceu;
        private static volatile dpc<t> zzek;
        private int zzcep;
        private int zzceq;
        private long zzcer;
        private long zzcet;
        private int zzdv;
        private dnr<a> zzcac = dph.d();
        private String zzdw = "";
        private String zzces = "";

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$t$a.class */
        public static final class a extends dnh<a, C0479a> implements dov {
            static final dnp<Integer, h.a> zzceg = new eil();
            private static final a zzceo;
            private static volatile dpc<a> zzek;
            long zzceb;
            private int zzcec;
            long zzced;
            long zzcee;
            dnn zzcef = dnk.d();
            r zzceh;
            int zzcei;
            int zzcej;
            int zzcek;
            int zzcel;
            int zzcem;
            int zzcen;
            private int zzdv;

            /* renamed from: com.google.android.gms.internal.ads.eht$t$a$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$t$a$a.class */
            public static final class C0479a extends dnh.b<a, C0479a> implements dov {
                private C0479a() {
                    super(a.zzceo);
                }

                /* synthetic */ C0479a(ehv ehvVar) {
                    this();
                }

                public final C0479a a(int i) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, i);
                    return this;
                }

                public final C0479a a(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, j);
                    return this;
                }

                public final C0479a a(r rVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, rVar);
                    return this;
                }

                public final C0479a a(b bVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, bVar);
                    return this;
                }

                public final C0479a a(eid eidVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, eidVar);
                    return this;
                }

                public final C0479a a(Iterable<? extends h.a> iterable) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, iterable);
                    return this;
                }

                public final C0479a b(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.b((a) this.f26993a, j);
                    return this;
                }

                public final C0479a b(eid eidVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.b((a) this.f26993a, eidVar);
                    return this;
                }

                public final C0479a c(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.c((a) this.f26993a, j);
                    return this;
                }

                public final C0479a c(eid eidVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.c((a) this.f26993a, eidVar);
                    return this;
                }

                public final C0479a d(eid eidVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.d((a) this.f26993a, eidVar);
                    return this;
                }

                public final C0479a e(eid eidVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.e((a) this.f26993a, eidVar);
                    return this;
                }
            }

            static {
                a aVar = new a();
                zzceo = aVar;
                dnh.a(a.class, aVar);
            }

            private a() {
            }

            public static a a(byte[] bArr) throws zzenn {
                return (a) dnh.a(zzceo, bArr);
            }

            static /* synthetic */ void a(a aVar, int i) {
                aVar.zzdv |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                aVar.zzcel = i;
            }

            static /* synthetic */ void a(a aVar, long j) {
                aVar.zzdv |= 1;
                aVar.zzceb = j;
            }

            static /* synthetic */ void a(a aVar, r rVar) {
                rVar.getClass();
                aVar.zzceh = rVar;
                aVar.zzdv |= 16;
            }

            static /* synthetic */ void a(a aVar, b bVar) {
                aVar.zzcen = bVar.zzv();
                aVar.zzdv |= 1024;
            }

            static /* synthetic */ void a(a aVar, eid eidVar) {
                aVar.zzcec = eidVar.zzv();
                aVar.zzdv |= 2;
            }

            static /* synthetic */ void a(a aVar, Iterable iterable) {
                dnn dnnVar = aVar.zzcef;
                if (!dnnVar.a()) {
                    aVar.zzcef = dnh.a(dnnVar);
                }
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    aVar.zzcef.d(((h.a) it2.next()).zzv());
                }
            }

            public static C0479a b() {
                return zzceo.i();
            }

            static /* synthetic */ void b(a aVar, long j) {
                aVar.zzdv |= 4;
                aVar.zzced = j;
            }

            static /* synthetic */ void b(a aVar, eid eidVar) {
                aVar.zzcei = eidVar.zzv();
                aVar.zzdv |= 32;
            }

            static /* synthetic */ void c(a aVar, long j) {
                aVar.zzdv |= 8;
                aVar.zzcee = j;
            }

            static /* synthetic */ void c(a aVar, eid eidVar) {
                aVar.zzcej = eidVar.zzv();
                aVar.zzdv |= 64;
            }

            static /* synthetic */ void d(a aVar, eid eidVar) {
                aVar.zzcek = eidVar.zzv();
                aVar.zzdv |= 128;
            }

            static /* synthetic */ void e(a aVar, eid eidVar) {
                aVar.zzcem = eidVar.zzv();
                aVar.zzdv |= 512;
            }

            public final eid a() {
                eid zzcg = eid.zzcg(this.zzcec);
                eid eidVar = zzcg;
                if (zzcg == null) {
                    eidVar = eid.ENUM_FALSE;
                }
                return eidVar;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            protected final Object a(int i, Object obj) {
                switch (ehv.f27856a[i - 1]) {
                    case 1:
                        return new a();
                    case 2:
                        return new C0479a(null);
                    case 3:
                        return a(zzceo, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzdv", "zzceb", "zzcec", eid.zzw(), "zzced", "zzcee", "zzcef", h.a.zzw(), "zzceh", "zzcei", eid.zzw(), "zzcej", eid.zzw(), "zzcek", eid.zzw(), "zzcel", "zzcem", eid.zzw(), "zzcen", b.zzw()});
                    case 4:
                        return zzceo;
                    case 5:
                        dpc<a> dpcVar = zzek;
                        dpc<a> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (a.class) {
                                try {
                                    dpc<a> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzceo);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$t$b.class */
        public enum b implements dnm {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);
            
            private static final dnl<b> zzes = new eio();
            private final int value;

            b(int i) {
                this.value = i;
            }

            public static b zzcn(int i) {
                if (i == 0) {
                    return UNSPECIFIED;
                }
                if (i == 1) {
                    return CONNECTING;
                }
                if (i == 2) {
                    return CONNECTED;
                }
                if (i == 3) {
                    return DISCONNECTING;
                }
                if (i == 4) {
                    return DISCONNECTED;
                }
                if (i != 5) {
                    return null;
                }
                return SUSPENDED;
            }

            public static dno zzw() {
                return ein.f27866a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$t$c.class */
        public static final class c extends dnh.b<t, c> implements dov {
            private c() {
                super(t.zzceu);
            }

            /* synthetic */ c(ehv ehvVar) {
                this();
            }

            public final c a(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.a((t) this.f26993a, i);
                return this;
            }

            public final c a(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.a((t) this.f26993a, j);
                return this;
            }

            public final c a(Iterable<? extends a> iterable) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.a((t) this.f26993a, iterable);
                return this;
            }

            public final c a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.a((t) this.f26993a, str);
                return this;
            }

            public final c b(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.b((t) this.f26993a, i);
                return this;
            }

            public final c b(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.b((t) this.f26993a, j);
                return this;
            }

            public final c b(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                t.b((t) this.f26993a, str);
                return this;
            }
        }

        static {
            t tVar = new t();
            zzceu = tVar;
            dnh.a(t.class, tVar);
        }

        private t() {
        }

        public static c a() {
            return zzceu.i();
        }

        static /* synthetic */ void a(t tVar, int i) {
            tVar.zzdv |= 1;
            tVar.zzcep = i;
        }

        static /* synthetic */ void a(t tVar, long j) {
            tVar.zzdv |= 4;
            tVar.zzcer = j;
        }

        static /* synthetic */ void a(t tVar, Iterable iterable) {
            dnr<a> dnrVar = tVar.zzcac;
            if (!dnrVar.a()) {
                tVar.zzcac = dnh.a(dnrVar);
            }
            dln.a(iterable, tVar.zzcac);
        }

        static /* synthetic */ void a(t tVar, String str) {
            str.getClass();
            tVar.zzdv |= 8;
            tVar.zzdw = str;
        }

        static /* synthetic */ void b(t tVar, int i) {
            tVar.zzdv |= 2;
            tVar.zzceq = i;
        }

        static /* synthetic */ void b(t tVar, long j) {
            tVar.zzdv |= 32;
            tVar.zzcet = j;
        }

        static /* synthetic */ void b(t tVar, String str) {
            str.getClass();
            tVar.zzdv |= 16;
            tVar.zzces = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new t();
                case 2:
                    return new c(null);
                case 3:
                    return a(zzceu, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzdv", "zzcac", a.class, "zzcep", "zzceq", "zzcer", "zzdw", "zzces", "zzcet"});
                case 4:
                    return zzceu;
                case 5:
                    dpc<t> dpcVar = zzek;
                    dpc<t> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (t.class) {
                            try {
                                dpc<t> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzceu);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$u.class */
    public static final class u extends dnh<u, a> implements dov {
        private static final u zzcfn;
        private static volatile dpc<u> zzek;
        private int zzcfc = 1000;
        private int zzcfd = 1000;
        private int zzcfe;
        private int zzcff;
        private int zzcfg;
        private int zzcfh;
        private int zzcfi;
        private int zzcfj;
        private int zzcfk;
        private int zzcfl;
        private v zzcfm;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$u$a.class */
        public static final class a extends dnh.b<u, a> implements dov {
            private a() {
                super(u.zzcfn);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            u uVar = new u();
            zzcfn = uVar;
            dnh.a(u.class, uVar);
        }

        private u() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new u();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcfn, "\u0001\u000b��\u0001\u0001\u000b\u000b������\u0001ဌ��\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzdv", "zzcfc", eid.zzw(), "zzcfd", eid.zzw(), "zzcfe", "zzcff", "zzcfg", "zzcfh", "zzcfi", "zzcfj", "zzcfk", "zzcfl", "zzcfm"});
                case 4:
                    return zzcfn;
                case 5:
                    dpc<u> dpcVar = zzek;
                    dpc<u> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (u.class) {
                            try {
                                dpc<u> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcfn);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$v.class */
    public static final class v extends dnh<v, a> implements dov {
        private static final v zzcfq;
        private static volatile dpc<v> zzek;
        private int zzcfo;
        private int zzcfp;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$v$a.class */
        public static final class a extends dnh.b<v, a> implements dov {
            private a() {
                super(v.zzcfq);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            v vVar = new v();
            zzcfq = vVar;
            dnh.a(v.class, vVar);
        }

        private v() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new v();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcfq, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcfo", "zzcfp"});
                case 4:
                    return zzcfq;
                case 5:
                    dpc<v> dpcVar = zzek;
                    dpc<v> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (v.class) {
                            try {
                                dpc<v> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcfq);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$w.class */
    public static final class w extends dnh<w, a> implements dov {
        private static final w zzcft;
        private static volatile dpc<w> zzek;
        private int zzcfr;
        private int zzcfs;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$w$a.class */
        public static final class a extends dnh.b<w, a> implements dov {
            private a() {
                super(w.zzcft);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            w wVar = new w();
            zzcft = wVar;
            dnh.a(w.class, wVar);
        }

        private w() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new w();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcft, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcfr", "zzcfs"});
                case 4:
                    return zzcft;
                case 5:
                    dpc<w> dpcVar = zzek;
                    dpc<w> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (w.class) {
                            try {
                                dpc<w> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcft);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$x.class */
    public static final class x extends dnh<x, a> implements dov {
        private static final x zzcfu;
        private static volatile dpc<x> zzek;
        private String zzcdd = "";
        private int zzcde;
        private y zzcdg;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$x$a.class */
        public static final class a extends dnh.b<x, a> implements dov {
            private a() {
                super(x.zzcfu);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            x xVar = new x();
            zzcfu = xVar;
            dnh.a(x.class, xVar);
        }

        private x() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new x();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcfu, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdd", "zzcde", eid.zzw(), "zzcdg"});
                case 4:
                    return zzcfu;
                case 5:
                    dpc<x> dpcVar = zzek;
                    dpc<x> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (x.class) {
                            try {
                                dpc<x> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcfu);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$y.class */
    public static final class y extends dnh<y, a> implements dov {
        private static final y zzcfx;
        private static volatile dpc<y> zzek;
        private int zzcfv;
        private int zzcfw;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$y$a.class */
        public static final class a extends dnh.b<y, a> implements dov {
            private a() {
                super(y.zzcfx);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }
        }

        static {
            y yVar = new y();
            zzcfx = yVar;
            dnh.a(y.class, yVar);
        }

        private y() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new y();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcfx, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcfv", "zzcfw"});
                case 4:
                    return zzcfx;
                case 5:
                    dpc<y> dpcVar = zzek;
                    dpc<y> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (y.class) {
                            try {
                                dpc<y> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcfx);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$z.class */
    public static final class z extends dnh<z, a> implements dov {
        private static final z zzcgb;
        private static volatile dpc<z> zzek;
        private int zzcfy;
        private int zzcfz;
        private int zzcga;
        private int zzdv;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eht$z$a.class */
        public static final class a extends dnh.b<z, a> implements dov {
            private a() {
                super(z.zzcgb);
            }

            /* synthetic */ a(ehv ehvVar) {
                this();
            }

            public final a a(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                z.a((z) this.f26993a, i);
                return this;
            }

            public final a b(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                z.b((z) this.f26993a, i);
                return this;
            }

            public final a c(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                z.c((z) this.f26993a, i);
                return this;
            }
        }

        static {
            z zVar = new z();
            zzcgb = zVar;
            dnh.a(z.class, zVar);
        }

        private z() {
        }

        public static a a() {
            return zzcgb.i();
        }

        static /* synthetic */ void a(z zVar, int i) {
            zVar.zzdv |= 1;
            zVar.zzcfy = i;
        }

        static /* synthetic */ void b(z zVar, int i) {
            zVar.zzdv |= 2;
            zVar.zzcfz = i;
        }

        static /* synthetic */ void c(z zVar, int i) {
            zVar.zzdv |= 4;
            zVar.zzcga = i;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        protected final Object a(int i, Object obj) {
            switch (ehv.f27856a[i - 1]) {
                case 1:
                    return new z();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzcgb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zzdv", "zzcfy", "zzcfz", "zzcga"});
                case 4:
                    return zzcgb;
                case 5:
                    dpc<z> dpcVar = zzek;
                    dpc<z> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (z.class) {
                            try {
                                dpc<z> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzcgb);
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
