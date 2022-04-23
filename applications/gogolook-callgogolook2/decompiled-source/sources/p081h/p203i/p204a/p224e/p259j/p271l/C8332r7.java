package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.r7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r7.class */
public final class C8332r7 extends AbstractC8228l9<C8332r7, C8334b> implements AbstractC8430wa {
    public static final C8332r7 zzbzj;
    public static volatile AbstractC8129gb<C8332r7> zzh;
    public float zzaxo;
    public int zzbzf;
    public int zzbzg;
    public boolean zzbzh;
    public boolean zzbzi;
    public int zzj;
    public int zzpl;

    /* renamed from: h.i.a.e.j.l.r7$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r7$a.class */
    public enum EnumC8333a implements AbstractC8286o9 {
        CLASSIFICATION_UNKNOWN(0),
        CLASSIFICATION_NONE(1),
        CLASSIFICATION_ALL(2);
        

        /* renamed from: a */
        public final int f19277a;

        static {
            new C8387u7();
        }

        EnumC8333a(int i) {
            this.f19277a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18188b() {
            return C8369t7.f19297a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19277a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8333a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19277a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.r7$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r7$b.class */
    public static final class C8334b extends AbstractC8228l9.C8230b<C8332r7, C8334b> implements AbstractC8430wa {
        public C8334b() {
            super(C8332r7.zzbzj);
        }

        public /* synthetic */ C8334b(C8300p7 p7Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.r7$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r7$c.class */
    public enum EnumC8335c implements AbstractC8286o9 {
        LANDMARK_UNKNOWN(0),
        LANDMARK_NONE(1),
        LANDMARK_ALL(2),
        LANDMARK_CONTOUR(3);
        

        /* renamed from: a */
        public final int f19283a;

        static {
            new C8407v7();
        }

        EnumC8335c(int i) {
            this.f19283a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18187b() {
            return C8427w7.f19385a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19283a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8335c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19283a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.r7$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/r7$d.class */
    public enum EnumC8336d implements AbstractC8286o9 {
        MODE_UNKNOWN(0),
        MODE_ACCURATE(1),
        MODE_FAST(2),
        MODE_SELFIE(3);
        

        /* renamed from: a */
        public final int f19289a;

        static {
            new C8464y7();
        }

        EnumC8336d(int i) {
            this.f19289a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18186b() {
            return C8446x7.f19423a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19289a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8336d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19289a + " name=" + name() + '>';
        }
    }

    static {
        C8332r7 r7Var = new C8332r7();
        zzbzj = r7Var;
        AbstractC8228l9.m18357a(C8332r7.class, r7Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8300p7.f19249a[i - 1]) {
            case 1:
                return new C8332r7();
            case 2:
                return new C8334b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzj", "zzpl", EnumC8336d.m18186b(), "zzbzf", EnumC8335c.m18187b(), "zzbzg", EnumC8333a.m18188b(), "zzbzh", "zzbzi", "zzaxo"});
            case 4:
                return zzbzj;
            case 5:
                AbstractC8129gb<C8332r7> gbVar = zzh;
                AbstractC8129gb<C8332r7> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8332r7.class) {
                        try {
                            AbstractC8129gb<C8332r7> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbzj);
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
