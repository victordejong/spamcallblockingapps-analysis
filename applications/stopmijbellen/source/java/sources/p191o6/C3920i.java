package p191o6;

import com.google.protobuf.AbstractC1888i;
import java.util.Objects;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.i */
/* loaded from: classes-dex2jar.jar:o6/i.class */
public final class C3920i extends AbstractC1888i<C3920i, C3922b> implements AbstractC3923j {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    private static final C3920i DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    private static volatile AbstractC4921s<C3920i> PARSER;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    private C3897c applicationInfo_;
    private int bitField0_;
    private C3909g gaugeMetric_;
    private C3912h networkRequestMetric_;
    private C3929m traceMetric_;
    private C3934n transportInfo_;

    /* renamed from: o6.i$b */
    /* loaded from: classes-dex2jar.jar:o6/i$b.class */
    public static final class C3922b extends AbstractC1888i.AbstractC1889a<C3920i, C3922b> implements AbstractC3923j {
        public C3922b() {
            super(C3920i.DEFAULT_INSTANCE);
        }

        public C3922b(C3921a c3921a) {
            super(C3920i.DEFAULT_INSTANCE);
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: a */
        public boolean mo1635a() {
            return ((C3920i) this.f7078b).mo1635a();
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: e */
        public C3909g mo1634e() {
            return ((C3920i) this.f7078b).mo1634e();
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: g */
        public boolean mo1633g() {
            return ((C3920i) this.f7078b).mo1633g();
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: h */
        public C3929m mo1632h() {
            return ((C3920i) this.f7078b).mo1632h();
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: j */
        public boolean mo1631j() {
            return ((C3920i) this.f7078b).mo1631j();
        }

        @Override // p191o6.AbstractC3923j
        /* renamed from: k */
        public C3912h mo1630k() {
            return ((C3920i) this.f7078b).mo1630k();
        }
    }

    static {
        C3920i c3920i = new C3920i();
        DEFAULT_INSTANCE = c3920i;
        AbstractC1888i.m4285x(C3920i.class, c3920i);
    }

    /* renamed from: A */
    public static void m1643A(C3920i c3920i, C3909g c3909g) {
        Objects.requireNonNull(c3920i);
        Objects.requireNonNull(c3909g);
        c3920i.gaugeMetric_ = c3909g;
        c3920i.bitField0_ |= 8;
    }

    /* renamed from: B */
    public static void m1642B(C3920i c3920i, C3929m c3929m) {
        Objects.requireNonNull(c3920i);
        Objects.requireNonNull(c3929m);
        c3920i.traceMetric_ = c3929m;
        c3920i.bitField0_ |= 2;
    }

    /* renamed from: C */
    public static void m1641C(C3920i c3920i, C3912h c3912h) {
        Objects.requireNonNull(c3920i);
        Objects.requireNonNull(c3912h);
        c3920i.networkRequestMetric_ = c3912h;
        c3920i.bitField0_ |= 4;
    }

    /* renamed from: F */
    public static C3922b m1638F() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1636z(C3920i c3920i, C3897c c3897c) {
        Objects.requireNonNull(c3920i);
        c3920i.applicationInfo_ = c3897c;
        c3920i.bitField0_ |= 1;
    }

    /* renamed from: D */
    public C3897c m1640D() {
        C3897c c3897c = this.applicationInfo_;
        C3897c c3897c2 = c3897c;
        if (c3897c == null) {
            c3897c2 = C3897c.m1711F();
        }
        return c3897c2;
    }

    /* renamed from: E */
    public boolean m1639E() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: a */
    public boolean mo1635a() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: e */
    public C3909g mo1634e() {
        C3909g c3909g = this.gaugeMetric_;
        C3909g c3909g2 = c3909g;
        if (c3909g == null) {
            c3909g2 = C3909g.m1685F();
        }
        return c3909g2;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: g */
    public boolean mo1633g() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: h */
    public C3929m mo1632h() {
        C3929m c3929m = this.traceMetric_;
        C3929m c3929m2 = c3929m;
        if (c3929m == null) {
            c3929m2 = C3929m.m1610L();
        }
        return c3929m2;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: j */
    public boolean mo1631j() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // p191o6.AbstractC3923j
    /* renamed from: k */
    public C3912h mo1630k() {
        C3912h c3912h = this.networkRequestMetric_;
        C3912h c3912h2 = c3912h;
        if (c3912h == null) {
            c3912h2 = C3912h.m1665N();
        }
        return c3912h2;
    }

    @Override // com.google.protobuf.AbstractC1888i
    /* renamed from: r */
    public final Object mo1597r(AbstractC1888i.EnumC1893e enumC1893e, Object obj, Object obj2) {
        switch (enumC1893e.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case 3:
                return new C3920i();
            case 4:
                return new C3922b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3920i> abstractC4921s = PARSER;
                AbstractC4921s<C3920i> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3920i.class) {
                        try {
                            AbstractC4921s<C3920i> abstractC4921s3 = PARSER;
                            abstractC4921s2 = abstractC4921s3;
                            if (abstractC4921s3 == null) {
                                abstractC4921s2 = new AbstractC1888i.C1890b<>(DEFAULT_INSTANCE);
                                PARSER = abstractC4921s2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return abstractC4921s2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
