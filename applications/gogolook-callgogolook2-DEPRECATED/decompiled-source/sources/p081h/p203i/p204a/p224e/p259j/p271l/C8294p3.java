package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.p3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p3.class */
public final class C8294p3 extends AbstractC8228l9<C8294p3, C8295a> implements AbstractC8430wa {
    public static final C8294p3 zzaqd;
    public static volatile AbstractC8129gb<C8294p3> zzh;
    public int zzaqc;
    public int zzey;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.p3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p3$a.class */
    public static final class C8295a extends AbstractC8228l9.C8230b<C8294p3, C8295a> implements AbstractC8430wa {
        public C8295a() {
            super(C8294p3.zzaqd);
        }

        public /* synthetic */ C8295a(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.p3$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p3$b.class */
    public enum EnumC8296b implements AbstractC8286o9 {
        UNKNOWN_MODEL_TYPE(0),
        STABLE_MODEL(1),
        LATEST_MODEL(2);
        

        /* renamed from: a */
        public final int f19121a;

        static {
            new C8122g4();
        }

        EnumC8296b(int i) {
            this.f19121a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18218b() {
            return C8141h4.f18869a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19121a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8296b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19121a + " name=" + name() + '>';
        }
    }

    static {
        C8294p3 p3Var = new C8294p3();
        zzaqd = p3Var;
        AbstractC8228l9.m18357a(C8294p3.class, p3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8294p3();
            case 2:
                return new C8295a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaqd, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဌ\u0001", new Object[]{"zzj", "zzey", "zzaqc", EnumC8296b.m18218b()});
            case 4:
                return zzaqd;
            case 5:
                AbstractC8129gb<C8294p3> gbVar = zzh;
                AbstractC8129gb<C8294p3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8294p3.class) {
                        try {
                            AbstractC8129gb<C8294p3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaqd);
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
