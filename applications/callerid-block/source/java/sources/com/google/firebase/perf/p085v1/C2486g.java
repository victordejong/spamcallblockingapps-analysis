package com.google.firebase.perf.p085v1;

import com.google.firebase.perf.p085v1.C2473c;
import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/g.class */
public final class C2486g extends GeneratedMessageLite<C2486g, C2488b> implements AbstractC2489h {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    private static final C2486g DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    private static volatile AbstractC2660u0<C2486g> PARSER;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    private C2473c applicationInfo_;
    private int bitField0_;
    private C2483f gaugeMetric_;
    private NetworkRequestMetric networkRequestMetric_;
    private C2494j traceMetric_;
    private TransportInfo transportInfo_;

    /* renamed from: com.google.firebase.perf.v1.g$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/g$a.class */
    static /* synthetic */ class C2487a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10756a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10756a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10756a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.g$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/g$b.class */
    public static final class C2488b extends GeneratedMessageLite.AbstractC2550a<C2486g, C2488b> implements AbstractC2489h {
        private C2488b() {
            super(C2486g.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2488b(C2487a c2487a) {
            this();
        }

        /* renamed from: I */
        public C2488b m3383I(C2473c.C2475b c2475b) {
            m3017z();
            ((C2486g) this.f10960c).m3387Z(c2475b.mo2420a());
            return this;
        }

        /* renamed from: J */
        public C2488b m3382J(C2483f c2483f) {
            m3017z();
            ((C2486g) this.f10960c).m3386a0(c2483f);
            return this;
        }

        /* renamed from: L */
        public C2488b m3381L(NetworkRequestMetric networkRequestMetric) {
            m3017z();
            ((C2486g) this.f10960c).m3385b0(networkRequestMetric);
            return this;
        }

        /* renamed from: M */
        public C2488b m3380M(C2494j c2494j) {
            m3017z();
            ((C2486g) this.f10960c).m3384c0(c2494j);
            return this;
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: b */
        public boolean mo3379b() {
            return ((C2486g) this.f10960c).mo3379b();
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: f */
        public C2483f mo3378f() {
            return ((C2486g) this.f10960c).mo3378f();
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: h */
        public boolean mo3377h() {
            return ((C2486g) this.f10960c).mo3377h();
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: j */
        public C2494j mo3376j() {
            return ((C2486g) this.f10960c).mo3376j();
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: m */
        public boolean mo3375m() {
            return ((C2486g) this.f10960c).mo3375m();
        }

        @Override // com.google.firebase.perf.p085v1.AbstractC2489h
        /* renamed from: n */
        public NetworkRequestMetric mo3374n() {
            return ((C2486g) this.f10960c).mo3374n();
        }
    }

    static {
        C2486g c2486g = new C2486g();
        DEFAULT_INSTANCE = c2486g;
        GeneratedMessageLite.m3029P(C2486g.class, c2486g);
    }

    private C2486g() {
    }

    /* renamed from: Y */
    public static C2488b m3388Y() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* renamed from: Z */
    public void m3387Z(C2473c c2473c) {
        c2473c.getClass();
        this.applicationInfo_ = c2473c;
        this.bitField0_ |= 1;
    }

    /* renamed from: a0 */
    public void m3386a0(C2483f c2483f) {
        c2483f.getClass();
        this.gaugeMetric_ = c2483f;
        this.bitField0_ |= 8;
    }

    /* renamed from: b0 */
    public void m3385b0(NetworkRequestMetric networkRequestMetric) {
        networkRequestMetric.getClass();
        this.networkRequestMetric_ = networkRequestMetric;
        this.bitField0_ |= 4;
    }

    /* renamed from: c0 */
    public void m3384c0(C2494j c2494j) {
        c2494j.getClass();
        this.traceMetric_ = c2494j;
        this.bitField0_ |= 2;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2487a.f10756a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2486g();
            case 2:
                return new C2488b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0005??????\u0001\u0001\u0005\u0005??????????????????\u0001?????????\u0002???\u0001\u0003???\u0002\u0004???\u0003\u0005???\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2486g> abstractC2660u0 = PARSER;
                AbstractC2660u0<C2486g> abstractC2660u02 = abstractC2660u0;
                if (abstractC2660u0 == null) {
                    synchronized (C2486g.class) {
                        try {
                            AbstractC2660u0<C2486g> abstractC2660u03 = PARSER;
                            abstractC2660u02 = abstractC2660u03;
                            if (abstractC2660u03 == null) {
                                abstractC2660u02 = new GeneratedMessageLite.C2551b<>(DEFAULT_INSTANCE);
                                PARSER = abstractC2660u02;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return abstractC2660u02;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: W */
    public C2473c m3390W() {
        C2473c c2473c = this.applicationInfo_;
        C2473c c2473c2 = c2473c;
        if (c2473c == null) {
            c2473c2 = C2473c.m3462Y();
        }
        return c2473c2;
    }

    /* renamed from: X */
    public boolean m3389X() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: b */
    public boolean mo3379b() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: f */
    public C2483f mo3378f() {
        C2483f c2483f = this.gaugeMetric_;
        C2483f c2483f2 = c2483f;
        if (c2483f == null) {
            c2483f2 = C2483f.m3406c0();
        }
        return c2483f2;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: h */
    public boolean mo3377h() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: j */
    public C2494j mo3376j() {
        C2494j c2494j = this.traceMetric_;
        C2494j c2494j2 = c2494j;
        if (c2494j == null) {
            c2494j2 = C2494j.m3342k0();
        }
        return c2494j2;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: m */
    public boolean mo3375m() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // com.google.firebase.perf.p085v1.AbstractC2489h
    /* renamed from: n */
    public NetworkRequestMetric mo3374n() {
        NetworkRequestMetric networkRequestMetric = this.networkRequestMetric_;
        NetworkRequestMetric networkRequestMetric2 = networkRequestMetric;
        if (networkRequestMetric == null) {
            networkRequestMetric2 = NetworkRequestMetric.m3530j0();
        }
        return networkRequestMetric2;
    }
}
