package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.v3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v3.class */
public final class C8400v3 extends AbstractC8228l9<C8400v3, C8401a> implements AbstractC8430wa {
    public static final C8400v3 zzaqn;
    public static volatile AbstractC8129gb<C8400v3> zzh;
    public C8454y1 zzaoc;
    public C8470z1 zzaps;
    public C8294p3 zzaqa;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.v3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v3$a.class */
    public static final class C8401a extends AbstractC8228l9.C8230b<C8400v3, C8401a> implements AbstractC8430wa {
        public C8401a() {
            super(C8400v3.zzaqn);
        }

        public /* synthetic */ C8401a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8400v3 v3Var = new C8400v3();
        zzaqn = v3Var;
        AbstractC8228l9.m18357a(C8400v3.class, v3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8400v3();
            case 2:
                return new C8401a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaqn, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzj", "zzaps", "zzaqa", "zzaoc"});
            case 4:
                return zzaqn;
            case 5:
                AbstractC8129gb<C8400v3> gbVar = zzh;
                AbstractC8129gb<C8400v3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8400v3.class) {
                        try {
                            AbstractC8129gb<C8400v3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaqn);
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
