package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr.class */
public final class dgr {

    /* renamed from: com.google.android.gms.internal.ads.dgr$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a.class */
    public static final class C2969a extends dcw<C2969a, C2970a> implements dei {
        private static volatile dep<C2969a> zzea;
        private static final C2969a zziex;
        private int zzdl;
        private int zzieq;
        private C2971b zzier;
        private boolean zzieu;
        private boolean zziev;
        private byte zziew = (byte) 2;
        private dbi zzies = dbi.f13932a;
        private dbi zziet = dbi.f13932a;

        /* renamed from: com.google.android.gms.internal.ads.dgr$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a$a.class */
        public static final class C2970a extends dcw.C2955a<C2969a, C2970a> implements dei {
            private C2970a() {
                super(C2969a.zziex);
            }

            /* synthetic */ C2970a(dgq dgqVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a$b.class */
        public static final class C2971b extends dcw<C2971b, C2972a> implements dei {
            private static volatile dep<C2971b> zzea;
            private static final C2971b zzifc;
            private int zzdl;
            private String zziey = "";
            private String zziez = "";
            private String zzifa = "";
            private int zzifb;

            /* renamed from: com.google.android.gms.internal.ads.dgr$a$b$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a$b$a.class */
            public static final class C2972a extends dcw.C2955a<C2971b, C2972a> implements dei {
                private C2972a() {
                    super(C2971b.zzifc);
                }

                /* synthetic */ C2972a(dgq dgqVar) {
                    this();
                }
            }

            static {
                C2971b c2971b = new C2971b();
                zzifc = c2971b;
                dcw.m10083a(C2971b.class, c2971b);
            }

            private C2971b() {
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2971b> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2971b();
                        break;
                    case 2:
                        obj3 = new C2972a(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzifc, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\b��\u0002\b\u0001\u0003\b\u0002\u0004\u0004\u0003", new Object[]{"zzdl", "zziey", "zziez", "zzifa", "zzifb"});
                        break;
                    case 4:
                        obj3 = zzifc;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2971b.class) {
                                try {
                                    dep<C2971b> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzifc);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = (byte) 1;
                        break;
                    case 7:
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$a$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a$c.class */
        public enum EnumC2973c implements dcy {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            

            /* renamed from: f */
            private static final ddb<EnumC2973c> f14299f = new dgs();

            /* renamed from: g */
            private final int f14301g;

            EnumC2973c(int i) {
                this.f14301g = i;
            }

            /* renamed from: a */
            public static EnumC2973c m9584a(int i) {
                EnumC2973c enumC2973c;
                switch (i) {
                    case 0:
                        enumC2973c = SAFE;
                        break;
                    case 1:
                        enumC2973c = DANGEROUS;
                        break;
                    case 2:
                        enumC2973c = UNKNOWN;
                        break;
                    case 3:
                        enumC2973c = POTENTIALLY_UNWANTED;
                        break;
                    case 4:
                        enumC2973c = DANGEROUS_HOST;
                        break;
                    default:
                        enumC2973c = null;
                        break;
                }
                return enumC2973c;
            }

            /* renamed from: b */
            public static dda m9583b() {
                return dgu.f14329a;
            }

            @Override // com.google.android.gms.internal.ads.dcy
            /* renamed from: a */
            public final int mo8208a() {
                return this.f14301g;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f14301g);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        static {
            C2969a c2969a = new C2969a();
            zziex = c2969a;
            dcw.m10083a(C2969a.class, c2969a);
        }

        private C2969a() {
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2969a> depVar;
            switch (dgq.f14293a[i - 1]) {
                case 1:
                    obj3 = new C2969a();
                    break;
                case 2:
                    obj3 = new C2970a(null);
                    break;
                case 3:
                    obj3 = m10085a(zziex, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001Ԍ��\u0002\t\u0001\u0003\n\u0002\u0004\n\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzdl", "zzieq", EnumC2973c.m9583b(), "zzier", "zzies", "zziet", "zzieu", "zziev"});
                    break;
                case 4:
                    obj3 = zziex;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2969a.class) {
                            try {
                                dep<C2969a> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zziex);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
                        break;
                    }
                    break;
                case 6:
                    obj3 = Byte.valueOf(this.zziew);
                    break;
                case 7:
                    this.zziew = (byte) (obj == null ? 0 : 1);
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dgr$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b.class */
    public static final class C2974b extends dcw<C2974b, C2977b> implements dei {
        private static volatile dep<C2974b> zzea;
        private static final C2974b zzify;
        private int zzbxl;
        private int zzdl;
        private int zzifj;
        private C2975a zzifm;
        private C2988f zzifp;
        private boolean zzifq;
        private boolean zzift;
        private boolean zzifu;
        private C2995i zzifv;
        private byte zziew = (byte) 2;
        private String zziez = "";
        private String zzifk = "";
        private String zzifl = "";
        private dde<C2992h> zzifn = m10075t();
        private String zzifo = "";
        private dde<String> zzifr = dcw.m10075t();
        private String zzifs = "";
        private dbi zzies = dbi.f13932a;
        private dde<String> zzifw = dcw.m10075t();
        private dde<String> zzifx = dcw.m10075t();

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$a.class */
        public static final class C2975a extends dcw<C2975a, C2976a> implements dei {
            private static volatile dep<C2975a> zzea;
            private static final C2975a zziga;
            private int zzdl;
            private String zzifz = "";

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$a$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$a$a.class */
            public static final class C2976a extends dcw.C2955a<C2975a, C2976a> implements dei {
                private C2976a() {
                    super(C2975a.zziga);
                }

                /* synthetic */ C2976a(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2976a m9551a(String str) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2975a) this.f14072a).m9553a(str);
                    return this;
                }
            }

            static {
                C2975a c2975a = new C2975a();
                zziga = c2975a;
                dcw.m10083a(C2975a.class, c2975a);
            }

            private C2975a() {
            }

            /* renamed from: a */
            public static C2976a m9555a() {
                return zziga.m10079n();
            }

            /* renamed from: a */
            public final void m9553a(String str) {
                str.getClass();
                this.zzdl |= 1;
                this.zzifz = str;
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2975a> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2975a();
                        break;
                    case 2:
                        obj3 = new C2976a(null);
                        break;
                    case 3:
                        obj3 = m10085a(zziga, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001\b��", new Object[]{"zzdl", "zzifz"});
                        break;
                    case 4:
                        obj3 = zziga;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2975a.class) {
                                try {
                                    dep<C2975a> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zziga);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = (byte) 1;
                        break;
                    case 7:
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$b.class */
        public static final class C2977b extends dcw.C2955a<C2974b, C2977b> implements dei {
            private C2977b() {
                super(C2974b.zzify);
            }

            /* synthetic */ C2977b(dgq dgqVar) {
                this();
            }

            /* renamed from: a */
            public final C2977b m9549a(C2975a c2975a) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9581a(c2975a);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9548a(C2988f c2988f) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9580a(c2988f);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9547a(EnumC2991g enumC2991g) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9579a(enumC2991g);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9546a(C2992h c2992h) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9578a(c2992h);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9545a(C2995i c2995i) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9577a(c2995i);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9544a(Iterable<String> iterable) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9568a(iterable);
                return this;
            }

            /* renamed from: a */
            public final C2977b m9543a(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9567a(str);
                return this;
            }

            /* renamed from: a */
            public final String m9550a() {
                return ((C2974b) this.f14072a).m9582a();
            }

            /* renamed from: b */
            public final C2977b m9542b(Iterable<String> iterable) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9563b(iterable);
                return this;
            }

            /* renamed from: b */
            public final C2977b m9541b(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9562b(str);
                return this;
            }

            /* renamed from: c */
            public final C2977b m9540c(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9559c(str);
                return this;
            }

            /* renamed from: h */
            public final List<C2992h> m9539h() {
                return Collections.unmodifiableList(((C2974b) this.f14072a).m9566b());
            }

            /* renamed from: i */
            public final String m9538i() {
                return ((C2974b) this.f14072a).m9561c();
            }

            /* renamed from: j */
            public final C2977b m9537j() {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2974b) this.f14072a).m9556f();
                return this;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$c.class */
        public static final class C2978c extends dcw<C2978c, C2979a> implements dei {
            private static volatile dep<C2978c> zzea;
            private static final C2978c zzigc;
            private int zzdl;
            private byte zziew = (byte) 2;
            private dbi zzigb = dbi.f13932a;
            private dbi zzhoa = dbi.f13932a;

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$c$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$c$a.class */
            public static final class C2979a extends dcw.C2955a<C2978c, C2979a> implements dei {
                private C2979a() {
                    super(C2978c.zzigc);
                }

                /* synthetic */ C2979a(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2979a m9530a(dbi dbiVar) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2978c) this.f14072a).m9535a(dbiVar);
                    return this;
                }

                /* renamed from: b */
                public final C2979a m9529b(dbi dbiVar) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2978c) this.f14072a).m9532b(dbiVar);
                    return this;
                }
            }

            static {
                C2978c c2978c = new C2978c();
                zzigc = c2978c;
                dcw.m10083a(C2978c.class, c2978c);
            }

            private C2978c() {
            }

            /* renamed from: a */
            public static C2979a m9536a() {
                return zzigc.m10079n();
            }

            /* renamed from: a */
            public final void m9535a(dbi dbiVar) {
                dbiVar.getClass();
                this.zzdl |= 1;
                this.zzigb = dbiVar;
            }

            /* renamed from: b */
            public final void m9532b(dbi dbiVar) {
                dbiVar.getClass();
                this.zzdl |= 2;
                this.zzhoa = dbiVar;
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2978c> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2978c();
                        break;
                    case 2:
                        obj3 = new C2979a(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzigc, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001Ԋ��\u0002\n\u0001", new Object[]{"zzdl", "zzigb", "zzhoa"});
                        break;
                    case 4:
                        obj3 = zzigc;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2978c.class) {
                                try {
                                    dep<C2978c> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzigc);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = Byte.valueOf(this.zziew);
                        break;
                    case 7:
                        this.zziew = (byte) (obj == null ? 0 : 1);
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$d */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$d.class */
        public static final class C2980d extends dcw<C2980d, C2983b> implements dei {
            private static volatile dep<C2980d> zzea;
            private static final C2980d zzigi;
            private int zzdl;
            private C2981a zzigd;
            private int zzigh;
            private byte zziew = (byte) 2;
            private dde<C2978c> zzige = m10075t();
            private dbi zzigf = dbi.f13932a;
            private dbi zzigg = dbi.f13932a;

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$d$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$d$a.class */
            public static final class C2981a extends dcw<C2981a, C2982a> implements dei {
                private static volatile dep<C2981a> zzea;
                private static final C2981a zzigm;
                private int zzdl;
                private dbi zzigj = dbi.f13932a;
                private dbi zzigk = dbi.f13932a;
                private dbi zzigl = dbi.f13932a;

                /* renamed from: com.google.android.gms.internal.ads.dgr$b$d$a$a */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$d$a$a.class */
                public static final class C2982a extends dcw.C2955a<C2981a, C2982a> implements dei {
                    private C2982a() {
                        super(C2981a.zzigm);
                    }

                    /* synthetic */ C2982a(dgq dgqVar) {
                        this();
                    }
                }

                static {
                    C2981a c2981a = new C2981a();
                    zzigm = c2981a;
                    dcw.m10083a(C2981a.class, c2981a);
                }

                private C2981a() {
                }

                /* JADX WARN: Type inference failed for: r9v6 */
                @Override // com.google.android.gms.internal.ads.dcw
                /* renamed from: a */
                public final Object mo8219a(int i, Object obj, Object obj2) {
                    Object obj3;
                    dep<C2981a> depVar;
                    switch (dgq.f14293a[i - 1]) {
                        case 1:
                            obj3 = new C2981a();
                            break;
                        case 2:
                            obj3 = new C2982a(null);
                            break;
                        case 3:
                            obj3 = m10085a(zzigm, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\n��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzigj", "zzigk", "zzigl"});
                            break;
                        case 4:
                            obj3 = zzigm;
                            break;
                        case 5:
                            Object obj4 = zzea;
                            obj3 = obj4;
                            if (obj4 == null) {
                                synchronized (C2981a.class) {
                                    try {
                                        dep<C2981a> depVar2 = zzea;
                                        depVar = depVar2;
                                        if (depVar2 == null) {
                                            depVar = new dcw.C2957c<>(zzigm);
                                            zzea = depVar;
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                obj3 = depVar;
                                break;
                            }
                            break;
                        case 6:
                            obj3 = (byte) 1;
                            break;
                        case 7:
                            obj3 = null;
                            break;
                        default:
                            throw new UnsupportedOperationException();
                    }
                    return obj3 == 1 ? 1 : 0;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$d$b */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$d$b.class */
            public static final class C2983b extends dcw.C2955a<C2980d, C2983b> implements dei {
                private C2983b() {
                    super(C2980d.zzigi);
                }

                /* synthetic */ C2983b(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2983b m9523a(C2978c c2978c) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2980d) this.f14072a).m9527a(c2978c);
                    return this;
                }
            }

            static {
                C2980d c2980d = new C2980d();
                zzigi = c2980d;
                dcw.m10083a(C2980d.class, c2980d);
            }

            private C2980d() {
            }

            /* renamed from: a */
            public static C2983b m9528a() {
                return zzigi.m10079n();
            }

            /* renamed from: a */
            public final void m9527a(C2978c c2978c) {
                c2978c.getClass();
                if (!this.zzige.mo10030a()) {
                    this.zzige = dcw.m10086a(this.zzige);
                }
                this.zzige.add(c2978c);
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2980d> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2980d();
                        break;
                    case 2:
                        obj3 = new C2983b(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzigi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001\t��\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003", new Object[]{"zzdl", "zzigd", "zzige", C2978c.class, "zzigf", "zzigg", "zzigh"});
                        break;
                    case 4:
                        obj3 = zzigi;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2980d.class) {
                                try {
                                    dep<C2980d> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzigi);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = Byte.valueOf(this.zziew);
                        break;
                    case 7:
                        this.zziew = (byte) (obj == null ? 0 : 1);
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$e */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$e.class */
        public static final class C2984e extends dcw<C2984e, C2987b> implements dei {
            private static volatile dep<C2984e> zzea;
            private static final C2984e zzigp;
            private int zzdl;
            private int zzigh;
            private C2985a zzign;
            private byte zziew = (byte) 2;
            private dde<C2978c> zzige = m10075t();
            private dbi zzigf = dbi.f13932a;
            private dbi zzigg = dbi.f13932a;
            private dbi zzigo = dbi.f13932a;

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$e$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$e$a.class */
            public static final class C2985a extends dcw<C2985a, C2986a> implements dei {
                private static volatile dep<C2985a> zzea;
                private static final C2985a zzigs;
                private int zzdl;
                private int zzigq;
                private dbi zzigr = dbi.f13932a;
                private dbi zzigl = dbi.f13932a;

                /* renamed from: com.google.android.gms.internal.ads.dgr$b$e$a$a */
                /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$e$a$a.class */
                public static final class C2986a extends dcw.C2955a<C2985a, C2986a> implements dei {
                    private C2986a() {
                        super(C2985a.zzigs);
                    }

                    /* synthetic */ C2986a(dgq dgqVar) {
                        this();
                    }
                }

                static {
                    C2985a c2985a = new C2985a();
                    zzigs = c2985a;
                    dcw.m10083a(C2985a.class, c2985a);
                }

                private C2985a() {
                }

                /* JADX WARN: Type inference failed for: r9v6 */
                @Override // com.google.android.gms.internal.ads.dcw
                /* renamed from: a */
                public final Object mo8219a(int i, Object obj, Object obj2) {
                    Object obj3;
                    dep<C2985a> depVar;
                    switch (dgq.f14293a[i - 1]) {
                        case 1:
                            obj3 = new C2985a();
                            break;
                        case 2:
                            obj3 = new C2986a(null);
                            break;
                        case 3:
                            obj3 = m10085a(zzigs, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0004��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzigq", "zzigr", "zzigl"});
                            break;
                        case 4:
                            obj3 = zzigs;
                            break;
                        case 5:
                            Object obj4 = zzea;
                            obj3 = obj4;
                            if (obj4 == null) {
                                synchronized (C2985a.class) {
                                    try {
                                        dep<C2985a> depVar2 = zzea;
                                        depVar = depVar2;
                                        if (depVar2 == null) {
                                            depVar = new dcw.C2957c<>(zzigs);
                                            zzea = depVar;
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                obj3 = depVar;
                                break;
                            }
                            break;
                        case 6:
                            obj3 = (byte) 1;
                            break;
                        case 7:
                            obj3 = null;
                            break;
                        default:
                            throw new UnsupportedOperationException();
                    }
                    return obj3 == 1 ? 1 : 0;
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$e$b */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$e$b.class */
            public static final class C2987b extends dcw.C2955a<C2984e, C2987b> implements dei {
                private C2987b() {
                    super(C2984e.zzigp);
                }

                /* synthetic */ C2987b(dgq dgqVar) {
                    this();
                }
            }

            static {
                C2984e c2984e = new C2984e();
                zzigp = c2984e;
                dcw.m10083a(C2984e.class, c2984e);
            }

            private C2984e() {
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2984e> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2984e();
                        break;
                    case 2:
                        obj3 = new C2987b(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzigp, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001\t��\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004", new Object[]{"zzdl", "zzign", "zzige", C2978c.class, "zzigf", "zzigg", "zzigh", "zzigo"});
                        break;
                    case 4:
                        obj3 = zzigp;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2984e.class) {
                                try {
                                    dep<C2984e> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzigp);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = Byte.valueOf(this.zziew);
                        break;
                    case 7:
                        this.zziew = (byte) (obj == null ? 0 : 1);
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$f */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$f.class */
        public static final class C2988f extends dcw<C2988f, C2990b> implements dei {
            private static volatile dep<C2988f> zzea;
            private static final C2988f zzigv;
            private int zzbxl;
            private int zzdl;
            private String zzigt = "";
            private dbi zzigu = dbi.f13932a;

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$f$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$f$a.class */
            public enum EnumC2989a implements dcy {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                

                /* renamed from: c */
                private static final ddb<EnumC2989a> f14304c = new dgw();

                /* renamed from: d */
                private final int f14306d;

                EnumC2989a(int i) {
                    this.f14306d = i;
                }

                /* renamed from: a */
                public static EnumC2989a m9512a(int i) {
                    EnumC2989a enumC2989a;
                    switch (i) {
                        case 0:
                            enumC2989a = TYPE_UNKNOWN;
                            break;
                        case 1:
                            enumC2989a = TYPE_CREATIVE;
                            break;
                        default:
                            enumC2989a = null;
                            break;
                    }
                    return enumC2989a;
                }

                /* renamed from: b */
                public static dda m9511b() {
                    return dgv.f14330a;
                }

                @Override // com.google.android.gms.internal.ads.dcy
                /* renamed from: a */
                public final int mo8208a() {
                    return this.f14306d;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    StringBuilder sb = new StringBuilder("<");
                    sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                    sb.append(" number=").append(this.f14306d);
                    return sb.append(" name=").append(name()).append('>').toString();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$f$b */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$f$b.class */
            public static final class C2990b extends dcw.C2955a<C2988f, C2990b> implements dei {
                private C2990b() {
                    super(C2988f.zzigv);
                }

                /* synthetic */ C2990b(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2990b m9510a(dbi dbiVar) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2988f) this.f14072a).m9519a(dbiVar);
                    return this;
                }

                /* renamed from: a */
                public final C2990b m9509a(EnumC2989a enumC2989a) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2988f) this.f14072a).m9518a(enumC2989a);
                    return this;
                }

                /* renamed from: a */
                public final C2990b m9508a(String str) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2988f) this.f14072a).m9514a(str);
                    return this;
                }
            }

            static {
                C2988f c2988f = new C2988f();
                zzigv = c2988f;
                dcw.m10083a(C2988f.class, c2988f);
            }

            private C2988f() {
            }

            /* renamed from: a */
            public static C2990b m9520a() {
                return zzigv.m10079n();
            }

            /* renamed from: a */
            public final void m9519a(dbi dbiVar) {
                dbiVar.getClass();
                this.zzdl |= 4;
                this.zzigu = dbiVar;
            }

            /* renamed from: a */
            public final void m9518a(EnumC2989a enumC2989a) {
                this.zzbxl = enumC2989a.mo8208a();
                this.zzdl |= 1;
            }

            /* renamed from: a */
            public final void m9514a(String str) {
                str.getClass();
                this.zzdl |= 2;
                this.zzigt = str;
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2988f> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2988f();
                        break;
                    case 2:
                        obj3 = new C2990b(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzigv, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\b\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzbxl", EnumC2989a.m9511b(), "zzigt", "zzigu"});
                        break;
                    case 4:
                        obj3 = zzigv;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2988f.class) {
                                try {
                                    dep<C2988f> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzigv);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = (byte) 1;
                        break;
                    case 7:
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$g */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$g.class */
        public enum EnumC2991g implements dcy {
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
            

            /* renamed from: k */
            private static final ddb<EnumC2991g> f14317k = new dgx();

            /* renamed from: l */
            private final int f14319l;

            EnumC2991g(int i) {
                this.f14319l = i;
            }

            /* renamed from: a */
            public static EnumC2991g m9507a(int i) {
                EnumC2991g enumC2991g;
                switch (i) {
                    case 0:
                        enumC2991g = UNKNOWN;
                        break;
                    case 1:
                        enumC2991g = URL_PHISHING;
                        break;
                    case 2:
                        enumC2991g = URL_MALWARE;
                        break;
                    case 3:
                        enumC2991g = URL_UNWANTED;
                        break;
                    case 4:
                        enumC2991g = CLIENT_SIDE_PHISHING_URL;
                        break;
                    case 5:
                        enumC2991g = CLIENT_SIDE_MALWARE_URL;
                        break;
                    case 6:
                        enumC2991g = DANGEROUS_DOWNLOAD_RECOVERY;
                        break;
                    case 7:
                        enumC2991g = DANGEROUS_DOWNLOAD_WARNING;
                        break;
                    case 8:
                        enumC2991g = OCTAGON_AD;
                        break;
                    case 9:
                        enumC2991g = OCTAGON_AD_SB_MATCH;
                        break;
                    default:
                        enumC2991g = null;
                        break;
                }
                return enumC2991g;
            }

            /* renamed from: b */
            public static dda m9506b() {
                return dgy.f14331a;
            }

            @Override // com.google.android.gms.internal.ads.dcy
            /* renamed from: a */
            public final int mo8208a() {
                return this.f14319l;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f14319l);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$h */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$h.class */
        public static final class C2992h extends dcw<C2992h, C2994b> implements dei {
            private static volatile dep<C2992h> zzea;
            private static final C2992h zzihs;
            private int zzdl;
            private int zzihk;
            private C2980d zzihl;
            private C2984e zzihm;
            private int zzihn;
            private int zzihq;
            private byte zziew = (byte) 2;
            private String zziez = "";
            private ddd zziho = m10077r();
            private String zzihp = "";
            private dde<String> zzihr = dcw.m10075t();

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$h$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$h$a.class */
            public enum EnumC2993a implements dcy {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                

                /* renamed from: e */
                private static final ddb<EnumC2993a> f14324e = new dgz();

                /* renamed from: f */
                private final int f14326f;

                EnumC2993a(int i) {
                    this.f14326f = i;
                }

                /* renamed from: a */
                public static EnumC2993a m9491a(int i) {
                    EnumC2993a enumC2993a;
                    switch (i) {
                        case 0:
                            enumC2993a = AD_RESOURCE_UNKNOWN;
                            break;
                        case 1:
                            enumC2993a = AD_RESOURCE_CREATIVE;
                            break;
                        case 2:
                            enumC2993a = AD_RESOURCE_POST_CLICK;
                            break;
                        case 3:
                            enumC2993a = AD_RESOURCE_AUTO_CLICK_DESTINATION;
                            break;
                        default:
                            enumC2993a = null;
                            break;
                    }
                    return enumC2993a;
                }

                /* renamed from: b */
                public static dda m9490b() {
                    return dha.f14332a;
                }

                @Override // com.google.android.gms.internal.ads.dcy
                /* renamed from: a */
                public final int mo8208a() {
                    return this.f14326f;
                }

                @Override // java.lang.Enum
                public final String toString() {
                    StringBuilder sb = new StringBuilder("<");
                    sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                    sb.append(" number=").append(this.f14326f);
                    return sb.append(" name=").append(name()).append('>').toString();
                }
            }

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$h$b */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$h$b.class */
            public static final class C2994b extends dcw.C2955a<C2992h, C2994b> implements dei {
                private C2994b() {
                    super(C2992h.zzihs);
                }

                /* synthetic */ C2994b(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2994b m9489a(int i) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2992h) this.f14072a).m9496b(i);
                    return this;
                }

                /* renamed from: a */
                public final C2994b m9488a(C2980d c2980d) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2992h) this.f14072a).m9504a(c2980d);
                    return this;
                }

                /* renamed from: a */
                public final C2994b m9487a(EnumC2993a enumC2993a) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2992h) this.f14072a).m9503a(enumC2993a);
                    return this;
                }

                /* renamed from: a */
                public final C2994b m9486a(String str) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2992h) this.f14072a).m9498a(str);
                    return this;
                }

                /* renamed from: b */
                public final C2994b m9485b(String str) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2992h) this.f14072a).m9494b(str);
                    return this;
                }
            }

            static {
                C2992h c2992h = new C2992h();
                zzihs = c2992h;
                dcw.m10083a(C2992h.class, c2992h);
            }

            private C2992h() {
            }

            /* renamed from: a */
            public final void m9504a(C2980d c2980d) {
                c2980d.getClass();
                this.zzihl = c2980d;
                this.zzdl |= 4;
            }

            /* renamed from: a */
            public final void m9503a(EnumC2993a enumC2993a) {
                this.zzihq = enumC2993a.mo8208a();
                this.zzdl |= 64;
            }

            /* renamed from: a */
            public final void m9498a(String str) {
                str.getClass();
                this.zzdl |= 2;
                this.zziez = str;
            }

            /* renamed from: b */
            public final void m9496b(int i) {
                this.zzdl |= 1;
                this.zzihk = i;
            }

            /* renamed from: b */
            public final void m9494b(String str) {
                str.getClass();
                if (!this.zzihr.mo10030a()) {
                    this.zzihr = dcw.m10086a(this.zzihr);
                }
                this.zzihr.add(str);
            }

            /* renamed from: c */
            public static C2994b m9493c() {
                return zzihs.m10079n();
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2992h> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2992h();
                        break;
                    case 2:
                        obj3 = new C2994b(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzihs, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001Ԅ��\u0002\b\u0001\u0003Љ\u0002\u0004Љ\u0003\u0005\u0004\u0004\u0006\u0016\u0007\b\u0005\b\f\u0006\t\u001a", new Object[]{"zzdl", "zzihk", "zziez", "zzihl", "zzihm", "zzihn", "zziho", "zzihp", "zzihq", EnumC2993a.m9490b(), "zzihr"});
                        break;
                    case 4:
                        obj3 = zzihs;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2992h.class) {
                                try {
                                    dep<C2992h> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzihs);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = Byte.valueOf(this.zziew);
                        break;
                    case 7:
                        this.zziew = (byte) (obj == null ? 0 : 1);
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }

            /* renamed from: a */
            public final String m9505a() {
                return this.zziez;
            }

            /* renamed from: b */
            public final int m9497b() {
                return this.zzihr.size();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dgr$b$i */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$i.class */
        public static final class C2995i extends dcw<C2995i, C2996a> implements dei {
            private static volatile dep<C2995i> zzea;
            private static final C2995i zziib;
            private int zzdl;
            private String zzihy = "";
            private long zzihz;
            private boolean zziia;

            /* renamed from: com.google.android.gms.internal.ads.dgr$b$i$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgr$b$i$a.class */
            public static final class C2996a extends dcw.C2955a<C2995i, C2996a> implements dei {
                private C2996a() {
                    super(C2995i.zziib);
                }

                /* synthetic */ C2996a(dgq dgqVar) {
                    this();
                }

                /* renamed from: a */
                public final C2996a m9476a(long j) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2995i) this.f14072a).m9483a(j);
                    return this;
                }

                /* renamed from: a */
                public final C2996a m9475a(String str) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2995i) this.f14072a).m9479a(str);
                    return this;
                }

                /* renamed from: a */
                public final C2996a m9474a(boolean z) {
                    if (this.f14073b) {
                        m10066c();
                        this.f14073b = false;
                    }
                    ((C2995i) this.f14072a).m9478a(z);
                    return this;
                }
            }

            static {
                C2995i c2995i = new C2995i();
                zziib = c2995i;
                dcw.m10083a(C2995i.class, c2995i);
            }

            private C2995i() {
            }

            /* renamed from: a */
            public static C2996a m9484a() {
                return zziib.m10079n();
            }

            /* renamed from: a */
            public final void m9483a(long j) {
                this.zzdl |= 2;
                this.zzihz = j;
            }

            /* renamed from: a */
            public final void m9479a(String str) {
                str.getClass();
                this.zzdl |= 1;
                this.zzihy = str;
            }

            /* renamed from: a */
            public final void m9478a(boolean z) {
                this.zzdl |= 4;
                this.zziia = z;
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2995i> depVar;
                switch (dgq.f14293a[i - 1]) {
                    case 1:
                        obj3 = new C2995i();
                        break;
                    case 2:
                        obj3 = new C2996a(null);
                        break;
                    case 3:
                        obj3 = m10085a(zziib, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\u0002\u0001\u0003\u0007\u0002", new Object[]{"zzdl", "zzihy", "zzihz", "zziia"});
                        break;
                    case 4:
                        obj3 = zziib;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2995i.class) {
                                try {
                                    dep<C2995i> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zziib);
                                        zzea = depVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            obj3 = depVar;
                            break;
                        }
                        break;
                    case 6:
                        obj3 = (byte) 1;
                        break;
                    case 7:
                        obj3 = null;
                        break;
                    default:
                        throw new UnsupportedOperationException();
                }
                return obj3 == 1 ? 1 : 0;
            }
        }

        static {
            C2974b c2974b = new C2974b();
            zzify = c2974b;
            dcw.m10083a(C2974b.class, c2974b);
        }

        private C2974b() {
        }

        /* renamed from: a */
        public final void m9581a(C2975a c2975a) {
            c2975a.getClass();
            this.zzifm = c2975a;
            this.zzdl |= 32;
        }

        /* renamed from: a */
        public final void m9580a(C2988f c2988f) {
            c2988f.getClass();
            this.zzifp = c2988f;
            this.zzdl |= 128;
        }

        /* renamed from: a */
        public final void m9579a(EnumC2991g enumC2991g) {
            this.zzbxl = enumC2991g.mo8208a();
            this.zzdl |= 1;
        }

        /* renamed from: a */
        public final void m9578a(C2992h c2992h) {
            c2992h.getClass();
            if (!this.zzifn.mo10030a()) {
                this.zzifn = dcw.m10086a(this.zzifn);
            }
            this.zzifn.add(c2992h);
        }

        /* renamed from: a */
        public final void m9577a(C2995i c2995i) {
            c2995i.getClass();
            this.zzifv = c2995i;
            this.zzdl |= 8192;
        }

        /* renamed from: a */
        public final void m9568a(Iterable<String> iterable) {
            if (!this.zzifw.mo10030a()) {
                this.zzifw = dcw.m10086a(this.zzifw);
            }
            day.m10250a(iterable, this.zzifw);
        }

        /* renamed from: a */
        public final void m9567a(String str) {
            str.getClass();
            this.zzdl |= 4;
            this.zziez = str;
        }

        /* renamed from: b */
        public final void m9563b(Iterable<String> iterable) {
            if (!this.zzifx.mo10030a()) {
                this.zzifx = dcw.m10086a(this.zzifx);
            }
            day.m10250a(iterable, this.zzifx);
        }

        /* renamed from: b */
        public final void m9562b(String str) {
            str.getClass();
            this.zzdl |= 8;
            this.zzifk = str;
        }

        /* renamed from: c */
        public final void m9559c(String str) {
            str.getClass();
            this.zzdl |= 64;
            this.zzifo = str;
        }

        /* renamed from: d */
        public static C2977b m9558d() {
            return zzify.m10079n();
        }

        /* renamed from: f */
        public final void m9556f() {
            this.zzdl &= -65;
            this.zzifo = zzify.zzifo;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2974b> depVar;
            switch (dgq.f14293a[i - 1]) {
                case 1:
                    obj3 = new C2974b();
                    break;
                case 2:
                    obj3 = new C2977b(null);
                    break;
                case 3:
                    obj3 = m10085a(zzify, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001\b\u0002\u0002\b\u0003\u0003\b\u0004\u0004Л\u0005\u0007\b\u0006\u001a\u0007\b\t\b\u0007\n\t\u0007\u000b\n\f��\u000b\f\u0001\f\t\u0005\r\b\u0006\u000e\t\u0007\u000f\n\f\u0011\t\r\u0014\u001a\u0015\u001a", new Object[]{"zzdl", "zziez", "zzifk", "zzifl", "zzifn", C2992h.class, "zzifq", "zzifr", "zzifs", "zzift", "zzifu", "zzbxl", EnumC2991g.m9506b(), "zzifj", C2969a.EnumC2973c.m9583b(), "zzifm", "zzifo", "zzifp", "zzies", "zzifv", "zzifw", "zzifx"});
                    break;
                case 4:
                    obj3 = zzify;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2974b.class) {
                            try {
                                dep<C2974b> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzify);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
                        break;
                    }
                    break;
                case 6:
                    obj3 = Byte.valueOf(this.zziew);
                    break;
                case 7:
                    this.zziew = (byte) (obj == null ? 0 : 1);
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final String m9582a() {
            return this.zziez;
        }

        /* renamed from: b */
        public final List<C2992h> m9566b() {
            return this.zzifn;
        }

        /* renamed from: c */
        public final String m9561c() {
            return this.zzifo;
        }
    }
}
