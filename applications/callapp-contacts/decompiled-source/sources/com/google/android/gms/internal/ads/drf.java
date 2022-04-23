package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import io.objectbox.model.PropertyFlags;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf.class */
public final class drf {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a.class */
    public static final class a extends dnh<a, C0466a> implements dov {
        private static volatile dpc<a> zzek;
        private static final a zzjau;
        private int zzdv;
        private int zzjan;
        private b zzjao;
        private boolean zzjar;
        private boolean zzjas;
        private byte zzjat = (byte) 2;
        private dlw zzjap = dlw.f26941a;
        private dlw zzjaq = dlw.f26941a;

        /* renamed from: com.google.android.gms.internal.ads.drf$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$a.class */
        public static final class C0466a extends dnh.b<a, C0466a> implements dov {
            private C0466a() {
                super(a.zzjau);
            }

            /* synthetic */ C0466a(dre dreVar) {
                this();
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$b.class */
        public static final class b extends dnh<b, C0467a> implements dov {
            private static volatile dpc<b> zzek;
            private static final b zzjaz;
            private int zzdv;
            private String zzjav = "";
            private String zzjaw = "";
            private String zzjax = "";
            private int zzjay;

            /* renamed from: com.google.android.gms.internal.ads.drf$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$b$a.class */
            public static final class C0467a extends dnh.b<b, C0467a> implements dov {
                private C0467a() {
                    super(b.zzjaz);
                }

                /* synthetic */ C0467a(dre dreVar) {
                    this();
                }
            }

            static {
                b bVar = new b();
                zzjaz = bVar;
                dnh.a(b.class, bVar);
            }

            private b() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new b();
                    case 2:
                        return new C0467a(null);
                    case 3:
                        return a(zzjaz, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003", new Object[]{"zzdv", "zzjav", "zzjaw", "zzjax", "zzjay"});
                    case 4:
                        return zzjaz;
                    case 5:
                        dpc<b> dpcVar = zzek;
                        dpc<b> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (b.class) {
                                try {
                                    dpc<b> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjaz);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$c.class */
        public enum c implements dnm {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            
            private static final dnl<c> zzes = new drh();
            private final int value;

            c(int i) {
                this.value = i;
            }

            public static c zzig(int i) {
                if (i == 0) {
                    return SAFE;
                }
                if (i == 1) {
                    return DANGEROUS;
                }
                if (i == 2) {
                    return UNKNOWN;
                }
                if (i == 3) {
                    return POTENTIALLY_UNWANTED;
                }
                if (i != 4) {
                    return null;
                }
                return DANGEROUS_HOST;
            }

            public static dno zzw() {
                return dri.f27126a;
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
            a aVar = new a();
            zzjau = aVar;
            dnh.a(a.class, aVar);
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            int i2 = 1;
            switch (dre.f27123a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0466a(null);
                case 3:
                    return a(zzjau, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001ᔌ��\u0002ဉ\u0001\u0003ည\u0002\u0004ည\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzdv", "zzjan", c.zzw(), "zzjao", "zzjap", "zzjaq", "zzjar", "zzjas"});
                case 4:
                    return zzjau;
                case 5:
                    dpc<a> dpcVar = zzek;
                    dpc<a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (a.class) {
                            try {
                                dpc<a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzjau);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzjat = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b.class */
    public static final class b extends dnh<b, C0469b> implements dov {
        private static volatile dpc<b> zzek;
        private static final b zzjbv;
        private int zzcan;
        private int zzdv;
        private int zzjbg;
        private a zzjbj;
        private f zzjbm;
        private boolean zzjbn;
        private boolean zzjbq;
        private boolean zzjbr;
        private i zzjbs;
        private byte zzjat = (byte) 2;
        String zzjaw = "";
        private String zzjbh = "";
        private String zzjbi = "";
        dnr<h> zzjbk = dph.d();
        String zzjbl = "";
        private dnr<String> zzjbo = dph.d();
        private String zzjbp = "";
        private dlw zzjap = dlw.f26941a;
        private dnr<String> zzjbt = dph.d();
        private dnr<String> zzjbu = dph.d();

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$a.class */
        public static final class a extends dnh<a, C0468a> implements dov {
            private static volatile dpc<a> zzek;
            private static final a zzjbx;
            private int zzdv;
            private String zzjbw = "";

            /* renamed from: com.google.android.gms.internal.ads.drf$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$a$a.class */
            public static final class C0468a extends dnh.b<a, C0468a> implements dov {
                private C0468a() {
                    super(a.zzjbx);
                }

                /* synthetic */ C0468a(dre dreVar) {
                    this();
                }

                public final C0468a a(String str) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    a.a((a) this.f26993a, str);
                    return this;
                }
            }

            static {
                a aVar = new a();
                zzjbx = aVar;
                dnh.a(a.class, aVar);
            }

            private a() {
            }

            public static C0468a a() {
                return zzjbx.i();
            }

            static /* synthetic */ void a(a aVar, String str) {
                str.getClass();
                aVar.zzdv |= 1;
                aVar.zzjbw = str;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new a();
                    case 2:
                        return new C0468a(null);
                    case 3:
                        return a(zzjbx, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zzjbw"});
                    case 4:
                        return zzjbx;
                    case 5:
                        dpc<a> dpcVar = zzek;
                        dpc<a> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (a.class) {
                                try {
                                    dpc<a> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjbx);
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$b  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$b.class */
        public static final class C0469b extends dnh.b<b, C0469b> implements dov {
            private C0469b() {
                super(b.zzjbv);
            }

            /* synthetic */ C0469b(dre dreVar) {
                this();
            }

            public final C0469b a(a aVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, aVar);
                return this;
            }

            public final C0469b a(f fVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, fVar);
                return this;
            }

            public final C0469b a(g gVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, gVar);
                return this;
            }

            public final C0469b a(h hVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, hVar);
                return this;
            }

            public final C0469b a(i iVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, iVar);
                return this;
            }

            public final C0469b a(Iterable<String> iterable) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, iterable);
                return this;
            }

            public final C0469b a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a, str);
                return this;
            }

            public final String a() {
                return ((b) this.f26993a).zzjaw;
            }

            public final C0469b b(Iterable<String> iterable) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.b((b) this.f26993a, iterable);
                return this;
            }

            public final C0469b b(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.b((b) this.f26993a, str);
                return this;
            }

            public final C0469b c(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.c((b) this.f26993a, str);
                return this;
            }

            public final List<h> g() {
                return Collections.unmodifiableList(((b) this.f26993a).zzjbk);
            }

            public final String h() {
                return ((b) this.f26993a).zzjbl;
            }

            public final C0469b i() {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                b.a((b) this.f26993a);
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$c.class */
        public static final class c extends dnh<c, a> implements dov {
            private static volatile dpc<c> zzek;
            private static final c zzjbz;
            private int zzdv;
            private byte zzjat = (byte) 2;
            private dlw zzjby = dlw.f26941a;
            private dlw zzijw = dlw.f26941a;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$c$a.class */
            public static final class a extends dnh.b<c, a> implements dov {
                private a() {
                    super(c.zzjbz);
                }

                /* synthetic */ a(dre dreVar) {
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
            }

            static {
                c cVar = new c();
                zzjbz = cVar;
                dnh.a(c.class, cVar);
            }

            private c() {
            }

            public static a a() {
                return zzjbz.i();
            }

            static /* synthetic */ void a(c cVar, dlw dlwVar) {
                dlwVar.getClass();
                cVar.zzdv |= 1;
                cVar.zzjby = dlwVar;
            }

            static /* synthetic */ void b(c cVar, dlw dlwVar) {
                dlwVar.getClass();
                cVar.zzdv |= 2;
                cVar.zzijw = dlwVar;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                int i2 = 1;
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new c();
                    case 2:
                        return new a(null);
                    case 3:
                        return a(zzjbz, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzdv", "zzjby", "zzijw"});
                    case 4:
                        return zzjbz;
                    case 5:
                        dpc<c> dpcVar = zzek;
                        dpc<c> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (c.class) {
                                try {
                                    dpc<c> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjbz);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return Byte.valueOf(this.zzjat);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzjat = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d.class */
        public static final class d extends dnh<d, C0471b> implements dov {
            private static volatile dpc<d> zzek;
            private static final d zzjcf;
            private int zzdv;
            private a zzjca;
            private int zzjce;
            private byte zzjat = (byte) 2;
            private dnr<c> zzjcb = dph.d();
            private dlw zzjcc = dlw.f26941a;
            private dlw zzjcd = dlw.f26941a;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$a.class */
            public static final class a extends dnh<a, C0470a> implements dov {
                private static volatile dpc<a> zzek;
                private static final a zzjcj;
                private int zzdv;
                private dlw zzjcg = dlw.f26941a;
                private dlw zzjch = dlw.f26941a;
                private dlw zzjci = dlw.f26941a;

                /* renamed from: com.google.android.gms.internal.ads.drf$b$d$a$a  reason: collision with other inner class name */
                /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$a$a.class */
                public static final class C0470a extends dnh.b<a, C0470a> implements dov {
                    private C0470a() {
                        super(a.zzjcj);
                    }

                    /* synthetic */ C0470a(dre dreVar) {
                        this();
                    }
                }

                static {
                    a aVar = new a();
                    zzjcj = aVar;
                    dnh.a(a.class, aVar);
                }

                private a() {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.dnh
                public final Object a(int i, Object obj) {
                    switch (dre.f27123a[i - 1]) {
                        case 1:
                            return new a();
                        case 2:
                            return new C0470a(null);
                        case 3:
                            return a(zzjcj, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcg", "zzjch", "zzjci"});
                        case 4:
                            return zzjcj;
                        case 5:
                            dpc<a> dpcVar = zzek;
                            dpc<a> dpcVar2 = dpcVar;
                            if (dpcVar == null) {
                                synchronized (a.class) {
                                    try {
                                        dpc<a> dpcVar3 = zzek;
                                        dpcVar2 = dpcVar3;
                                        if (dpcVar3 == null) {
                                            dpcVar2 = new dnh.a<>(zzjcj);
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$d$b  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$b.class */
            public static final class C0471b extends dnh.b<d, C0471b> implements dov {
                private C0471b() {
                    super(d.zzjcf);
                }

                /* synthetic */ C0471b(dre dreVar) {
                    this();
                }

                public final C0471b a(c cVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    d.a((d) this.f26993a, cVar);
                    return this;
                }
            }

            static {
                d dVar = new d();
                zzjcf = dVar;
                dnh.a(d.class, dVar);
            }

            private d() {
            }

            public static C0471b a() {
                return zzjcf.i();
            }

            static /* synthetic */ void a(d dVar, c cVar) {
                cVar.getClass();
                dnr<c> dnrVar = dVar.zzjcb;
                if (!dnrVar.a()) {
                    dVar.zzjcb = dnh.a(dnrVar);
                }
                dVar.zzjcb.add(cVar);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                int i2 = 1;
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new d();
                    case 2:
                        return new C0471b(null);
                    case 3:
                        return a(zzjcf, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdv", "zzjca", "zzjcb", c.class, "zzjcc", "zzjcd", "zzjce"});
                    case 4:
                        return zzjcf;
                    case 5:
                        dpc<d> dpcVar = zzek;
                        dpc<d> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (d.class) {
                                try {
                                    dpc<d> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjcf);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return Byte.valueOf(this.zzjat);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzjat = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e.class */
        public static final class e extends dnh<e, C0473b> implements dov {
            private static volatile dpc<e> zzek;
            private static final e zzjcm;
            private int zzdv;
            private int zzjce;
            private a zzjck;
            private byte zzjat = (byte) 2;
            private dnr<c> zzjcb = dph.d();
            private dlw zzjcc = dlw.f26941a;
            private dlw zzjcd = dlw.f26941a;
            private dlw zzjcl = dlw.f26941a;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$a.class */
            public static final class a extends dnh<a, C0472a> implements dov {
                private static volatile dpc<a> zzek;
                private static final a zzjcp;
                private int zzdv;
                private int zzjcn;
                private dlw zzjco = dlw.f26941a;
                private dlw zzjci = dlw.f26941a;

                /* renamed from: com.google.android.gms.internal.ads.drf$b$e$a$a  reason: collision with other inner class name */
                /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$a$a.class */
                public static final class C0472a extends dnh.b<a, C0472a> implements dov {
                    private C0472a() {
                        super(a.zzjcp);
                    }

                    /* synthetic */ C0472a(dre dreVar) {
                        this();
                    }
                }

                static {
                    a aVar = new a();
                    zzjcp = aVar;
                    dnh.a(a.class, aVar);
                }

                private a() {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.ads.dnh
                public final Object a(int i, Object obj) {
                    switch (dre.f27123a[i - 1]) {
                        case 1:
                            return new a();
                        case 2:
                            return new C0472a(null);
                        case 3:
                            return a(zzjcp, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcn", "zzjco", "zzjci"});
                        case 4:
                            return zzjcp;
                        case 5:
                            dpc<a> dpcVar = zzek;
                            dpc<a> dpcVar2 = dpcVar;
                            if (dpcVar == null) {
                                synchronized (a.class) {
                                    try {
                                        dpc<a> dpcVar3 = zzek;
                                        dpcVar2 = dpcVar3;
                                        if (dpcVar3 == null) {
                                            dpcVar2 = new dnh.a<>(zzjcp);
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$e$b  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$b.class */
            public static final class C0473b extends dnh.b<e, C0473b> implements dov {
                private C0473b() {
                    super(e.zzjcm);
                }

                /* synthetic */ C0473b(dre dreVar) {
                    this();
                }
            }

            static {
                e eVar = new e();
                zzjcm = eVar;
                dnh.a(e.class, eVar);
            }

            private e() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                int i2 = 1;
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new e();
                    case 2:
                        return new C0473b(null);
                    case 3:
                        return a(zzjcm, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdv", "zzjck", "zzjcb", c.class, "zzjcc", "zzjcd", "zzjce", "zzjcl"});
                    case 4:
                        return zzjcm;
                    case 5:
                        dpc<e> dpcVar = zzek;
                        dpc<e> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (e.class) {
                                try {
                                    dpc<e> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjcm);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return Byte.valueOf(this.zzjat);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzjat = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f.class */
        public static final class f extends dnh<f, C0474b> implements dov {
            private static volatile dpc<f> zzek;
            private static final f zzjcs;
            private int zzcan;
            private int zzdv;
            private String zzjcq = "";
            private dlw zzjcr = dlw.f26941a;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f$a.class */
            public enum a implements dnm {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                
                private static final dnl<a> zzes = new drk();
                private final int value;

                a(int i) {
                    this.value = i;
                }

                public static a zzih(int i) {
                    if (i == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                public static dno zzw() {
                    return drj.f27127a;
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$f$b  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f$b.class */
            public static final class C0474b extends dnh.b<f, C0474b> implements dov {
                private C0474b() {
                    super(f.zzjcs);
                }

                /* synthetic */ C0474b(dre dreVar) {
                    this();
                }

                public final C0474b a(dlw dlwVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a, dlwVar);
                    return this;
                }

                public final C0474b a(a aVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a, aVar);
                    return this;
                }

                public final C0474b a(String str) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    f.a((f) this.f26993a, str);
                    return this;
                }
            }

            static {
                f fVar = new f();
                zzjcs = fVar;
                dnh.a(f.class, fVar);
            }

            private f() {
            }

            public static C0474b a() {
                return zzjcs.i();
            }

            static /* synthetic */ void a(f fVar, dlw dlwVar) {
                dlwVar.getClass();
                fVar.zzdv |= 4;
                fVar.zzjcr = dlwVar;
            }

            static /* synthetic */ void a(f fVar, a aVar) {
                fVar.zzcan = aVar.zzv();
                fVar.zzdv |= 1;
            }

            static /* synthetic */ void a(f fVar, String str) {
                str.getClass();
                fVar.zzdv |= 2;
                fVar.zzjcq = str;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new f();
                    case 2:
                        return new C0474b(null);
                    case 3:
                        return a(zzjcs, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzcan", a.zzw(), "zzjcq", "zzjcr"});
                    case 4:
                        return zzjcs;
                    case 5:
                        dpc<f> dpcVar = zzek;
                        dpc<f> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (f.class) {
                                try {
                                    dpc<f> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjcs);
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$g.class */
        public enum g implements dnm {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);
            
            private static final dnl<g> zzes = new drl();
            private final int value;

            g(int i) {
                this.value = i;
            }

            public static g zzii(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            public static dno zzw() {
                return drm.f27128a;
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

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h.class */
        public static final class h extends dnh<h, C0475b> implements dov {
            private static volatile dpc<h> zzek;
            private static final h zzjdp;
            private int zzdv;
            private int zzjdh;
            private d zzjdi;
            private e zzjdj;
            private int zzjdk;
            private int zzjdn;
            private byte zzjat = (byte) 2;
            String zzjaw = "";
            private dnn zzjdl = dnk.d();
            private String zzjdm = "";
            dnr<String> zzjdo = dph.d();

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h$a.class */
            public enum a implements dnm {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                
                private static final dnl<a> zzes = new drn();
                private final int value;

                a(int i) {
                    this.value = i;
                }

                public static a zzij(int i) {
                    if (i == 0) {
                        return AD_RESOURCE_UNKNOWN;
                    }
                    if (i == 1) {
                        return AD_RESOURCE_CREATIVE;
                    }
                    if (i == 2) {
                        return AD_RESOURCE_POST_CLICK;
                    }
                    if (i != 3) {
                        return null;
                    }
                    return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                }

                public static dno zzw() {
                    return dro.f27129a;
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$h$b  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h$b.class */
            public static final class C0475b extends dnh.b<h, C0475b> implements dov {
                private C0475b() {
                    super(h.zzjdp);
                }

                /* synthetic */ C0475b(dre dreVar) {
                    this();
                }

                public final C0475b a(int i) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    h.a((h) this.f26993a, i);
                    return this;
                }

                public final C0475b a(d dVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    h.a((h) this.f26993a, dVar);
                    return this;
                }

                public final C0475b a(a aVar) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    h.a((h) this.f26993a, aVar);
                    return this;
                }

                public final C0475b a(String str) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    h.a((h) this.f26993a, str);
                    return this;
                }

                public final C0475b b(String str) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    h.b((h) this.f26993a, str);
                    return this;
                }
            }

            static {
                h hVar = new h();
                zzjdp = hVar;
                dnh.a(h.class, hVar);
            }

            private h() {
            }

            public static C0475b a() {
                return zzjdp.i();
            }

            static /* synthetic */ void a(h hVar, int i) {
                hVar.zzdv |= 1;
                hVar.zzjdh = i;
            }

            static /* synthetic */ void a(h hVar, d dVar) {
                dVar.getClass();
                hVar.zzjdi = dVar;
                hVar.zzdv |= 4;
            }

            static /* synthetic */ void a(h hVar, a aVar) {
                hVar.zzjdn = aVar.zzv();
                hVar.zzdv |= 64;
            }

            static /* synthetic */ void a(h hVar, String str) {
                str.getClass();
                hVar.zzdv |= 2;
                hVar.zzjaw = str;
            }

            static /* synthetic */ void b(h hVar, String str) {
                str.getClass();
                dnr<String> dnrVar = hVar.zzjdo;
                if (!dnrVar.a()) {
                    hVar.zzjdo = dnh.a(dnrVar);
                }
                hVar.zzjdo.add(str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                int i2 = 1;
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new h();
                    case 2:
                        return new C0475b(null);
                    case 3:
                        return a(zzjdp, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdv", "zzjdh", "zzjaw", "zzjdi", "zzjdj", "zzjdk", "zzjdl", "zzjdm", "zzjdn", a.zzw(), "zzjdo"});
                    case 4:
                        return zzjdp;
                    case 5:
                        dpc<h> dpcVar = zzek;
                        dpc<h> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (h.class) {
                                try {
                                    dpc<h> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjdp);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return Byte.valueOf(this.zzjat);
                    case 7:
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzjat = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$i.class */
        public static final class i extends dnh<i, a> implements dov {
            private static volatile dpc<i> zzek;
            private static final i zzjdy;
            private int zzdv;
            private String zzjdv = "";
            private long zzjdw;
            private boolean zzjdx;

            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$i$a.class */
            public static final class a extends dnh.b<i, a> implements dov {
                private a() {
                    super(i.zzjdy);
                }

                /* synthetic */ a(dre dreVar) {
                    this();
                }

                public final a a(long j) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    i.a((i) this.f26993a, j);
                    return this;
                }

                public final a a(String str) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    i.a((i) this.f26993a, str);
                    return this;
                }

                public final a a(boolean z) {
                    if (this.f26994b) {
                        c();
                        this.f26994b = false;
                    }
                    i.a((i) this.f26993a, z);
                    return this;
                }
            }

            static {
                i iVar = new i();
                zzjdy = iVar;
                dnh.a(i.class, iVar);
            }

            private i() {
            }

            public static a a() {
                return zzjdy.i();
            }

            static /* synthetic */ void a(i iVar, long j) {
                iVar.zzdv |= 2;
                iVar.zzjdw = j;
            }

            static /* synthetic */ void a(i iVar, String str) {
                str.getClass();
                iVar.zzdv |= 1;
                iVar.zzjdv = str;
            }

            static /* synthetic */ void a(i iVar, boolean z) {
                iVar.zzdv |= 4;
                iVar.zzjdx = z;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (dre.f27123a[i - 1]) {
                    case 1:
                        return new i();
                    case 2:
                        return new a(null);
                    case 3:
                        return a(zzjdy, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdv", "zzjdv", "zzjdw", "zzjdx"});
                    case 4:
                        return zzjdy;
                    case 5:
                        dpc<i> dpcVar = zzek;
                        dpc<i> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (i.class) {
                                try {
                                    dpc<i> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzjdy);
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
            b bVar = new b();
            zzjbv = bVar;
            dnh.a(b.class, bVar);
        }

        private b() {
        }

        public static C0469b a() {
            return zzjbv.i();
        }

        static /* synthetic */ void a(b bVar) {
            bVar.zzdv &= -65;
            bVar.zzjbl = zzjbv.zzjbl;
        }

        static /* synthetic */ void a(b bVar, a aVar) {
            aVar.getClass();
            bVar.zzjbj = aVar;
            bVar.zzdv |= 32;
        }

        static /* synthetic */ void a(b bVar, f fVar) {
            fVar.getClass();
            bVar.zzjbm = fVar;
            bVar.zzdv |= 128;
        }

        static /* synthetic */ void a(b bVar, g gVar) {
            bVar.zzcan = gVar.zzv();
            bVar.zzdv |= 1;
        }

        static /* synthetic */ void a(b bVar, h hVar) {
            hVar.getClass();
            dnr<h> dnrVar = bVar.zzjbk;
            if (!dnrVar.a()) {
                bVar.zzjbk = dnh.a(dnrVar);
            }
            bVar.zzjbk.add(hVar);
        }

        static /* synthetic */ void a(b bVar, i iVar) {
            iVar.getClass();
            bVar.zzjbs = iVar;
            bVar.zzdv |= PropertyFlags.UNSIGNED;
        }

        static /* synthetic */ void a(b bVar, Iterable iterable) {
            dnr<String> dnrVar = bVar.zzjbt;
            if (!dnrVar.a()) {
                bVar.zzjbt = dnh.a(dnrVar);
            }
            dln.a(iterable, bVar.zzjbt);
        }

        static /* synthetic */ void a(b bVar, String str) {
            str.getClass();
            bVar.zzdv |= 4;
            bVar.zzjaw = str;
        }

        static /* synthetic */ void b(b bVar, Iterable iterable) {
            dnr<String> dnrVar = bVar.zzjbu;
            if (!dnrVar.a()) {
                bVar.zzjbu = dnh.a(dnrVar);
            }
            dln.a(iterable, bVar.zzjbu);
        }

        static /* synthetic */ void b(b bVar, String str) {
            str.getClass();
            bVar.zzdv |= 8;
            bVar.zzjbh = str;
        }

        static /* synthetic */ void c(b bVar, String str) {
            str.getClass();
            bVar.zzdv |= 64;
            bVar.zzjbl = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i2, Object obj) {
            int i3 = 1;
            switch (dre.f27123a[i2 - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new C0469b(null);
                case 3:
                    return a(zzjbv, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdv", "zzjaw", "zzjbh", "zzjbi", "zzjbk", h.class, "zzjbn", "zzjbo", "zzjbp", "zzjbq", "zzjbr", "zzcan", g.zzw(), "zzjbg", a.c.zzw(), "zzjbj", "zzjbl", "zzjbm", "zzjap", "zzjbs", "zzjbt", "zzjbu"});
                case 4:
                    return zzjbv;
                case 5:
                    dpc<b> dpcVar = zzek;
                    dpc<b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (b.class) {
                            try {
                                dpc<b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzjbv);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    if (obj == null) {
                        i3 = 0;
                    }
                    this.zzjat = (byte) i3;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
