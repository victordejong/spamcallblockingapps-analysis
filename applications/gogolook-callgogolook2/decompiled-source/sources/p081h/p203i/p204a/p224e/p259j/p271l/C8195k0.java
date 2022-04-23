package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.k0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k0.class */
public final class C8195k0 extends AbstractC8228l9<C8195k0, C8196a> implements AbstractC8430wa {
    public static final C8195k0 zzdcd;
    public static volatile AbstractC8129gb<C8195k0> zzh;
    public int zzdcb;
    public float zzdcc;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.k0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k0$a.class */
    public static final class C8196a extends AbstractC8228l9.C8230b<C8195k0, C8196a> implements AbstractC8430wa {
        public C8196a() {
            super(C8195k0.zzdcd);
        }

        public /* synthetic */ C8196a(C8238m0 m0Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.k0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k0$b.class */
    public enum EnumC8197b implements AbstractC8286o9 {
        UNKNOWN_METRIC(0),
        MEAN_ABSOLUTE_ERROR(1),
        MEAN_SQUARED_ERROR(2),
        ROOT_MEAN_SQUARED_ERROR(3);
        

        /* renamed from: a */
        public final int f19012a;

        static {
            new C8453y0();
        }

        EnumC8197b(int i) {
            this.f19012a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18388b() {
            return C8469z0.f19462a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19012a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8197b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19012a + " name=" + name() + '>';
        }
    }

    static {
        C8195k0 k0Var = new C8195k0();
        zzdcd = k0Var;
        AbstractC8228l9.m18357a(C8195k0.class, k0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8195k0();
            case 2:
                return new C8196a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdcd, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ခ\u0001", new Object[]{"zzj", "zzdcb", EnumC8197b.m18388b(), "zzdcc"});
            case 4:
                return zzdcd;
            case 5:
                AbstractC8129gb<C8195k0> gbVar = zzh;
                AbstractC8129gb<C8195k0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8195k0.class) {
                        try {
                            AbstractC8129gb<C8195k0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdcd);
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
