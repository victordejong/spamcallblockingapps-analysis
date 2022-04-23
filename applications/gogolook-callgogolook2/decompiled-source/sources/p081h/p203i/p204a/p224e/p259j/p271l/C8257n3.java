package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.n3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n3.class */
public final class C8257n3 extends AbstractC8228l9<C8257n3, C8258a> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8223l4> zzapy = new C8102f4();
    public static final C8257n3 zzapz;
    public static volatile AbstractC8129gb<C8257n3> zzh;
    public long zzapt;
    public C8114g2 zzapv;
    public C8114g2 zzapw;
    public AbstractC8353s9 zzapx = AbstractC8228l9.m18352i();
    public int zzj;

    /* renamed from: h.i.a.e.j.l.n3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/n3$a.class */
    public static final class C8258a extends AbstractC8228l9.C8230b<C8257n3, C8258a> implements AbstractC8430wa {
        public C8258a() {
            super(C8257n3.zzapz);
        }

        public /* synthetic */ C8258a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8257n3 n3Var = new C8257n3();
        zzapz = n3Var;
        AbstractC8228l9.m18357a(C8257n3.class, n3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8257n3();
            case 2:
                return new C8258a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzapz, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002", new Object[]{"zzj", "zzapv", "zzapw", "zzapx", EnumC8223l4.m18364b(), "zzapt"});
            case 4:
                return zzapz;
            case 5:
                AbstractC8129gb<C8257n3> gbVar = zzh;
                AbstractC8129gb<C8257n3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8257n3.class) {
                        try {
                            AbstractC8129gb<C8257n3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzapz);
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
