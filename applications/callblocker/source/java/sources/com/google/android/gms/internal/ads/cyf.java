package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyf.class */
public final class cyf extends dcw<cyf, C2938a> implements dei {
    private static volatile dep<cyf> zzea;
    private static final cyf zzhpf;
    private int zzhox;
    private dde<C2939b> zzhpe = m10075t();

    /* renamed from: com.google.android.gms.internal.ads.cyf$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyf$a.class */
    public static final class C2938a extends dcw.C2955a<cyf, C2938a> implements dei {
        private C2938a() {
            super(cyf.zzhpf);
        }

        /* synthetic */ C2938a(cyg cygVar) {
            this();
        }

        /* renamed from: a */
        public final C2938a m10380a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyf) this.f14072a).m10381b(i);
            return this;
        }

        /* renamed from: a */
        public final C2938a m10379a(C2939b c2939b) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyf) this.f14072a).m10385a(c2939b);
            return this;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cyf$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyf$b.class */
    public static final class C2939b extends dcw<C2939b, C2940a> implements dei {
        private static volatile dep<C2939b> zzea;
        private static final C2939b zzhpg;
        private String zzhnz = "";
        private int zzhoq;
        private int zzhpb;
        private int zzhpc;

        /* renamed from: com.google.android.gms.internal.ads.cyf$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyf$b$a.class */
        public static final class C2940a extends dcw.C2955a<C2939b, C2940a> implements dei {
            private C2940a() {
                super(C2939b.zzhpg);
            }

            /* synthetic */ C2940a(cyg cygVar) {
                this();
            }

            /* renamed from: a */
            public final C2940a m10368a(int i) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2939b) this.f14072a).m10369b(i);
                return this;
            }

            /* renamed from: a */
            public final C2940a m10367a(cxy cxyVar) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2939b) this.f14072a).m10377a(cxyVar);
                return this;
            }

            /* renamed from: a */
            public final C2940a m10366a(cyq cyqVar) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2939b) this.f14072a).m10372a(cyqVar);
                return this;
            }

            /* renamed from: a */
            public final C2940a m10365a(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2939b) this.f14072a).m10371a(str);
                return this;
            }
        }

        static {
            C2939b c2939b = new C2939b();
            zzhpg = c2939b;
            dcw.m10083a(C2939b.class, c2939b);
        }

        private C2939b() {
        }

        /* renamed from: a */
        public static C2940a m10378a() {
            return zzhpg.m10079n();
        }

        /* renamed from: a */
        public final void m10377a(cxy cxyVar) {
            this.zzhpb = cxyVar.mo8208a();
        }

        /* renamed from: a */
        public final void m10372a(cyq cyqVar) {
            this.zzhoq = cyqVar.mo8208a();
        }

        /* renamed from: a */
        public final void m10371a(String str) {
            str.getClass();
            this.zzhnz = str;
        }

        /* renamed from: b */
        public final void m10369b(int i) {
            this.zzhpc = i;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2939b> depVar;
            switch (cyg.f13814a[i - 1]) {
                case 1:
                    obj3 = new C2939b();
                    break;
                case 2:
                    obj3 = new C2940a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzhpg, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzhnz", "zzhpb", "zzhpc", "zzhoq"});
                    break;
                case 4:
                    obj3 = zzhpg;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2939b.class) {
                            try {
                                dep<C2939b> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzhpg);
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
        cyf cyfVar = new cyf();
        zzhpf = cyfVar;
        dcw.m10083a(cyf.class, cyfVar);
    }

    private cyf() {
    }

    /* renamed from: a */
    public static C2938a m10386a() {
        return zzhpf.m10079n();
    }

    /* renamed from: a */
    public final void m10385a(C2939b c2939b) {
        c2939b.getClass();
        if (!this.zzhpe.mo10030a()) {
            this.zzhpe = dcw.m10086a(this.zzhpe);
        }
        this.zzhpe.add(c2939b);
    }

    /* renamed from: b */
    public final void m10381b(int i) {
        this.zzhox = i;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyf> depVar;
        switch (cyg.f13814a[i - 1]) {
            case 1:
                obj3 = new cyf();
                break;
            case 2:
                obj3 = new C2938a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpf, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzhox", "zzhpe", C2939b.class});
                break;
            case 4:
                obj3 = zzhpf;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyf.class) {
                        try {
                            dep<cyf> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpf);
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
