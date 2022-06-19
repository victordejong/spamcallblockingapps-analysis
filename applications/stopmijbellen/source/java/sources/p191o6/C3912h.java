package p191o6;

import com.google.android.gms.ads.AdRequest;
import com.google.protobuf.AbstractC1859a;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1895k;
import com.google.protobuf.C1911q;
import com.google.protobuf.C1913r;
import com.google.protobuf.C1922z;
import java.util.List;
import java.util.Objects;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
import p287x6.EnumC4898c0;
/* renamed from: o6.h */
/* loaded from: classes-dex2jar.jar:o6/h.class */
public final class C3912h extends AbstractC1888i<C3912h, C3914b> implements AbstractC4918p {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final C3912h DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile AbstractC4921s<C3912h> PARSER;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private C1913r<String, String> customAttributes_ = C1913r.f7111b;
    private String url_ = "";
    private String responseContentType_ = "";
    private C1895k.AbstractC1899d<C3924k> perfSessions_ = C1922z.f7136d;

    /* renamed from: o6.h$b */
    /* loaded from: classes-dex2jar.jar:o6/h$b.class */
    public static final class C3914b extends AbstractC1888i.AbstractC1889a<C3912h, C3914b> implements AbstractC4918p {
        public C3914b() {
            super(C3912h.DEFAULT_INSTANCE);
        }

        public C3914b(C3913a c3913a) {
            super(C3912h.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: o6.h$c */
    /* loaded from: classes-dex2jar.jar:o6/h$c.class */
    public static final class C3915c {

        /* renamed from: a */
        public static final C1911q<String, String> f12393a;

        static {
            EnumC4898c0 enumC4898c0 = EnumC4898c0.STRING;
            f12393a = new C1911q<>(enumC4898c0, "", enumC4898c0, "");
        }
    }

    /* renamed from: o6.h$d */
    /* loaded from: classes-dex2jar.jar:o6/h$d.class */
    public enum EnumC3916d implements C1895k.AbstractC1896a {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);
        

        /* renamed from: a */
        public final int f12405a;

        /* renamed from: o6.h$d$a */
        /* loaded from: classes-dex2jar.jar:o6/h$d$a.class */
        public static final class C3917a implements C1895k.AbstractC1897b {

            /* renamed from: a */
            public static final C1895k.AbstractC1897b f12406a = new C3917a();
        }

        EnumC3916d(int i) {
            this.f12405a = i;
        }

        /* renamed from: a */
        public static EnumC3916d m1644a(int i) {
            switch (i) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.C1895k.AbstractC1896a
        /* renamed from: y */
        public final int mo1622y() {
            return this.f12405a;
        }
    }

    /* renamed from: o6.h$e */
    /* loaded from: classes-dex2jar.jar:o6/h$e.class */
    public enum EnumC3918e implements C1895k.AbstractC1896a {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);
        

        /* renamed from: a */
        public final int f12410a;

        /* renamed from: o6.h$e$a */
        /* loaded from: classes-dex2jar.jar:o6/h$e$a.class */
        public static final class C3919a implements C1895k.AbstractC1897b {

            /* renamed from: a */
            public static final C1895k.AbstractC1897b f12411a = new C3919a();
        }

        EnumC3918e(int i) {
            this.f12410a = i;
        }

        @Override // com.google.protobuf.C1895k.AbstractC1896a
        /* renamed from: y */
        public final int mo1622y() {
            return this.f12410a;
        }
    }

    static {
        C3912h c3912h = new C3912h();
        DEFAULT_INSTANCE = c3912h;
        AbstractC1888i.m4285x(C3912h.class, c3912h);
    }

    /* renamed from: A */
    public static void m1678A(C3912h c3912h, EnumC3918e enumC3918e) {
        Objects.requireNonNull(c3912h);
        c3912h.networkClientErrorReason_ = enumC3918e.f12410a;
        c3912h.bitField0_ |= 16;
    }

    /* renamed from: B */
    public static void m1677B(C3912h c3912h, int i) {
        c3912h.bitField0_ |= 32;
        c3912h.httpResponseCode_ = i;
    }

    /* renamed from: C */
    public static void m1676C(C3912h c3912h, String str) {
        Objects.requireNonNull(c3912h);
        Objects.requireNonNull(str);
        c3912h.bitField0_ |= 64;
        c3912h.responseContentType_ = str;
    }

    /* renamed from: D */
    public static void m1675D(C3912h c3912h) {
        c3912h.bitField0_ &= -65;
        c3912h.responseContentType_ = DEFAULT_INSTANCE.responseContentType_;
    }

    /* renamed from: E */
    public static void m1674E(C3912h c3912h, long j) {
        c3912h.bitField0_ |= 128;
        c3912h.clientStartTimeUs_ = j;
    }

    /* renamed from: F */
    public static void m1673F(C3912h c3912h, long j) {
        c3912h.bitField0_ |= 256;
        c3912h.timeToRequestCompletedUs_ = j;
    }

    /* renamed from: G */
    public static void m1672G(C3912h c3912h, long j) {
        c3912h.bitField0_ |= AdRequest.MAX_CONTENT_URL_LENGTH;
        c3912h.timeToResponseInitiatedUs_ = j;
    }

    /* renamed from: H */
    public static void m1671H(C3912h c3912h, long j) {
        c3912h.bitField0_ |= 1024;
        c3912h.timeToResponseCompletedUs_ = j;
    }

    /* renamed from: I */
    public static void m1670I(C3912h c3912h, Iterable iterable) {
        C1895k.AbstractC1899d<C3924k> abstractC1899d = c3912h.perfSessions_;
        if (!abstractC1899d.mo4265W()) {
            c3912h.perfSessions_ = AbstractC1888i.m4287v(abstractC1899d);
        }
        AbstractC1859a.m4395l(iterable, c3912h.perfSessions_);
    }

    /* renamed from: J */
    public static void m1669J(C3912h c3912h, EnumC3916d enumC3916d) {
        Objects.requireNonNull(c3912h);
        c3912h.httpMethod_ = enumC3916d.f12405a;
        c3912h.bitField0_ |= 2;
    }

    /* renamed from: K */
    public static void m1668K(C3912h c3912h, long j) {
        c3912h.bitField0_ |= 4;
        c3912h.requestPayloadBytes_ = j;
    }

    /* renamed from: L */
    public static void m1667L(C3912h c3912h, long j) {
        c3912h.bitField0_ |= 8;
        c3912h.responsePayloadBytes_ = j;
    }

    /* renamed from: N */
    public static C3912h m1665N() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: f0 */
    public static C3914b m1647f0() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1645z(C3912h c3912h, String str) {
        Objects.requireNonNull(c3912h);
        Objects.requireNonNull(str);
        c3912h.bitField0_ |= 1;
        c3912h.url_ = str;
    }

    /* renamed from: M */
    public long m1666M() {
        return this.clientStartTimeUs_;
    }

    /* renamed from: O */
    public EnumC3916d m1664O() {
        EnumC3916d m1644a = EnumC3916d.m1644a(this.httpMethod_);
        EnumC3916d enumC3916d = m1644a;
        if (m1644a == null) {
            enumC3916d = EnumC3916d.HTTP_METHOD_UNKNOWN;
        }
        return enumC3916d;
    }

    /* renamed from: P */
    public int m1663P() {
        return this.httpResponseCode_;
    }

    /* renamed from: Q */
    public List<C3924k> m1662Q() {
        return this.perfSessions_;
    }

    /* renamed from: R */
    public long m1661R() {
        return this.requestPayloadBytes_;
    }

    /* renamed from: S */
    public long m1660S() {
        return this.responsePayloadBytes_;
    }

    /* renamed from: T */
    public long m1659T() {
        return this.timeToRequestCompletedUs_;
    }

    /* renamed from: U */
    public long m1658U() {
        return this.timeToResponseCompletedUs_;
    }

    /* renamed from: V */
    public long m1657V() {
        return this.timeToResponseInitiatedUs_;
    }

    /* renamed from: W */
    public String m1656W() {
        return this.url_;
    }

    /* renamed from: X */
    public boolean m1655X() {
        return (this.bitField0_ & 128) != 0;
    }

    /* renamed from: Y */
    public boolean m1654Y() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: Z */
    public boolean m1653Z() {
        return (this.bitField0_ & 32) != 0;
    }

    /* renamed from: a0 */
    public boolean m1652a0() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: b0 */
    public boolean m1651b0() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: c0 */
    public boolean m1650c0() {
        return (this.bitField0_ & 256) != 0;
    }

    /* renamed from: d0 */
    public boolean m1649d0() {
        return (this.bitField0_ & 1024) != 0;
    }

    /* renamed from: e0 */
    public boolean m1648e0() {
        return (this.bitField0_ & AdRequest.MAX_CONTENT_URL_LENGTH) != 0;
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\r��\u0001\u0001\r\r\u0001\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000bဌ\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", EnumC3916d.C3917a.f12406a, "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", EnumC3918e.C3919a.f12411a, "customAttributes_", C3915c.f12393a, "perfSessions_", C3924k.class});
            case 3:
                return new C3912h();
            case 4:
                return new C3914b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3912h> abstractC4921s = PARSER;
                AbstractC4921s<C3912h> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3912h.class) {
                        try {
                            AbstractC4921s<C3912h> abstractC4921s3 = PARSER;
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
