package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a0.class */
public final class C7991a0 extends AbstractC8228l9<C7991a0, C7993b> implements AbstractC8430wa {
    public static final C7991a0 zzcza;
    public static volatile AbstractC8129gb<C7991a0> zzh;
    public int zzcyy;
    public C8172j0 zzcyz;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.a0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a0$a.class */
    public enum EnumC7992a implements AbstractC8286o9 {
        UNKNOWN_ENGINE(0),
        TFLITE(1);
        

        /* renamed from: a */
        public final int f18714a;

        static {
            new C8268o0();
        }

        EnumC7992a(int i) {
            this.f18714a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18699b() {
            return C8253n0.f19091a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18714a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC7992a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18714a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.a0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a0$b.class */
    public static final class C7993b extends AbstractC8228l9.C8230b<C7991a0, C7993b> implements AbstractC8430wa {
        public C7993b() {
            super(C7991a0.zzcza);
        }

        public /* synthetic */ C7993b(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C7991a0 a0Var = new C7991a0();
        zzcza = a0Var;
        AbstractC8228l9.m18357a(C7991a0.class, a0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C7991a0();
            case 2:
                return new C7993b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzcza, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzj", "zzcyy", EnumC7992a.m18699b(), "zzcyz"});
            case 4:
                return zzcza;
            case 5:
                AbstractC8129gb<C7991a0> gbVar = zzh;
                AbstractC8129gb<C7991a0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C7991a0.class) {
                        try {
                            AbstractC8129gb<C7991a0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzcza);
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
