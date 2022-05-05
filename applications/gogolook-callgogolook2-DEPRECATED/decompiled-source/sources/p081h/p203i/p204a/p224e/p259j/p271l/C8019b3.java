package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.b3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b3.class */
public final class C8019b3 extends AbstractC8228l9<C8019b3, C8020a> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8021b> zzbjt = new C8143h6();
    public static final AbstractC8371t9<Integer, EnumC8021b> zzbjv = new C8124g6();
    public static final AbstractC8371t9<Integer, EnumC8021b> zzbjx = new C8165i6();
    public static final C8019b3 zzbjz;
    public static volatile AbstractC8129gb<C8019b3> zzh;
    public long zzbas;
    public AbstractC8353s9 zzbjs = AbstractC8228l9.m18352i();
    public AbstractC8353s9 zzbju = AbstractC8228l9.m18352i();
    public AbstractC8353s9 zzbjw = AbstractC8228l9.m18352i();
    public int zzbjy;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.b3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b3$a.class */
    public static final class C8020a extends AbstractC8228l9.C8230b<C8019b3, C8020a> implements AbstractC8430wa {
        public C8020a() {
            super(C8019b3.zzbjz);
        }

        public /* synthetic */ C8020a(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.b3$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b3$b.class */
    public enum EnumC8021b implements AbstractC8286o9 {
        UNKNOWN_ERROR(0),
        NO_CONNECTION(1),
        RPC_ERROR(2),
        RPC_RETURNED_INVALID_RESULT(3),
        RPC_RETURNED_MALFORMED_RESULT(4),
        RPC_EXPONENTIAL_BACKOFF_FAILED(5),
        DIRECTORY_CREATION_FAILED(10),
        FILE_WRITE_FAILED_DISK_FULL(11),
        FILE_WRITE_FAILED(12),
        FILE_READ_FAILED(13),
        FILE_READ_RETURNED_INVALID_DATA(14),
        FILE_READ_RETURNED_MALFORMED_DATA(15);
        

        /* renamed from: a */
        public final int f18755a;

        static {
            new C8184j6();
        }

        EnumC8021b(int i) {
            this.f18755a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18679b() {
            return C8207k6.f19014a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18755a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8021b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18755a + " name=" + name() + '>';
        }
    }

    static {
        C8019b3 b3Var = new C8019b3();
        zzbjz = b3Var;
        AbstractC8228l9.m18357a(C8019b3.class, b3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8019b3();
            case 2:
                return new C8020a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbjz, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0003��\u0001ဃ��\u0002\u001e\u0003\u001e\u0004\u001e\u0005င\u0001", new Object[]{"zzj", "zzbas", "zzbjs", EnumC8021b.m18679b(), "zzbju", EnumC8021b.m18679b(), "zzbjw", EnumC8021b.m18679b(), "zzbjy"});
            case 4:
                return zzbjz;
            case 5:
                AbstractC8129gb<C8019b3> gbVar = zzh;
                AbstractC8129gb<C8019b3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8019b3.class) {
                        try {
                            AbstractC8129gb<C8019b3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbjz);
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
