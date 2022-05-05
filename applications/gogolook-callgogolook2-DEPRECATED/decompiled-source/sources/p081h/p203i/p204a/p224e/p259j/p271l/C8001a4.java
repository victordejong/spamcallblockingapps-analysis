package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.a4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a4.class */
public final class C8001a4 extends AbstractC8228l9<C8001a4, C8005b> implements AbstractC8430wa {
    public static final C8001a4 zzaqs;
    public static volatile AbstractC8129gb<C8001a4> zzh;
    public C8114g2 zzaod;
    public AbstractC8409v9<C8002a> zzaoh = AbstractC8228l9.m18351j();
    public AbstractC8409v9<C8002a> zzaoi = AbstractC8228l9.m18351j();
    public C8470z1 zzaps;
    public long zzapt;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.a4$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a4$a.class */
    public static final class C8002a extends AbstractC8228l9<C8002a, C8004b> implements AbstractC8430wa {
        public static final C8002a zzaqv;
        public static volatile AbstractC8129gb<C8002a> zzh;
        public int zzaqt;
        public AbstractC8353s9 zzaqu = AbstractC8228l9.m18352i();
        public int zzj;

        /* renamed from: h.i.a.e.j.l.a4$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a4$a$a.class */
        public enum EnumC8003a implements AbstractC8286o9 {
            UNKNOWN_DATA_TYPE(0),
            TYPE_FLOAT32(1),
            TYPE_INT32(2),
            TYPE_BYTE(3),
            TYPE_LONG(4);
            

            /* renamed from: a */
            public final int f18735a;

            static {
                new C8182j4();
            }

            EnumC8003a(int i) {
                this.f18735a = i;
            }

            /* renamed from: b */
            public static AbstractC8319q9 m18692b() {
                return C8163i4.f18914a;
            }

            @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
            /* renamed from: a */
            public final int mo17910a() {
                return this.f18735a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + EnumC8003a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18735a + " name=" + name() + '>';
            }
        }

        /* renamed from: h.i.a.e.j.l.a4$a$b */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a4$a$b.class */
        public static final class C8004b extends AbstractC8228l9.C8230b<C8002a, C8004b> implements AbstractC8430wa {
            public C8004b() {
                super(C8002a.zzaqv);
            }

            public /* synthetic */ C8004b(C8045c4 c4Var) {
                this();
            }
        }

        static {
            C8002a aVar = new C8002a();
            zzaqv = aVar;
            AbstractC8228l9.m18357a(C8002a.class, aVar);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
        /* renamed from: a */
        public final Object mo17912a(int i, Object obj, Object obj2) {
            switch (C8045c4.f18776a[i - 1]) {
                case 1:
                    return new C8002a();
                case 2:
                    return new C8004b(null);
                case 3:
                    return AbstractC8228l9.m18360a(zzaqv, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzj", "zzaqt", EnumC8003a.m18692b(), "zzaqu"});
                case 4:
                    return zzaqv;
                case 5:
                    AbstractC8129gb<C8002a> gbVar = zzh;
                    AbstractC8129gb<C8002a> gbVar2 = gbVar;
                    if (gbVar == null) {
                        synchronized (C8002a.class) {
                            try {
                                AbstractC8129gb<C8002a> gbVar3 = zzh;
                                gbVar2 = gbVar3;
                                if (gbVar3 == null) {
                                    gbVar2 = new AbstractC8228l9.C8229a<>(zzaqv);
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

    /* renamed from: h.i.a.e.j.l.a4$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a4$b.class */
    public static final class C8005b extends AbstractC8228l9.C8230b<C8001a4, C8005b> implements AbstractC8430wa {
        public C8005b() {
            super(C8001a4.zzaqs);
        }

        public /* synthetic */ C8005b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8001a4 a4Var = new C8001a4();
        zzaqs = a4Var;
        AbstractC8228l9.m18357a(C8001a4.class, a4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8001a4();
            case 2:
                return new C8005b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaqs, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001ဉ��\u0002ဉ\u0001\u0003\u001b\u0004\u001b\u0005ဃ\u0002", new Object[]{"zzj", "zzaps", "zzaod", "zzaoh", C8002a.class, "zzaoi", C8002a.class, "zzapt"});
            case 4:
                return zzaqs;
            case 5:
                AbstractC8129gb<C8001a4> gbVar = zzh;
                AbstractC8129gb<C8001a4> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8001a4.class) {
                        try {
                            AbstractC8129gb<C8001a4> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaqs);
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
