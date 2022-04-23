package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.z1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z1.class */
public final class C8470z1 extends AbstractC8228l9<C8470z1, C8471a> implements AbstractC8430wa {
    public static final C8470z1 zzbax;
    public static volatile AbstractC8129gb<C8470z1> zzh;
    public int zzaoa;
    public boolean zzaob;
    public boolean zzarc;
    public long zzbas;
    public boolean zzbat;
    public boolean zzbau;
    public int zzbav;
    public AbstractC8409v9<C7998a3> zzbaw = AbstractC8228l9.m18351j();
    public int zzj;

    /* renamed from: h.i.a.e.j.l.z1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/z1$a.class */
    public static final class C8471a extends AbstractC8228l9.C8230b<C8470z1, C8471a> implements AbstractC8430wa {
        public C8471a() {
            super(C8470z1.zzbax);
        }

        public /* synthetic */ C8471a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8470z1 z1Var = new C8470z1();
        zzbax = z1Var;
        AbstractC8228l9.m18357a(C8470z1.class, z1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8470z1();
            case 2:
                return new C8471a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbax, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001ဃ��\u0002ဌ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဋ\u0006\b\u001b", new Object[]{"zzj", "zzbas", "zzaoa", EnumC8223l4.m18364b(), "zzaob", "zzbat", "zzbau", "zzarc", "zzbav", "zzbaw", C7998a3.class});
            case 4:
                return zzbax;
            case 5:
                AbstractC8129gb<C8470z1> gbVar = zzh;
                AbstractC8129gb<C8470z1> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8470z1.class) {
                        try {
                            AbstractC8129gb<C8470z1> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbax);
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
