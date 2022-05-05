package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h0.class */
public final class C8617h0 extends AbstractC8568c4<C8617h0, C8618a> implements AbstractC8666l5 {
    public static final C8617h0 zzauq = new C8617h0();
    public static volatile AbstractC8739t5<C8617h0> zznw;
    public String zzauo = "";
    public long zzaup;
    public int zznr;

    /* renamed from: h.i.a.e.j.q.h0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h0$a.class */
    public static final class C8618a extends AbstractC8568c4.C8569a<C8617h0, C8618a> implements AbstractC8666l5 {
        public C8618a() {
            super(C8617h0.zzauq);
        }

        public /* synthetic */ C8618a(C8643j0 j0Var) {
            this();
        }
    }

    static {
        AbstractC8568c4.m17760a(C8617h0.class, zzauq);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4
    /* renamed from: a */
    public final Object mo17556a(int i, Object obj, Object obj2) {
        switch (C8643j0.f19781a[i - 1]) {
            case 1:
                return new C8617h0();
            case 2:
                return new C8618a(null);
            case 3:
                return AbstractC8568c4.m17762a(zzauq, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\u0002\u0001", new Object[]{"zznr", "zzauo", "zzaup"});
            case 4:
                return zzauq;
            case 5:
                AbstractC8739t5<C8617h0> t5Var = zznw;
                AbstractC8739t5<C8617h0> t5Var2 = t5Var;
                if (t5Var == null) {
                    synchronized (C8617h0.class) {
                        try {
                            AbstractC8739t5<C8617h0> t5Var3 = zznw;
                            t5Var2 = t5Var3;
                            if (t5Var3 == null) {
                                t5Var2 = new AbstractC8568c4.C8570b<>(zzauq);
                                zznw = t5Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return t5Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
