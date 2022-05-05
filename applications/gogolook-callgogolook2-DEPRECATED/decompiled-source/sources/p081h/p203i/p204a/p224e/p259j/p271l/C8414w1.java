package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.w1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1.class */
public final class C8414w1 extends AbstractC8228l9<C8414w1, C8416b> implements AbstractC8430wa {
    public static final C8414w1 zzaxp;
    public static volatile AbstractC8129gb<C8414w1> zzh;
    public int zzaxj;
    public int zzaxk;
    public int zzaxl;
    public int zzaxm;
    public boolean zzaxn;
    public float zzaxo;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.w1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1$a.class */
    public enum EnumC8415a implements AbstractC8286o9 {
        UNKNOWN_CLASSIFICATIONS(0),
        NO_CLASSIFICATIONS(1),
        ALL_CLASSIFICATIONS(2);
        

        /* renamed from: a */
        public final int f19368a;

        static {
            new C8348s4();
        }

        EnumC8415a(int i) {
            this.f19368a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18111b() {
            return C8329r4.f19271a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19368a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8415a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19368a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.w1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1$b.class */
    public static final class C8416b extends AbstractC8228l9.C8230b<C8414w1, C8416b> implements AbstractC8430wa {
        public C8416b() {
            super(C8414w1.zzaxp);
        }

        public /* synthetic */ C8416b(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.w1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1$c.class */
    public enum EnumC8417c implements AbstractC8286o9 {
        UNKNOWN_CONTOURS(0),
        NO_CONTOURS(1),
        ALL_CONTOURS(2);
        

        /* renamed from: a */
        public final int f19373a;

        static {
            new C8366t4();
        }

        EnumC8417c(int i) {
            this.f19373a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18110b() {
            return C8384u4.f19329a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19373a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8417c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19373a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.w1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1$d.class */
    public enum EnumC8418d implements AbstractC8286o9 {
        UNKNOWN_LANDMARKS(0),
        NO_LANDMARKS(1),
        ALL_LANDMARKS(2);
        

        /* renamed from: a */
        public final int f19378a;

        static {
            new C8424w4();
        }

        EnumC8418d(int i) {
            this.f19378a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18109b() {
            return C8402v4.f19345a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19378a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8418d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19378a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.w1$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/w1$e.class */
    public enum EnumC8419e implements AbstractC8286o9 {
        UNKNOWN_PERFORMANCE(0),
        FAST(1),
        ACCURATE(2);
        

        /* renamed from: a */
        public final int f19383a;

        static {
            new C8443x4();
        }

        EnumC8419e(int i) {
            this.f19383a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18108b() {
            return C8461y4.f19441a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19383a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8419e.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19383a + " name=" + name() + '>';
        }
    }

    static {
        C8414w1 w1Var = new C8414w1();
        zzaxp = w1Var;
        AbstractC8228l9.m18357a(C8414w1.class, w1Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8414w1();
            case 2:
                return new C8416b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaxp, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဌ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzj", "zzaxj", EnumC8418d.m18109b(), "zzaxk", EnumC8415a.m18111b(), "zzaxl", EnumC8419e.m18108b(), "zzaxm", EnumC8417c.m18110b(), "zzaxn", "zzaxo"});
            case 4:
                return zzaxp;
            case 5:
                AbstractC8129gb<C8414w1> gbVar = zzh;
                AbstractC8129gb<C8414w1> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8414w1.class) {
                        try {
                            AbstractC8129gb<C8414w1> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaxp);
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
