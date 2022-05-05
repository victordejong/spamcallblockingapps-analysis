package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l0.class */
public final class C8214l0 extends AbstractC8228l9.AbstractC8231c<C8214l0, C8217b> implements AbstractC8430wa {
    public static final C8214l0 zzdck;
    public static volatile AbstractC8129gb<C8214l0> zzh;
    public byte zzco = (byte) 2;
    public AbstractC8409v9<C8215a> zzdcj = AbstractC8228l9.m18351j();

    /* renamed from: h.i.a.e.j.l.l0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l0$a.class */
    public static final class C8215a extends AbstractC8228l9<C8215a, C8216a> implements AbstractC8430wa {
        public static final C8215a zzdcn;
        public static volatile AbstractC8129gb<C8215a> zzh;
        public int zzaoa;
        public int zzdcl;
        public AbstractC8409v9<C8195k0> zzdcm = AbstractC8228l9.m18351j();
        public int zzj;

        /* renamed from: h.i.a.e.j.l.l0$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l0$a$a.class */
        public static final class C8216a extends AbstractC8228l9.C8230b<C8215a, C8216a> implements AbstractC8430wa {
            public C8216a() {
                super(C8215a.zzdcn);
            }

            public /* synthetic */ C8216a(C8238m0 m0Var) {
                this();
            }
        }

        static {
            C8215a aVar = new C8215a();
            zzdcn = aVar;
            AbstractC8228l9.m18357a(C8215a.class, aVar);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
        /* renamed from: a */
        public final Object mo17912a(int i, Object obj, Object obj2) {
            switch (C8238m0.f19083a[i - 1]) {
                case 1:
                    return new C8215a();
                case 2:
                    return new C8216a(null);
                case 3:
                    return AbstractC8228l9.m18360a(zzdcn, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001င��\u0002င\u0001\u0003\u001b", new Object[]{"zzj", "zzdcl", "zzaoa", "zzdcm", C8195k0.class});
                case 4:
                    return zzdcn;
                case 5:
                    AbstractC8129gb<C8215a> gbVar = zzh;
                    AbstractC8129gb<C8215a> gbVar2 = gbVar;
                    if (gbVar == null) {
                        synchronized (C8215a.class) {
                            try {
                                AbstractC8129gb<C8215a> gbVar3 = zzh;
                                gbVar2 = gbVar3;
                                if (gbVar3 == null) {
                                    gbVar2 = new AbstractC8228l9.C8229a<>(zzdcn);
                                    zzh = gbVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return gbVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* renamed from: h.i.a.e.j.l.l0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l0$b.class */
    public static final class C8217b extends AbstractC8228l9.C8232d<C8214l0, C8217b> implements AbstractC8430wa {
        public C8217b() {
            super(C8214l0.zzdck);
        }

        public /* synthetic */ C8217b(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8214l0 l0Var = new C8214l0();
        zzdck = l0Var;
        AbstractC8228l9.m18357a(C8214l0.class, l0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        int i2 = C8238m0.f19083a[i - 1];
        int i3 = 0;
        switch (i2) {
            case 1:
                return new C8214l0();
            case 2:
                return new C8217b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdck, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzdcj", C8215a.class});
            case 4:
                return zzdck;
            case 5:
                AbstractC8129gb<C8214l0> gbVar = zzh;
                AbstractC8129gb<C8214l0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8214l0.class) {
                        try {
                            AbstractC8129gb<C8214l0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdck);
                                zzh = gbVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return gbVar2;
            case 6:
                return Byte.valueOf(this.zzco);
            case 7:
                if (obj != null) {
                    i3 = 1;
                }
                this.zzco = (byte) i3;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
