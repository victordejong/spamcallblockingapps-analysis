package p191o6;

import com.google.protobuf.AbstractC1859a;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1895k;
import com.google.protobuf.C1911q;
import com.google.protobuf.C1913r;
import com.google.protobuf.C1922z;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
import p287x6.EnumC4898c0;
/* renamed from: o6.m */
/* loaded from: classes-dex2jar.jar:o6/m.class */
public final class C3929m extends AbstractC1888i<C3929m, C3931b> implements AbstractC4918p {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final C3929m DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile AbstractC4921s<C3929m> PARSER;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private C1913r<String, Long> counters_;
    private C1913r<String, String> customAttributes_;
    private long durationUs_;
    private boolean isAuto_;
    private String name_ = "";
    private C1895k.AbstractC1899d<C3924k> perfSessions_;
    private C1895k.AbstractC1899d<C3929m> subtraces_;

    /* renamed from: o6.m$b */
    /* loaded from: classes-dex2jar.jar:o6/m$b.class */
    public static final class C3931b extends AbstractC1888i.AbstractC1889a<C3929m, C3931b> implements AbstractC4918p {
        public C3931b() {
            super(C3929m.DEFAULT_INSTANCE);
        }

        public C3931b(C3930a c3930a) {
            super(C3929m.DEFAULT_INSTANCE);
        }

        /* renamed from: q */
        public C3931b m1601q(String str, long j) {
            Objects.requireNonNull(str);
            m4282n();
            ((C1913r) C3929m.m1621A((C3929m) this.f7078b)).put(str, Long.valueOf(j));
            return this;
        }

        /* renamed from: r */
        public C3931b m1600r(long j) {
            m4282n();
            C3929m.m1615G((C3929m) this.f7078b, j);
            return this;
        }

        /* renamed from: s */
        public C3931b m1599s(long j) {
            m4282n();
            C3929m.m1614H((C3929m) this.f7078b, j);
            return this;
        }

        /* renamed from: t */
        public C3931b m1598t(String str) {
            m4282n();
            C3929m.m1602z((C3929m) this.f7078b, str);
            return this;
        }
    }

    /* renamed from: o6.m$c */
    /* loaded from: classes-dex2jar.jar:o6/m$c.class */
    public static final class C3932c {

        /* renamed from: a */
        public static final C1911q<String, Long> f12417a = new C1911q<>(EnumC4898c0.STRING, "", EnumC4898c0.INT64, 0L);
    }

    /* renamed from: o6.m$d */
    /* loaded from: classes-dex2jar.jar:o6/m$d.class */
    public static final class C3933d {

        /* renamed from: a */
        public static final C1911q<String, String> f12418a;

        static {
            EnumC4898c0 enumC4898c0 = EnumC4898c0.STRING;
            f12418a = new C1911q<>(enumC4898c0, "", enumC4898c0, "");
        }
    }

    static {
        C3929m c3929m = new C3929m();
        DEFAULT_INSTANCE = c3929m;
        AbstractC1888i.m4285x(C3929m.class, c3929m);
    }

    public C3929m() {
        C1913r c1913r = C1913r.f7111b;
        this.counters_ = c1913r;
        this.customAttributes_ = c1913r;
        C1922z<Object> c1922z = C1922z.f7136d;
        this.subtraces_ = c1922z;
        this.perfSessions_ = c1922z;
    }

    /* renamed from: A */
    public static Map m1621A(C3929m c3929m) {
        C1913r<String, Long> c1913r = c3929m.counters_;
        if (!c1913r.f7112a) {
            c3929m.counters_ = c1913r.m4247c();
        }
        return c3929m.counters_;
    }

    /* renamed from: B */
    public static void m1620B(C3929m c3929m, C3929m c3929m2) {
        Objects.requireNonNull(c3929m);
        Objects.requireNonNull(c3929m2);
        C1895k.AbstractC1899d<C3929m> abstractC1899d = c3929m.subtraces_;
        if (!abstractC1899d.mo4265W()) {
            c3929m.subtraces_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        c3929m.subtraces_.add(c3929m2);
    }

    /* renamed from: C */
    public static void m1619C(C3929m c3929m, Iterable iterable) {
        C1895k.AbstractC1899d<C3929m> abstractC1899d = c3929m.subtraces_;
        if (!abstractC1899d.mo4265W()) {
            c3929m.subtraces_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        AbstractC1859a.m4395l(iterable, c3929m.subtraces_);
    }

    /* renamed from: D */
    public static Map m1618D(C3929m c3929m) {
        C1913r<String, String> c1913r = c3929m.customAttributes_;
        if (!c1913r.f7112a) {
            c3929m.customAttributes_ = c1913r.m4247c();
        }
        return c3929m.customAttributes_;
    }

    /* renamed from: E */
    public static void m1617E(C3929m c3929m, C3924k c3924k) {
        Objects.requireNonNull(c3929m);
        Objects.requireNonNull(c3924k);
        C1895k.AbstractC1899d<C3924k> abstractC1899d = c3929m.perfSessions_;
        if (!abstractC1899d.mo4265W()) {
            c3929m.perfSessions_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        c3929m.perfSessions_.add(c3924k);
    }

    /* renamed from: F */
    public static void m1616F(C3929m c3929m, Iterable iterable) {
        C1895k.AbstractC1899d<C3924k> abstractC1899d = c3929m.perfSessions_;
        if (!abstractC1899d.mo4265W()) {
            c3929m.perfSessions_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        AbstractC1859a.m4395l(iterable, c3929m.perfSessions_);
    }

    /* renamed from: G */
    public static void m1615G(C3929m c3929m, long j) {
        c3929m.bitField0_ |= 4;
        c3929m.clientStartTimeUs_ = j;
    }

    /* renamed from: H */
    public static void m1614H(C3929m c3929m, long j) {
        c3929m.bitField0_ |= 8;
        c3929m.durationUs_ = j;
    }

    /* renamed from: L */
    public static C3929m m1610L() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: R */
    public static C3931b m1604R() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1602z(C3929m c3929m, String str) {
        Objects.requireNonNull(c3929m);
        Objects.requireNonNull(str);
        c3929m.bitField0_ |= 1;
        c3929m.name_ = str;
    }

    /* renamed from: I */
    public int m1613I() {
        return this.counters_.size();
    }

    /* renamed from: J */
    public Map<String, Long> m1612J() {
        return Collections.unmodifiableMap(this.counters_);
    }

    /* renamed from: K */
    public Map<String, String> m1611K() {
        return Collections.unmodifiableMap(this.customAttributes_);
    }

    /* renamed from: M */
    public long m1609M() {
        return this.durationUs_;
    }

    /* renamed from: N */
    public String m1608N() {
        return this.name_;
    }

    /* renamed from: O */
    public List<C3924k> m1607O() {
        return this.perfSessions_;
    }

    /* renamed from: P */
    public List<C3929m> m1606P() {
        return this.subtraces_;
    }

    /* renamed from: Q */
    public boolean m1605Q() {
        return (this.bitField0_ & 4) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Finally extract failed */
    @Override // com.google.protobuf.AbstractC1888i
    /* renamed from: r */
    public final Object mo1597r(AbstractC1888i.EnumC1893e enumC1893e, Object obj, Object obj2) {
        int ordinal = enumC1893e.ordinal();
        C4924v c4924v = null;
        switch (ordinal) {
            case 0:
                return (byte) 1;
            case 1:
                break;
            case 2:
                c4924v = new C4924v(DEFAULT_INSTANCE, "\u0001\b��\u0001\u0001\t\b\u0002\u0002��\u0001ဈ��\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", C3932c.f12417a, "subtraces_", C3929m.class, "customAttributes_", C3933d.f12418a, "perfSessions_", C3924k.class});
                break;
            case 3:
                return new C3929m();
            case 4:
                return new C3931b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3929m> abstractC4921s = PARSER;
                AbstractC4921s<C3929m> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3929m.class) {
                        try {
                            AbstractC4921s<C3929m> abstractC4921s3 = PARSER;
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
        return c4924v;
    }
}
