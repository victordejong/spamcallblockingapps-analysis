package p191o6;

import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1895k;
import com.google.protobuf.C1922z;
import java.util.Objects;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.g */
/* loaded from: classes-dex2jar.jar:o6/g.class */
public final class C3909g extends AbstractC1888i<C3909g, C3911b> implements AbstractC4918p {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final C3909g DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile AbstractC4921s<C3909g> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private C1895k.AbstractC1899d<C3894b> androidMemoryReadings_;
    private int bitField0_;
    private C1895k.AbstractC1899d<C3903e> cpuMetricReadings_;
    private C3906f gaugeMetadata_;
    private String sessionId_ = "";

    /* renamed from: o6.g$b */
    /* loaded from: classes-dex2jar.jar:o6/g$b.class */
    public static final class C3911b extends AbstractC1888i.AbstractC1889a<C3909g, C3911b> implements AbstractC4918p {
        public C3911b() {
            super(C3909g.DEFAULT_INSTANCE);
        }

        public C3911b(C3910a c3910a) {
            super(C3909g.DEFAULT_INSTANCE);
        }
    }

    static {
        C3909g c3909g = new C3909g();
        DEFAULT_INSTANCE = c3909g;
        AbstractC1888i.m4285x(C3909g.class, c3909g);
    }

    public C3909g() {
        C1922z<Object> c1922z = C1922z.f7136d;
        this.cpuMetricReadings_ = c1922z;
        this.androidMemoryReadings_ = c1922z;
    }

    /* renamed from: A */
    public static void m1690A(C3909g c3909g, C3894b c3894b) {
        Objects.requireNonNull(c3909g);
        Objects.requireNonNull(c3894b);
        C1895k.AbstractC1899d<C3894b> abstractC1899d = c3909g.androidMemoryReadings_;
        if (!abstractC1899d.mo4265W()) {
            c3909g.androidMemoryReadings_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        c3909g.androidMemoryReadings_.add(c3894b);
    }

    /* renamed from: B */
    public static void m1689B(C3909g c3909g, C3906f c3906f) {
        Objects.requireNonNull(c3909g);
        Objects.requireNonNull(c3906f);
        c3909g.gaugeMetadata_ = c3906f;
        c3909g.bitField0_ |= 2;
    }

    /* renamed from: C */
    public static void m1688C(C3909g c3909g, C3903e c3903e) {
        Objects.requireNonNull(c3909g);
        Objects.requireNonNull(c3903e);
        C1895k.AbstractC1899d<C3903e> abstractC1899d = c3909g.cpuMetricReadings_;
        if (!abstractC1899d.mo4265W()) {
            c3909g.cpuMetricReadings_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        c3909g.cpuMetricReadings_.add(c3903e);
    }

    /* renamed from: F */
    public static C3909g m1685F() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: J */
    public static C3911b m1681J() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1679z(C3909g c3909g, String str) {
        Objects.requireNonNull(c3909g);
        Objects.requireNonNull(str);
        c3909g.bitField0_ |= 1;
        c3909g.sessionId_ = str;
    }

    /* renamed from: D */
    public int m1687D() {
        return this.androidMemoryReadings_.size();
    }

    /* renamed from: E */
    public int m1686E() {
        return this.cpuMetricReadings_.size();
    }

    /* renamed from: G */
    public C3906f m1684G() {
        C3906f c3906f = this.gaugeMetadata_;
        C3906f c3906f2 = c3906f;
        if (c3906f == null) {
            c3906f2 = C3906f.m1695D();
        }
        return c3906f2;
    }

    /* renamed from: H */
    public boolean m1683H() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: I */
    public boolean m1682I() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0002��\u0001ဈ��\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", C3903e.class, "gaugeMetadata_", "androidMemoryReadings_", C3894b.class});
            case 3:
                return new C3909g();
            case 4:
                return new C3911b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3909g> abstractC4921s = PARSER;
                AbstractC4921s<C3909g> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3909g.class) {
                        try {
                            AbstractC4921s<C3909g> abstractC4921s3 = PARSER;
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
