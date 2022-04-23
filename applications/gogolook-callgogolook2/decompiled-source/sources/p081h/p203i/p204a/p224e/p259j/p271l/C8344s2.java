package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.s2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/s2.class */
public final class C8344s2 extends AbstractC8228l9<C8344s2, C8345a> implements AbstractC8430wa {
    public static final C8344s2 zzbgt;
    public static volatile AbstractC8129gb<C8344s2> zzh;
    public int zzaoa;
    public C8308q2 zzapf;
    public AbstractC8409v9<C7998a3> zzbaw = AbstractC8228l9.m18351j();
    public long zzbfq;
    public long zzbfr;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.s2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/s2$a.class */
    public static final class C8345a extends AbstractC8228l9.C8230b<C8344s2, C8345a> implements AbstractC8430wa {
        public C8345a() {
            super(C8344s2.zzbgt);
        }

        public /* synthetic */ C8345a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8344s2 s2Var = new C8344s2();
        zzbgt = s2Var;
        AbstractC8228l9.m18357a(C8344s2.class, s2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8344s2();
            case 2:
                return new C8345a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbgt, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဉ��\u0002ဌ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005\u001b", new Object[]{"zzj", "zzapf", "zzaoa", EnumC8223l4.m18364b(), "zzbfq", "zzbfr", "zzbaw", C7998a3.class});
            case 4:
                return zzbgt;
            case 5:
                AbstractC8129gb<C8344s2> gbVar = zzh;
                AbstractC8129gb<C8344s2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8344s2.class) {
                        try {
                            AbstractC8129gb<C8344s2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbgt);
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
