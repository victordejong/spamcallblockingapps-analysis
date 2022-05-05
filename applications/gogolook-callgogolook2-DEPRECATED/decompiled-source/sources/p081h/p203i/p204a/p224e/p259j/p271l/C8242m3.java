package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.m3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m3.class */
public final class C8242m3 extends AbstractC8228l9<C8242m3, C8243a> implements AbstractC8430wa {
    public static final C8242m3 zzapu;
    public static volatile AbstractC8129gb<C8242m3> zzh;
    public C8454y1 zzaoc;
    public C8114g2 zzaod;
    public C8470z1 zzaps;
    public long zzapt;
    public float zzat;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.m3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m3$a.class */
    public static final class C8243a extends AbstractC8228l9.C8230b<C8242m3, C8243a> implements AbstractC8430wa {
        public C8243a() {
            super(C8242m3.zzapu);
        }

        public /* synthetic */ C8243a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8242m3 m3Var = new C8242m3();
        zzapu = m3Var;
        AbstractC8228l9.m18357a(C8242m3.class, m3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8242m3();
            case 2:
                return new C8243a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzapu, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဉ��\u0002ဉ\u0001\u0003ဃ\u0002\u0004ခ\u0003\u0005ဉ\u0004", new Object[]{"zzj", "zzaps", "zzaod", "zzapt", "zzat", "zzaoc"});
            case 4:
                return zzapu;
            case 5:
                AbstractC8129gb<C8242m3> gbVar = zzh;
                AbstractC8129gb<C8242m3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8242m3.class) {
                        try {
                            AbstractC8129gb<C8242m3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzapu);
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
