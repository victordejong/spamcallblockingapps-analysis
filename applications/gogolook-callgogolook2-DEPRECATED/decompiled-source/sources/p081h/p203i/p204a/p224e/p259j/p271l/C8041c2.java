package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/c2.class */
public final class C8041c2 extends AbstractC8228l9<C8041c2, C8042a> implements AbstractC8430wa {
    public static final C8041c2 zzbbp;
    public static volatile AbstractC8129gb<C8041c2> zzh;
    public float zzat;
    public float zzbbn;
    public float zzbbo;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.c2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/c2$a.class */
    public static final class C8042a extends AbstractC8228l9.C8230b<C8041c2, C8042a> implements AbstractC8430wa {
        public C8042a() {
            super(C8041c2.zzbbp);
        }

        public /* synthetic */ C8042a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8041c2 c2Var = new C8041c2();
        zzbbp = c2Var;
        AbstractC8228l9.m18357a(C8041c2.class, c2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8041c2();
            case 2:
                return new C8042a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbbp, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ခ��\u0002ခ\u0001\u0003ခ\u0002", new Object[]{"zzj", "zzbbn", "zzbbo", "zzat"});
            case 4:
                return zzbbp;
            case 5:
                AbstractC8129gb<C8041c2> gbVar = zzh;
                AbstractC8129gb<C8041c2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8041c2.class) {
                        try {
                            AbstractC8129gb<C8041c2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbbp);
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
