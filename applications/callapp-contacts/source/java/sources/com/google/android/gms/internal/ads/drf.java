package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import io.objectbox.model.PropertyFlags;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf.class */
public final class drf {

    /* renamed from: com.google.android.gms.internal.ads.drf$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a.class */
    public static final class C12395a extends dnh<C12395a, C12396a> implements dov {
        private static volatile dpc<C12395a> zzek;
        private static final C12395a zzjau;
        private int zzdv;
        private int zzjan;
        private C12397b zzjao;
        private boolean zzjar;
        private boolean zzjas;
        private byte zzjat = (byte) 2;
        private dlw zzjap = dlw.f47199a;
        private dlw zzjaq = dlw.f47199a;

        /* renamed from: com.google.android.gms.internal.ads.drf$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$a.class */
        public static final class C12396a extends dnh.C12383b<C12395a, C12396a> implements dov {
            private C12396a() {
                super(C12395a.zzjau);
            }

            /* synthetic */ C12396a(dre dreVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.drf$a$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$b.class */
        public static final class C12397b extends dnh<C12397b, C12398a> implements dov {
            private static volatile dpc<C12397b> zzek;
            private static final C12397b zzjaz;
            private int zzdv;
            private String zzjav = "";
            private String zzjaw = "";
            private String zzjax = "";
            private int zzjay;

            /* renamed from: com.google.android.gms.internal.ads.drf$a$b$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$b$a.class */
            public static final class C12398a extends dnh.C12383b<C12397b, C12398a> implements dov {
                private C12398a() {
                    super(C12397b.zzjaz);
                }

                /* synthetic */ C12398a(dre dreVar) {
                    this();
                }
            }

            static {
                C12397b c12397b = new C12397b();
                zzjaz = c12397b;
                dnh.m16339a(C12397b.class, c12397b);
            }

            private C12397b() {
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12397b();
                    case 2:
                        return new C12398a(null);
                    case 3:
                        return m16341a(zzjaz, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003", new Object[]{"zzdv", "zzjav", "zzjaw", "zzjax", "zzjay"});
                    case 4:
                        return zzjaz;
                    case 5:
                        dpc<C12397b> dpcVar = zzek;
                        dpc<C12397b> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12397b.class) {
                                try {
                                    dpc<C12397b> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjaz);
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

        /* renamed from: com.google.android.gms.internal.ads.drf$a$c */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$a$c.class */
        public enum EnumC12399c implements dnm {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            
            private static final dnl<EnumC12399c> zzes = new drh();
            private final int value;

            EnumC12399c(int i) {
                this.value = i;
            }

            public static EnumC12399c zzig(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return DANGEROUS;
                    }
                    if (i == 2) {
                        return UNKNOWN;
                    }
                    if (i == 3) {
                        return POTENTIALLY_UNWANTED;
                    }
                    if (i == 4) {
                        return DANGEROUS_HOST;
                    }
                    return null;
                }
                return SAFE;
            }

            public static dno zzw() {
                return dri.f47457a;
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
            C12395a c12395a = new C12395a();
            zzjau = c12395a;
            dnh.m16339a(C12395a.class, c12395a);
        }

        private C12395a() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (dre.f47454a[i - 1]) {
                case 1:
                    return new C12395a();
                case 2:
                    return new C12396a(null);
                case 3:
                    return m16341a(zzjau, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001ᔌ��\u0002ဉ\u0001\u0003ည\u0002\u0004ည\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzdv", "zzjan", EnumC12399c.zzw(), "zzjao", "zzjap", "zzjaq", "zzjar", "zzjas"});
                case 4:
                    return zzjau;
                case 5:
                    dpc<C12395a> dpcVar = zzek;
                    dpc<C12395a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12395a.class) {
                            try {
                                dpc<C12395a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzjau);
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
                    int i2 = 1;
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

    /* renamed from: com.google.android.gms.internal.ads.drf$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b.class */
    public static final class C12400b extends dnh<C12400b, C12403b> implements dov {
        private static volatile dpc<C12400b> zzek;
        private static final C12400b zzjbv;
        private int zzcan;
        private int zzdv;
        private int zzjbg;
        private C12401a zzjbj;
        private C12414f zzjbm;
        private boolean zzjbn;
        private boolean zzjbq;
        private boolean zzjbr;
        private C12421i zzjbs;
        private byte zzjat = (byte) 2;
        String zzjaw = "";
        private String zzjbh = "";
        private String zzjbi = "";
        dnr<C12418h> zzjbk = dph.m16197d();
        String zzjbl = "";
        private dnr<String> zzjbo = dph.m16197d();
        private String zzjbp = "";
        private dlw zzjap = dlw.f47199a;
        private dnr<String> zzjbt = dph.m16197d();
        private dnr<String> zzjbu = dph.m16197d();

        /* renamed from: com.google.android.gms.internal.ads.drf$b$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$a.class */
        public static final class C12401a extends dnh<C12401a, C12402a> implements dov {
            private static volatile dpc<C12401a> zzek;
            private static final C12401a zzjbx;
            private int zzdv;
            private String zzjbw = "";

            /* renamed from: com.google.android.gms.internal.ads.drf$b$a$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$a$a.class */
            public static final class C12402a extends dnh.C12383b<C12401a, C12402a> implements dov {
                private C12402a() {
                    super(C12401a.zzjbx);
                }

                /* synthetic */ C12402a(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12402a m15863a(String str) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12401a.m15865a((C12401a) this.f47274a, str);
                    return this;
                }
            }

            static {
                C12401a c12401a = new C12401a();
                zzjbx = c12401a;
                dnh.m16339a(C12401a.class, c12401a);
            }

            private C12401a() {
            }

            /* renamed from: a */
            public static C12402a m15866a() {
                return zzjbx.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15865a(C12401a c12401a, String str) {
                str.getClass();
                c12401a.zzdv |= 1;
                c12401a.zzjbw = str;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12401a();
                    case 2:
                        return new C12402a(null);
                    case 3:
                        return m16341a(zzjbx, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zzjbw"});
                    case 4:
                        return zzjbx;
                    case 5:
                        dpc<C12401a> dpcVar = zzek;
                        dpc<C12401a> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12401a.class) {
                                try {
                                    dpc<C12401a> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjbx);
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$b.class */
        public static final class C12403b extends dnh.C12383b<C12400b, C12403b> implements dov {
            private C12403b() {
                super(C12400b.zzjbv);
            }

            /* synthetic */ C12403b(dre dreVar) {
                this();
            }

            /* renamed from: a */
            public final C12403b m15861a(C12401a c12401a) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15877a((C12400b) this.f47274a, c12401a);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15860a(C12414f c12414f) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15876a((C12400b) this.f47274a, c12414f);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15859a(EnumC12417g enumC12417g) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15875a((C12400b) this.f47274a, enumC12417g);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15858a(C12418h c12418h) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15874a((C12400b) this.f47274a, c12418h);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15857a(C12421i c12421i) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15873a((C12400b) this.f47274a, c12421i);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15856a(Iterable<String> iterable) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15872a((C12400b) this.f47274a, iterable);
                return this;
            }

            /* renamed from: a */
            public final C12403b m15855a(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15871a((C12400b) this.f47274a, str);
                return this;
            }

            /* renamed from: a */
            public final String m15862a() {
                return ((C12400b) this.f47274a).zzjaw;
            }

            /* renamed from: b */
            public final C12403b m15854b(Iterable<String> iterable) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15869b((C12400b) this.f47274a, iterable);
                return this;
            }

            /* renamed from: b */
            public final C12403b m15853b(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15868b((C12400b) this.f47274a, str);
                return this;
            }

            /* renamed from: c */
            public final C12403b m15852c(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15867c((C12400b) this.f47274a, str);
                return this;
            }

            /* renamed from: g */
            public final List<C12418h> m15851g() {
                return Collections.unmodifiableList(((C12400b) this.f47274a).zzjbk);
            }

            /* renamed from: h */
            public final String m15850h() {
                return ((C12400b) this.f47274a).zzjbl;
            }

            /* renamed from: i */
            public final C12403b m15849i() {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12400b.m15878a((C12400b) this.f47274a);
                return this;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.drf$b$c */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$c.class */
        public static final class C12404c extends dnh<C12404c, C12405a> implements dov {
            private static volatile dpc<C12404c> zzek;
            private static final C12404c zzjbz;
            private int zzdv;
            private byte zzjat = (byte) 2;
            private dlw zzjby = dlw.f47199a;
            private dlw zzijw = dlw.f47199a;

            /* renamed from: com.google.android.gms.internal.ads.drf$b$c$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$c$a.class */
            public static final class C12405a extends dnh.C12383b<C12404c, C12405a> implements dov {
                private C12405a() {
                    super(C12404c.zzjbz);
                }

                /* synthetic */ C12405a(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12405a m15844a(dlw dlwVar) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12404c.m15847a((C12404c) this.f47274a, dlwVar);
                    return this;
                }

                /* renamed from: b */
                public final C12405a m15843b(dlw dlwVar) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12404c.m15845b((C12404c) this.f47274a, dlwVar);
                    return this;
                }
            }

            static {
                C12404c c12404c = new C12404c();
                zzjbz = c12404c;
                dnh.m16339a(C12404c.class, c12404c);
            }

            private C12404c() {
            }

            /* renamed from: a */
            public static C12405a m15848a() {
                return zzjbz.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15847a(C12404c c12404c, dlw dlwVar) {
                dlwVar.getClass();
                c12404c.zzdv |= 1;
                c12404c.zzjby = dlwVar;
            }

            /* renamed from: b */
            static /* synthetic */ void m15845b(C12404c c12404c, dlw dlwVar) {
                dlwVar.getClass();
                c12404c.zzdv |= 2;
                c12404c.zzijw = dlwVar;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12404c();
                    case 2:
                        return new C12405a(null);
                    case 3:
                        return m16341a(zzjbz, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzdv", "zzjby", "zzijw"});
                    case 4:
                        return zzjbz;
                    case 5:
                        dpc<C12404c> dpcVar = zzek;
                        dpc<C12404c> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12404c.class) {
                                try {
                                    dpc<C12404c> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjbz);
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
                        int i2 = 1;
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$d */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d.class */
        public static final class C12406d extends dnh<C12406d, C12409b> implements dov {
            private static volatile dpc<C12406d> zzek;
            private static final C12406d zzjcf;
            private int zzdv;
            private C12407a zzjca;
            private int zzjce;
            private byte zzjat = (byte) 2;
            private dnr<C12404c> zzjcb = dph.m16197d();
            private dlw zzjcc = dlw.f47199a;
            private dlw zzjcd = dlw.f47199a;

            /* renamed from: com.google.android.gms.internal.ads.drf$b$d$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$a.class */
            public static final class C12407a extends dnh<C12407a, C12408a> implements dov {
                private static volatile dpc<C12407a> zzek;
                private static final C12407a zzjcj;
                private int zzdv;
                private dlw zzjcg = dlw.f47199a;
                private dlw zzjch = dlw.f47199a;
                private dlw zzjci = dlw.f47199a;

                /* renamed from: com.google.android.gms.internal.ads.drf$b$d$a$a */
                /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$a$a.class */
                public static final class C12408a extends dnh.C12383b<C12407a, C12408a> implements dov {
                    private C12408a() {
                        super(C12407a.zzjcj);
                    }

                    /* synthetic */ C12408a(dre dreVar) {
                        this();
                    }
                }

                static {
                    C12407a c12407a = new C12407a();
                    zzjcj = c12407a;
                    dnh.m16339a(C12407a.class, c12407a);
                }

                private C12407a() {
                }

                @Override // com.google.android.gms.internal.ads.dnh
                /* renamed from: a */
                public final Object mo14895a(int i, Object obj) {
                    switch (dre.f47454a[i - 1]) {
                        case 1:
                            return new C12407a();
                        case 2:
                            return new C12408a(null);
                        case 3:
                            return m16341a(zzjcj, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcg", "zzjch", "zzjci"});
                        case 4:
                            return zzjcj;
                        case 5:
                            dpc<C12407a> dpcVar = zzek;
                            dpc<C12407a> dpcVar2 = dpcVar;
                            if (dpcVar == null) {
                                synchronized (C12407a.class) {
                                    try {
                                        dpc<C12407a> dpcVar3 = zzek;
                                        dpcVar2 = dpcVar3;
                                        if (dpcVar3 == null) {
                                            dpcVar2 = new dnh.C12382a<>(zzjcj);
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$d$b */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$d$b.class */
            public static final class C12409b extends dnh.C12383b<C12406d, C12409b> implements dov {
                private C12409b() {
                    super(C12406d.zzjcf);
                }

                /* synthetic */ C12409b(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12409b m15838a(C12404c c12404c) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12406d.m15841a((C12406d) this.f47274a, c12404c);
                    return this;
                }
            }

            static {
                C12406d c12406d = new C12406d();
                zzjcf = c12406d;
                dnh.m16339a(C12406d.class, c12406d);
            }

            private C12406d() {
            }

            /* renamed from: a */
            public static C12409b m15842a() {
                return zzjcf.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15841a(C12406d c12406d, C12404c c12404c) {
                c12404c.getClass();
                dnr<C12404c> dnrVar = c12406d.zzjcb;
                if (!dnrVar.mo16298a()) {
                    c12406d.zzjcb = dnh.m16342a(dnrVar);
                }
                c12406d.zzjcb.add(c12404c);
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12406d();
                    case 2:
                        return new C12409b(null);
                    case 3:
                        return m16341a(zzjcf, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdv", "zzjca", "zzjcb", C12404c.class, "zzjcc", "zzjcd", "zzjce"});
                    case 4:
                        return zzjcf;
                    case 5:
                        dpc<C12406d> dpcVar = zzek;
                        dpc<C12406d> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12406d.class) {
                                try {
                                    dpc<C12406d> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjcf);
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
                        int i2 = 1;
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$e */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e.class */
        public static final class C12410e extends dnh<C12410e, C12413b> implements dov {
            private static volatile dpc<C12410e> zzek;
            private static final C12410e zzjcm;
            private int zzdv;
            private int zzjce;
            private C12411a zzjck;
            private byte zzjat = (byte) 2;
            private dnr<C12404c> zzjcb = dph.m16197d();
            private dlw zzjcc = dlw.f47199a;
            private dlw zzjcd = dlw.f47199a;
            private dlw zzjcl = dlw.f47199a;

            /* renamed from: com.google.android.gms.internal.ads.drf$b$e$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$a.class */
            public static final class C12411a extends dnh<C12411a, C12412a> implements dov {
                private static volatile dpc<C12411a> zzek;
                private static final C12411a zzjcp;
                private int zzdv;
                private int zzjcn;
                private dlw zzjco = dlw.f47199a;
                private dlw zzjci = dlw.f47199a;

                /* renamed from: com.google.android.gms.internal.ads.drf$b$e$a$a */
                /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$a$a.class */
                public static final class C12412a extends dnh.C12383b<C12411a, C12412a> implements dov {
                    private C12412a() {
                        super(C12411a.zzjcp);
                    }

                    /* synthetic */ C12412a(dre dreVar) {
                        this();
                    }
                }

                static {
                    C12411a c12411a = new C12411a();
                    zzjcp = c12411a;
                    dnh.m16339a(C12411a.class, c12411a);
                }

                private C12411a() {
                }

                @Override // com.google.android.gms.internal.ads.dnh
                /* renamed from: a */
                public final Object mo14895a(int i, Object obj) {
                    switch (dre.f47454a[i - 1]) {
                        case 1:
                            return new C12411a();
                        case 2:
                            return new C12412a(null);
                        case 3:
                            return m16341a(zzjcp, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcn", "zzjco", "zzjci"});
                        case 4:
                            return zzjcp;
                        case 5:
                            dpc<C12411a> dpcVar = zzek;
                            dpc<C12411a> dpcVar2 = dpcVar;
                            if (dpcVar == null) {
                                synchronized (C12411a.class) {
                                    try {
                                        dpc<C12411a> dpcVar3 = zzek;
                                        dpcVar2 = dpcVar3;
                                        if (dpcVar3 == null) {
                                            dpcVar2 = new dnh.C12382a<>(zzjcp);
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$e$b */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$e$b.class */
            public static final class C12413b extends dnh.C12383b<C12410e, C12413b> implements dov {
                private C12413b() {
                    super(C12410e.zzjcm);
                }

                /* synthetic */ C12413b(dre dreVar) {
                    this();
                }
            }

            static {
                C12410e c12410e = new C12410e();
                zzjcm = c12410e;
                dnh.m16339a(C12410e.class, c12410e);
            }

            private C12410e() {
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12410e();
                    case 2:
                        return new C12413b(null);
                    case 3:
                        return m16341a(zzjcm, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdv", "zzjck", "zzjcb", C12404c.class, "zzjcc", "zzjcd", "zzjce", "zzjcl"});
                    case 4:
                        return zzjcm;
                    case 5:
                        dpc<C12410e> dpcVar = zzek;
                        dpc<C12410e> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12410e.class) {
                                try {
                                    dpc<C12410e> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjcm);
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
                        int i2 = 1;
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$f */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f.class */
        public static final class C12414f extends dnh<C12414f, C12416b> implements dov {
            private static volatile dpc<C12414f> zzek;
            private static final C12414f zzjcs;
            private int zzcan;
            private int zzdv;
            private String zzjcq = "";
            private dlw zzjcr = dlw.f47199a;

            /* renamed from: com.google.android.gms.internal.ads.drf$b$f$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f$a.class */
            public enum EnumC12415a implements dnm {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                
                private static final dnl<EnumC12415a> zzes = new drk();
                private final int value;

                EnumC12415a(int i) {
                    this.value = i;
                }

                public static EnumC12415a zzih(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return TYPE_CREATIVE;
                        }
                        return null;
                    }
                    return TYPE_UNKNOWN;
                }

                public static dno zzw() {
                    return drj.f47458a;
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$f$b */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$f$b.class */
            public static final class C12416b extends dnh.C12383b<C12414f, C12416b> implements dov {
                private C12416b() {
                    super(C12414f.zzjcs);
                }

                /* synthetic */ C12416b(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12416b m15830a(dlw dlwVar) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12414f.m15834a((C12414f) this.f47274a, dlwVar);
                    return this;
                }

                /* renamed from: a */
                public final C12416b m15829a(EnumC12415a enumC12415a) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12414f.m15833a((C12414f) this.f47274a, enumC12415a);
                    return this;
                }

                /* renamed from: a */
                public final C12416b m15828a(String str) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12414f.m15832a((C12414f) this.f47274a, str);
                    return this;
                }
            }

            static {
                C12414f c12414f = new C12414f();
                zzjcs = c12414f;
                dnh.m16339a(C12414f.class, c12414f);
            }

            private C12414f() {
            }

            /* renamed from: a */
            public static C12416b m15835a() {
                return zzjcs.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15834a(C12414f c12414f, dlw dlwVar) {
                dlwVar.getClass();
                c12414f.zzdv |= 4;
                c12414f.zzjcr = dlwVar;
            }

            /* renamed from: a */
            static /* synthetic */ void m15833a(C12414f c12414f, EnumC12415a enumC12415a) {
                c12414f.zzcan = enumC12415a.zzv();
                c12414f.zzdv |= 1;
            }

            /* renamed from: a */
            static /* synthetic */ void m15832a(C12414f c12414f, String str) {
                str.getClass();
                c12414f.zzdv |= 2;
                c12414f.zzjcq = str;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12414f();
                    case 2:
                        return new C12416b(null);
                    case 3:
                        return m16341a(zzjcs, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzcan", EnumC12415a.zzw(), "zzjcq", "zzjcr"});
                    case 4:
                        return zzjcs;
                    case 5:
                        dpc<C12414f> dpcVar = zzek;
                        dpc<C12414f> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12414f.class) {
                                try {
                                    dpc<C12414f> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjcs);
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$g */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$g.class */
        public enum EnumC12417g implements dnm {
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
            
            private static final dnl<EnumC12417g> zzes = new drl();
            private final int value;

            EnumC12417g(int i) {
                this.value = i;
            }

            public static EnumC12417g zzii(int i) {
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
                return C12423drm.f47459a;
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$h */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h.class */
        public static final class C12418h extends dnh<C12418h, C12420b> implements dov {
            private static volatile dpc<C12418h> zzek;
            private static final C12418h zzjdp;
            private int zzdv;
            private int zzjdh;
            private C12406d zzjdi;
            private C12410e zzjdj;
            private int zzjdk;
            private int zzjdn;
            private byte zzjat = (byte) 2;
            String zzjaw = "";
            private dnn zzjdl = dnk.m16308d();
            private String zzjdm = "";
            dnr<String> zzjdo = dph.m16197d();

            /* renamed from: com.google.android.gms.internal.ads.drf$b$h$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h$a.class */
            public enum EnumC12419a implements dnm {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                
                private static final dnl<EnumC12419a> zzes = new drn();
                private final int value;

                EnumC12419a(int i) {
                    this.value = i;
                }

                public static EnumC12419a zzij(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return AD_RESOURCE_CREATIVE;
                        }
                        if (i == 2) {
                            return AD_RESOURCE_POST_CLICK;
                        }
                        if (i == 3) {
                            return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                        }
                        return null;
                    }
                    return AD_RESOURCE_UNKNOWN;
                }

                public static dno zzw() {
                    return dro.f47460a;
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

            /* renamed from: com.google.android.gms.internal.ads.drf$b$h$b */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$h$b.class */
            public static final class C12420b extends dnh.C12383b<C12418h, C12420b> implements dov {
                private C12420b() {
                    super(C12418h.zzjdp);
                }

                /* synthetic */ C12420b(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12420b m15820a(int i) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12418h.m15826a((C12418h) this.f47274a, i);
                    return this;
                }

                /* renamed from: a */
                public final C12420b m15819a(C12406d c12406d) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12418h.m15825a((C12418h) this.f47274a, c12406d);
                    return this;
                }

                /* renamed from: a */
                public final C12420b m15818a(EnumC12419a enumC12419a) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12418h.m15824a((C12418h) this.f47274a, enumC12419a);
                    return this;
                }

                /* renamed from: a */
                public final C12420b m15817a(String str) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12418h.m15823a((C12418h) this.f47274a, str);
                    return this;
                }

                /* renamed from: b */
                public final C12420b m15816b(String str) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12418h.m15821b((C12418h) this.f47274a, str);
                    return this;
                }
            }

            static {
                C12418h c12418h = new C12418h();
                zzjdp = c12418h;
                dnh.m16339a(C12418h.class, c12418h);
            }

            private C12418h() {
            }

            /* renamed from: a */
            public static C12420b m15827a() {
                return zzjdp.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15826a(C12418h c12418h, int i) {
                c12418h.zzdv |= 1;
                c12418h.zzjdh = i;
            }

            /* renamed from: a */
            static /* synthetic */ void m15825a(C12418h c12418h, C12406d c12406d) {
                c12406d.getClass();
                c12418h.zzjdi = c12406d;
                c12418h.zzdv |= 4;
            }

            /* renamed from: a */
            static /* synthetic */ void m15824a(C12418h c12418h, EnumC12419a enumC12419a) {
                c12418h.zzjdn = enumC12419a.zzv();
                c12418h.zzdv |= 64;
            }

            /* renamed from: a */
            static /* synthetic */ void m15823a(C12418h c12418h, String str) {
                str.getClass();
                c12418h.zzdv |= 2;
                c12418h.zzjaw = str;
            }

            /* renamed from: b */
            static /* synthetic */ void m15821b(C12418h c12418h, String str) {
                str.getClass();
                dnr<String> dnrVar = c12418h.zzjdo;
                if (!dnrVar.mo16298a()) {
                    c12418h.zzjdo = dnh.m16342a(dnrVar);
                }
                c12418h.zzjdo.add(str);
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12418h();
                    case 2:
                        return new C12420b(null);
                    case 3:
                        return m16341a(zzjdp, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdv", "zzjdh", "zzjaw", "zzjdi", "zzjdj", "zzjdk", "zzjdl", "zzjdm", "zzjdn", EnumC12419a.zzw(), "zzjdo"});
                    case 4:
                        return zzjdp;
                    case 5:
                        dpc<C12418h> dpcVar = zzek;
                        dpc<C12418h> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12418h.class) {
                                try {
                                    dpc<C12418h> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjdp);
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
                        int i2 = 1;
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

        /* renamed from: com.google.android.gms.internal.ads.drf$b$i */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$i.class */
        public static final class C12421i extends dnh<C12421i, C12422a> implements dov {
            private static volatile dpc<C12421i> zzek;
            private static final C12421i zzjdy;
            private int zzdv;
            private String zzjdv = "";
            private long zzjdw;
            private boolean zzjdx;

            /* renamed from: com.google.android.gms.internal.ads.drf$b$i$a */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drf$b$i$a.class */
            public static final class C12422a extends dnh.C12383b<C12421i, C12422a> implements dov {
                private C12422a() {
                    super(C12421i.zzjdy);
                }

                /* synthetic */ C12422a(dre dreVar) {
                    this();
                }

                /* renamed from: a */
                public final C12422a m15810a(long j) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12421i.m15814a((C12421i) this.f47274a, j);
                    return this;
                }

                /* renamed from: a */
                public final C12422a m15809a(String str) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12421i.m15813a((C12421i) this.f47274a, str);
                    return this;
                }

                /* renamed from: a */
                public final C12422a m15808a(boolean z) {
                    if (this.f47275b) {
                        m16324c();
                        this.f47275b = false;
                    }
                    C12421i.m15812a((C12421i) this.f47274a, z);
                    return this;
                }
            }

            static {
                C12421i c12421i = new C12421i();
                zzjdy = c12421i;
                dnh.m16339a(C12421i.class, c12421i);
            }

            private C12421i() {
            }

            /* renamed from: a */
            public static C12422a m15815a() {
                return zzjdy.m16335i();
            }

            /* renamed from: a */
            static /* synthetic */ void m15814a(C12421i c12421i, long j) {
                c12421i.zzdv |= 2;
                c12421i.zzjdw = j;
            }

            /* renamed from: a */
            static /* synthetic */ void m15813a(C12421i c12421i, String str) {
                str.getClass();
                c12421i.zzdv |= 1;
                c12421i.zzjdv = str;
            }

            /* renamed from: a */
            static /* synthetic */ void m15812a(C12421i c12421i, boolean z) {
                c12421i.zzdv |= 4;
                c12421i.zzjdx = z;
            }

            @Override // com.google.android.gms.internal.ads.dnh
            /* renamed from: a */
            public final Object mo14895a(int i, Object obj) {
                switch (dre.f47454a[i - 1]) {
                    case 1:
                        return new C12421i();
                    case 2:
                        return new C12422a(null);
                    case 3:
                        return m16341a(zzjdy, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdv", "zzjdv", "zzjdw", "zzjdx"});
                    case 4:
                        return zzjdy;
                    case 5:
                        dpc<C12421i> dpcVar = zzek;
                        dpc<C12421i> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C12421i.class) {
                                try {
                                    dpc<C12421i> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.C12382a<>(zzjdy);
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
            C12400b c12400b = new C12400b();
            zzjbv = c12400b;
            dnh.m16339a(C12400b.class, c12400b);
        }

        private C12400b() {
        }

        /* renamed from: a */
        public static C12403b m15879a() {
            return zzjbv.m16335i();
        }

        /* renamed from: a */
        static /* synthetic */ void m15878a(C12400b c12400b) {
            c12400b.zzdv &= -65;
            c12400b.zzjbl = zzjbv.zzjbl;
        }

        /* renamed from: a */
        static /* synthetic */ void m15877a(C12400b c12400b, C12401a c12401a) {
            c12401a.getClass();
            c12400b.zzjbj = c12401a;
            c12400b.zzdv |= 32;
        }

        /* renamed from: a */
        static /* synthetic */ void m15876a(C12400b c12400b, C12414f c12414f) {
            c12414f.getClass();
            c12400b.zzjbm = c12414f;
            c12400b.zzdv |= 128;
        }

        /* renamed from: a */
        static /* synthetic */ void m15875a(C12400b c12400b, EnumC12417g enumC12417g) {
            c12400b.zzcan = enumC12417g.zzv();
            c12400b.zzdv |= 1;
        }

        /* renamed from: a */
        static /* synthetic */ void m15874a(C12400b c12400b, C12418h c12418h) {
            c12418h.getClass();
            dnr<C12418h> dnrVar = c12400b.zzjbk;
            if (!dnrVar.mo16298a()) {
                c12400b.zzjbk = dnh.m16342a(dnrVar);
            }
            c12400b.zzjbk.add(c12418h);
        }

        /* renamed from: a */
        static /* synthetic */ void m15873a(C12400b c12400b, C12421i c12421i) {
            c12421i.getClass();
            c12400b.zzjbs = c12421i;
            c12400b.zzdv |= PropertyFlags.UNSIGNED;
        }

        /* renamed from: a */
        static /* synthetic */ void m15872a(C12400b c12400b, Iterable iterable) {
            dnr<String> dnrVar = c12400b.zzjbt;
            if (!dnrVar.mo16298a()) {
                c12400b.zzjbt = dnh.m16342a(dnrVar);
            }
            dln.m16505a(iterable, c12400b.zzjbt);
        }

        /* renamed from: a */
        static /* synthetic */ void m15871a(C12400b c12400b, String str) {
            str.getClass();
            c12400b.zzdv |= 4;
            c12400b.zzjaw = str;
        }

        /* renamed from: b */
        static /* synthetic */ void m15869b(C12400b c12400b, Iterable iterable) {
            dnr<String> dnrVar = c12400b.zzjbu;
            if (!dnrVar.mo16298a()) {
                c12400b.zzjbu = dnh.m16342a(dnrVar);
            }
            dln.m16505a(iterable, c12400b.zzjbu);
        }

        /* renamed from: b */
        static /* synthetic */ void m15868b(C12400b c12400b, String str) {
            str.getClass();
            c12400b.zzdv |= 8;
            c12400b.zzjbh = str;
        }

        /* renamed from: c */
        static /* synthetic */ void m15867c(C12400b c12400b, String str) {
            str.getClass();
            c12400b.zzdv |= 64;
            c12400b.zzjbl = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (dre.f47454a[i - 1]) {
                case 1:
                    return new C12400b();
                case 2:
                    return new C12403b(null);
                case 3:
                    return m16341a(zzjbv, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdv", "zzjaw", "zzjbh", "zzjbi", "zzjbk", C12418h.class, "zzjbn", "zzjbo", "zzjbp", "zzjbq", "zzjbr", "zzcan", EnumC12417g.zzw(), "zzjbg", C12395a.EnumC12399c.zzw(), "zzjbj", "zzjbl", "zzjbm", "zzjap", "zzjbs", "zzjbt", "zzjbu"});
                case 4:
                    return zzjbv;
                case 5:
                    dpc<C12400b> dpcVar = zzek;
                    dpc<C12400b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12400b.class) {
                            try {
                                dpc<C12400b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzjbv);
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
                    int i2 = 1;
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
}
