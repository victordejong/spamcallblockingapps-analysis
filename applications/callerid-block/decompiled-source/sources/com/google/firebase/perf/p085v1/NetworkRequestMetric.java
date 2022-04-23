package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2569a;
import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.C2607g0;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.List;
/* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric.class */
public final class NetworkRequestMetric extends GeneratedMessageLite<NetworkRequestMetric, C2459b> implements Object {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final NetworkRequestMetric DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile AbstractC2660u0<NetworkRequestMetric> PARSER;
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
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String url_ = "";
    private String responseContentType_ = "";
    private C2665x.AbstractC2674i<C2490i> perfSessions_ = GeneratedMessageLite.m3040E();

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod.class */
    public enum HttpMethod implements C2665x.AbstractC2668c {
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
        

        /* renamed from: l */
        private static final C2665x.AbstractC2669d<HttpMethod> f10728l = new C2454a();
        private final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$a.class */
        class C2454a implements C2665x.AbstractC2669d<HttpMethod> {
            C2454a() {
            }

            /* renamed from: b */
            public HttpMethod mo2241a(int i) {
                return HttpMethod.forNumber(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$b.class */
        public static final class C2455b implements C2665x.AbstractC2670e {

            /* renamed from: a */
            static final C2665x.AbstractC2670e f10730a = new C2455b();

            private C2455b() {
            }

            @Override // com.google.protobuf.C2665x.AbstractC2670e
            /* renamed from: a */
            public boolean mo2240a(int i) {
                return HttpMethod.forNumber(i) != null;
            }
        }

        HttpMethod(int i) {
            this.value = i;
        }

        public static HttpMethod forNumber(int i) {
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

        public static C2665x.AbstractC2669d<HttpMethod> internalGetValueMap() {
            return f10728l;
        }

        public static C2665x.AbstractC2670e internalGetVerifier() {
            return C2455b.f10730a;
        }

        @Deprecated
        public static HttpMethod valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.C2665x.AbstractC2668c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason.class */
    public enum NetworkClientErrorReason implements C2665x.AbstractC2668c {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);
        

        /* renamed from: d */
        private static final C2665x.AbstractC2669d<NetworkClientErrorReason> f10733d = new C2456a();
        private final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$a.class */
        class C2456a implements C2665x.AbstractC2669d<NetworkClientErrorReason> {
            C2456a() {
            }

            /* renamed from: b */
            public NetworkClientErrorReason mo2241a(int i) {
                return NetworkClientErrorReason.forNumber(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$b.class */
        public static final class C2457b implements C2665x.AbstractC2670e {

            /* renamed from: a */
            static final C2665x.AbstractC2670e f10735a = new C2457b();

            private C2457b() {
            }

            @Override // com.google.protobuf.C2665x.AbstractC2670e
            /* renamed from: a */
            public boolean mo2240a(int i) {
                return NetworkClientErrorReason.forNumber(i) != null;
            }
        }

        NetworkClientErrorReason(int i) {
            this.value = i;
        }

        public static NetworkClientErrorReason forNumber(int i) {
            if (i == 0) {
                return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return GENERIC_CLIENT_ERROR;
        }

        public static C2665x.AbstractC2669d<NetworkClientErrorReason> internalGetValueMap() {
            return f10733d;
        }

        public static C2665x.AbstractC2670e internalGetVerifier() {
            return C2457b.f10735a;
        }

        @Deprecated
        public static NetworkClientErrorReason valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.C2665x.AbstractC2668c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$a.class */
    static /* synthetic */ class C2458a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10736a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10736a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10736a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$b.class */
    public static final class C2459b extends GeneratedMessageLite.AbstractC2550a<NetworkRequestMetric, C2459b> implements Object {
        private C2459b() {
            super(NetworkRequestMetric.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2459b(C2458a aVar) {
            this();
        }

        /* renamed from: I */
        public C2459b m3511I(Iterable<? extends C2490i> iterable) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3534f0(iterable);
            return this;
        }

        /* renamed from: J */
        public C2459b m3510J() {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3533g0();
            return this;
        }

        /* renamed from: L */
        public long m3509L() {
            return ((NetworkRequestMetric) this.f10960c).m3521s0();
        }

        /* renamed from: M */
        public boolean m3508M() {
            return ((NetworkRequestMetric) this.f10960c).m3519u0();
        }

        /* renamed from: N */
        public boolean m3507N() {
            return ((NetworkRequestMetric) this.f10960c).m3517w0();
        }

        /* renamed from: P */
        public boolean m3506P() {
            return ((NetworkRequestMetric) this.f10960c).m3562A0();
        }

        /* renamed from: Q */
        public C2459b m3505Q(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3559D0(j);
            return this;
        }

        /* renamed from: R */
        public C2459b m3504R(HttpMethod httpMethod) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3558E0(httpMethod);
            return this;
        }

        /* renamed from: S */
        public C2459b m3503S(int i) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3557F0(i);
            return this;
        }

        /* renamed from: T */
        public C2459b m3502T(NetworkClientErrorReason networkClientErrorReason) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3556G0(networkClientErrorReason);
            return this;
        }

        /* renamed from: V */
        public C2459b m3501V(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3555H0(j);
            return this;
        }

        /* renamed from: W */
        public C2459b m3500W(String str) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3554I0(str);
            return this;
        }

        /* renamed from: X */
        public C2459b m3499X(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3553J0(j);
            return this;
        }

        /* renamed from: Y */
        public C2459b m3498Y(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3552K0(j);
            return this;
        }

        /* renamed from: Z */
        public C2459b m3497Z(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3551L0(j);
            return this;
        }

        /* renamed from: a0 */
        public C2459b m3496a0(long j) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3550M0(j);
            return this;
        }

        /* renamed from: b0 */
        public C2459b m3495b0(String str) {
            m3017z();
            ((NetworkRequestMetric) this.f10960c).m3549N0(str);
            return this;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$c.class */
    private static final class C2460c {

        /* renamed from: a */
        static final C2607g0<String, String> f10737a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f10737a = C2607g0.m2726d(fieldType, "", fieldType, "");
        }
    }

    static {
        NetworkRequestMetric networkRequestMetric = new NetworkRequestMetric();
        DEFAULT_INSTANCE = networkRequestMetric;
        GeneratedMessageLite.m3029P(NetworkRequestMetric.class, networkRequestMetric);
    }

    private NetworkRequestMetric() {
    }

    /* renamed from: C0 */
    public static C2459b m3560C0() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D0 */
    public void m3559D0(long j) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E0 */
    public void m3558E0(HttpMethod httpMethod) {
        this.httpMethod_ = httpMethod.getNumber();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F0 */
    public void m3557F0(int i) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G0 */
    public void m3556G0(NetworkClientErrorReason networkClientErrorReason) {
        this.networkClientErrorReason_ = networkClientErrorReason.getNumber();
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public void m3555H0(long j) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I0 */
    public void m3554I0(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public void m3553J0(long j) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public void m3552K0(long j) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public void m3551L0(long j) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M0 */
    public void m3550M0(long j) {
        this.bitField0_ |= 512;
        this.timeToResponseInitiatedUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public void m3549N0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public void m3534f0(Iterable<? extends C2490i> iterable) {
        m3532h0();
        AbstractC2569a.m2921q(iterable, this.perfSessions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public void m3533g0() {
        this.bitField0_ &= -65;
        this.responseContentType_ = m3530j0().m3525o0();
    }

    /* renamed from: h0 */
    private void m3532h0() {
        C2665x.AbstractC2674i<C2490i> iVar = this.perfSessions_;
        if (!iVar.mo2237D()) {
            this.perfSessions_ = GeneratedMessageLite.m3033L(iVar);
        }
    }

    /* renamed from: j0 */
    public static NetworkRequestMetric m3530j0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A0 */
    public boolean m3562A0() {
        return (this.bitField0_ & 1024) != 0;
    }

    /* renamed from: B0 */
    public boolean m3561B0() {
        return (this.bitField0_ & 512) != 0;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2458a.f10736a[methodToInvoke.ordinal()]) {
            case 1:
                return new NetworkRequestMetric();
            case 2:
                return new C2459b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\r��\u0001\u0001\r\r\u0001\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000bဌ\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", HttpMethod.internalGetVerifier(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", NetworkClientErrorReason.internalGetVerifier(), "customAttributes_", C2460c.f10737a, "perfSessions_", C2490i.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<NetworkRequestMetric> u0Var = PARSER;
                AbstractC2660u0<NetworkRequestMetric> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (NetworkRequestMetric.class) {
                        try {
                            AbstractC2660u0<NetworkRequestMetric> u0Var3 = PARSER;
                            u0Var2 = u0Var3;
                            if (u0Var3 == null) {
                                u0Var2 = new GeneratedMessageLite.C2551b<>(DEFAULT_INSTANCE);
                                PARSER = u0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return u0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: i0 */
    public long m3531i0() {
        return this.clientStartTimeUs_;
    }

    /* renamed from: k0 */
    public HttpMethod m3529k0() {
        HttpMethod forNumber = HttpMethod.forNumber(this.httpMethod_);
        HttpMethod httpMethod = forNumber;
        if (forNumber == null) {
            httpMethod = HttpMethod.HTTP_METHOD_UNKNOWN;
        }
        return httpMethod;
    }

    /* renamed from: l0 */
    public int m3528l0() {
        return this.httpResponseCode_;
    }

    /* renamed from: m0 */
    public List<C2490i> m3527m0() {
        return this.perfSessions_;
    }

    /* renamed from: n0 */
    public long m3526n0() {
        return this.requestPayloadBytes_;
    }

    /* renamed from: o0 */
    public String m3525o0() {
        return this.responseContentType_;
    }

    /* renamed from: p0 */
    public long m3524p0() {
        return this.responsePayloadBytes_;
    }

    /* renamed from: q0 */
    public long m3523q0() {
        return this.timeToRequestCompletedUs_;
    }

    /* renamed from: r0 */
    public long m3522r0() {
        return this.timeToResponseCompletedUs_;
    }

    /* renamed from: s0 */
    public long m3521s0() {
        return this.timeToResponseInitiatedUs_;
    }

    /* renamed from: t0 */
    public String m3520t0() {
        return this.url_;
    }

    /* renamed from: u0 */
    public boolean m3519u0() {
        return (this.bitField0_ & 128) != 0;
    }

    /* renamed from: v0 */
    public boolean m3518v0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: w0 */
    public boolean m3517w0() {
        return (this.bitField0_ & 32) != 0;
    }

    /* renamed from: x0 */
    public boolean m3516x0() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: y0 */
    public boolean m3515y0() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: z0 */
    public boolean m3514z0() {
        return (this.bitField0_ & 256) != 0;
    }
}
