package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis.class */
public final class dis extends dnh<dis, C12367b> implements dov {
    private static volatile dpc<dis> zzek;
    private static final dis zzilb;
    private int zzikt;
    private dnr<C12365a> zzila = dph.m16197d();

    /* renamed from: com.google.android.gms.internal.ads.dis$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$a.class */
    public static final class C12365a extends dnh<C12365a, C12366a> implements dov {
        private static volatile dpc<C12365a> zzek;
        private static final C12365a zzilc;
        private String zzijv = "";
        private int zzikm;
        private int zzikx;
        private int zziky;

        /* renamed from: com.google.android.gms.internal.ads.dis$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$a$a.class */
        public static final class C12366a extends dnh.C12383b<C12365a, C12366a> implements dov {
            private C12366a() {
                super(C12365a.zzilc);
            }

            /* synthetic */ C12366a(dir dirVar) {
                this();
            }

            /* renamed from: a */
            public final C12366a m16609a(int i) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                ((C12365a) this.f47274a).zziky = i;
                return this;
            }

            /* renamed from: a */
            public final C12366a m16608a(dii diiVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12365a.m16613a((C12365a) this.f47274a, diiVar);
                return this;
            }

            /* renamed from: a */
            public final C12366a m16607a(djb djbVar) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12365a.m16612a((C12365a) this.f47274a, djbVar);
                return this;
            }

            /* renamed from: a */
            public final C12366a m16606a(String str) {
                if (this.f47275b) {
                    m16324c();
                    this.f47275b = false;
                }
                C12365a.m16611a((C12365a) this.f47274a, str);
                return this;
            }
        }

        static {
            C12365a c12365a = new C12365a();
            zzilc = c12365a;
            dnh.m16339a(C12365a.class, c12365a);
        }

        private C12365a() {
        }

        /* renamed from: a */
        public static C12366a m16615a() {
            return zzilc.m16335i();
        }

        /* renamed from: a */
        static /* synthetic */ void m16613a(C12365a c12365a, dii diiVar) {
            c12365a.zzikx = diiVar.zzv();
        }

        /* renamed from: a */
        static /* synthetic */ void m16612a(C12365a c12365a, djb djbVar) {
            c12365a.zzikm = djbVar.zzv();
        }

        /* renamed from: a */
        static /* synthetic */ void m16611a(C12365a c12365a, String str) {
            str.getClass();
            c12365a.zzijv = str;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (dir.f47095a[i - 1]) {
                case 1:
                    return new C12365a();
                case 2:
                    return new C12366a(null);
                case 3:
                    return m16341a(zzilc, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzijv", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzilc;
                case 5:
                    dpc<C12365a> dpcVar = zzek;
                    dpc<C12365a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12365a.class) {
                            try {
                                dpc<C12365a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzilc);
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

    /* renamed from: com.google.android.gms.internal.ads.dis$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$b.class */
    public static final class C12367b extends dnh.C12383b<dis, C12367b> implements dov {
        private C12367b() {
            super(dis.zzilb);
        }

        /* synthetic */ C12367b(dir dirVar) {
            this();
        }

        /* renamed from: a */
        public final C12367b m16605a(int i) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dis) this.f47274a).zzikt = i;
            return this;
        }

        /* renamed from: a */
        public final C12367b m16604a(C12365a c12365a) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dis.m16617a((dis) this.f47274a, c12365a);
            return this;
        }
    }

    static {
        dis disVar = new dis();
        zzilb = disVar;
        dnh.m16339a(dis.class, disVar);
    }

    private dis() {
    }

    /* renamed from: a */
    public static C12367b m16619a() {
        return zzilb.m16335i();
    }

    /* renamed from: a */
    static /* synthetic */ void m16617a(dis disVar, C12365a c12365a) {
        c12365a.getClass();
        dnr<C12365a> dnrVar = disVar.zzila;
        if (!dnrVar.mo16298a()) {
            disVar.zzila = dnh.m16342a(dnrVar);
        }
        disVar.zzila.add(c12365a);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dir.f47095a[i - 1]) {
            case 1:
                return new dis();
            case 2:
                return new C12367b(null);
            case 3:
                return m16341a(zzilb, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zzila", C12365a.class});
            case 4:
                return zzilb;
            case 5:
                dpc<dis> dpcVar = zzek;
                dpc<dis> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dis.class) {
                        try {
                            dpc<dis> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzilb);
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
