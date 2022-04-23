package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis.class */
public final class dis extends dnh<dis, b> implements dov {
    private static volatile dpc<dis> zzek;
    private static final dis zzilb;
    private int zzikt;
    private dnr<a> zzila = dph.d();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$a.class */
    public static final class a extends dnh<a, C0465a> implements dov {
        private static volatile dpc<a> zzek;
        private static final a zzilc;
        private String zzijv = "";
        private int zzikm;
        private int zzikx;
        private int zziky;

        /* renamed from: com.google.android.gms.internal.ads.dis$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$a$a.class */
        public static final class C0465a extends dnh.b<a, C0465a> implements dov {
            private C0465a() {
                super(a.zzilc);
            }

            /* synthetic */ C0465a(dir dirVar) {
                this();
            }

            public final C0465a a(int i) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                ((a) this.f26993a).zziky = i;
                return this;
            }

            public final C0465a a(dii diiVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, diiVar);
                return this;
            }

            public final C0465a a(djb djbVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, djbVar);
                return this;
            }

            public final C0465a a(String str) {
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
            zzilc = aVar;
            dnh.a(a.class, aVar);
        }

        private a() {
        }

        public static C0465a a() {
            return zzilc.i();
        }

        static /* synthetic */ void a(a aVar, dii diiVar) {
            aVar.zzikx = diiVar.zzv();
        }

        static /* synthetic */ void a(a aVar, djb djbVar) {
            aVar.zzikm = djbVar.zzv();
        }

        static /* synthetic */ void a(a aVar, String str) {
            str.getClass();
            aVar.zzijv = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (dir.f26852a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0465a(null);
                case 3:
                    return a(zzilc, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzijv", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzilc;
                case 5:
                    dpc<a> dpcVar = zzek;
                    dpc<a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (a.class) {
                            try {
                                dpc<a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzilc);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dis$b.class */
    public static final class b extends dnh.b<dis, b> implements dov {
        private b() {
            super(dis.zzilb);
        }

        /* synthetic */ b(dir dirVar) {
            this();
        }

        public final b a(int i) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dis) this.f26993a).zzikt = i;
            return this;
        }

        public final b a(a aVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dis.a((dis) this.f26993a, aVar);
            return this;
        }
    }

    static {
        dis disVar = new dis();
        zzilb = disVar;
        dnh.a(dis.class, disVar);
    }

    private dis() {
    }

    public static b a() {
        return zzilb.i();
    }

    static /* synthetic */ void a(dis disVar, a aVar) {
        aVar.getClass();
        dnr<a> dnrVar = disVar.zzila;
        if (!dnrVar.a()) {
            disVar.zzila = dnh.a(dnrVar);
        }
        disVar.zzila.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dir.f26852a[i - 1]) {
            case 1:
                return new dis();
            case 2:
                return new b(null);
            case 3:
                return a(zzilb, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zzila", a.class});
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
                                dpcVar2 = new dnh.a<>(zzilb);
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
