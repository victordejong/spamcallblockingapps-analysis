package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.m2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m2.class */
public final class C8240m2 extends AbstractC8228l9<C8240m2, C8241a> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8223l4> zzapy = new C8367t5();
    public static final C8240m2 zzbfs;
    public static volatile AbstractC8129gb<C8240m2> zzh;
    public C8255n2 zzapb;
    public AbstractC8353s9 zzapx = AbstractC8228l9.m18352i();
    public AbstractC8409v9<C7998a3> zzbaw = AbstractC8228l9.m18351j();
    public long zzbfq;
    public long zzbfr;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.m2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m2$a.class */
    public static final class C8241a extends AbstractC8228l9.C8230b<C8240m2, C8241a> implements AbstractC8430wa {
        public C8241a() {
            super(C8240m2.zzbfs);
        }

        public /* synthetic */ C8241a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8240m2 m2Var = new C8240m2();
        zzbfs = m2Var;
        AbstractC8228l9.m18357a(C8240m2.class, m2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8240m2();
            case 2:
                return new C8241a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbfs, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001ဉ��\u0002\u001e\u0003ဃ\u0001\u0004ဃ\u0002\u0005\u001b", new Object[]{"zzj", "zzapb", "zzapx", EnumC8223l4.m18364b(), "zzbfq", "zzbfr", "zzbaw", C7998a3.class});
            case 4:
                return zzbfs;
            case 5:
                AbstractC8129gb<C8240m2> gbVar = zzh;
                AbstractC8129gb<C8240m2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8240m2.class) {
                        try {
                            AbstractC8129gb<C8240m2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbfs);
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
