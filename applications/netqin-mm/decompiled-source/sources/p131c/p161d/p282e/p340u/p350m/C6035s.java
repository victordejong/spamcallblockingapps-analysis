package p131c.p161d.p282e.p340u.p350m;

import com.google.firebase.perf.p494v1.NetworkRequestMetric;
import com.google.firebase.perf.p494v1.TransportInfo;
import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p340u.p350m.C6008e;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.u.m.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/s.class */
public final class C6035s extends GeneratedMessageLite<C6035s, C6037b> implements AbstractC6038t {
    public static final int APPLICATION_INFO_FIELD_NUMBER = 1;
    public static final C6035s DEFAULT_INSTANCE;
    public static final int GAUGE_METRIC_FIELD_NUMBER = 4;
    public static final int NETWORK_REQUEST_METRIC_FIELD_NUMBER = 3;
    public static volatile AbstractC6376v0<C6035s> PARSER;
    public static final int TRACE_METRIC_FIELD_NUMBER = 2;
    public static final int TRANSPORT_INFO_FIELD_NUMBER = 5;
    public C6008e applicationInfo_;
    public int bitField0_;
    public C6021k gaugeMetric_;
    public NetworkRequestMetric networkRequestMetric_;
    public C6044w traceMetric_;
    public TransportInfo transportInfo_;

    /* renamed from: c.d.e.u.m.s$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/s$a.class */
    public static /* synthetic */ class C6036a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19488a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19488a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19488a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.s$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/s$b.class */
    public static final class C6037b extends GeneratedMessageLite.AbstractC7946a<C6035s, C6037b> implements AbstractC6038t {
        public C6037b() {
            super(C6035s.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6037b(C6036a aVar) {
            this();
        }

        /* renamed from: a */
        public C6037b m22244a(C6008e.C6010b bVar) {
            m6930s();
            ((C6035s) this.f31129b).m22256a(bVar.mo6937a());
            return this;
        }

        /* renamed from: a */
        public C6037b m22243a(C6021k kVar) {
            m6930s();
            ((C6035s) this.f31129b).m22255a(kVar);
            return this;
        }

        /* renamed from: a */
        public C6037b m22242a(C6044w wVar) {
            m6930s();
            ((C6035s) this.f31129b).m22250a(wVar);
            return this;
        }

        /* renamed from: a */
        public C6037b m22241a(NetworkRequestMetric networkRequestMetric) {
            m6930s();
            ((C6035s) this.f31129b).m22249a(networkRequestMetric);
            return this;
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: e */
        public boolean mo22240e() {
            return ((C6035s) this.f31129b).mo22240e();
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: j */
        public boolean mo22239j() {
            return ((C6035s) this.f31129b).mo22239j();
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: k */
        public C6044w mo22238k() {
            return ((C6035s) this.f31129b).mo22238k();
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: m */
        public boolean mo22237m() {
            return ((C6035s) this.f31129b).mo22237m();
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: n */
        public NetworkRequestMetric mo22236n() {
            return ((C6035s) this.f31129b).mo22236n();
        }

        @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
        /* renamed from: p */
        public C6021k mo22235p() {
            return ((C6035s) this.f31129b).mo22235p();
        }
    }

    static {
        C6035s sVar = new C6035s();
        DEFAULT_INSTANCE = sVar;
        GeneratedMessageLite.m6949a(C6035s.class, sVar);
    }

    /* renamed from: y */
    public static C6037b m22245y() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6036a.f19488a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6035s();
            case 2:
                return new C6037b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\t��\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\t\u0004", new Object[]{"bitField0_", "applicationInfo_", "traceMetric_", "networkRequestMetric_", "gaugeMetric_", "transportInfo_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6035s> v0Var = PARSER;
                AbstractC6376v0<C6035s> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6035s.class) {
                        try {
                            AbstractC6376v0<C6035s> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public final void m22256a(C6008e eVar) {
        eVar.getClass();
        this.applicationInfo_ = eVar;
        this.bitField0_ |= 1;
    }

    /* renamed from: a */
    public final void m22255a(C6021k kVar) {
        kVar.getClass();
        this.gaugeMetric_ = kVar;
        this.bitField0_ |= 8;
    }

    /* renamed from: a */
    public final void m22250a(C6044w wVar) {
        wVar.getClass();
        this.traceMetric_ = wVar;
        this.bitField0_ |= 2;
    }

    /* renamed from: a */
    public final void m22249a(NetworkRequestMetric networkRequestMetric) {
        networkRequestMetric.getClass();
        this.networkRequestMetric_ = networkRequestMetric;
        this.bitField0_ |= 4;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: e */
    public boolean mo22240e() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: j */
    public boolean mo22239j() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: k */
    public C6044w mo22238k() {
        C6044w wVar = this.traceMetric_;
        C6044w wVar2 = wVar;
        if (wVar == null) {
            wVar2 = C6044w.m22210N();
        }
        return wVar2;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: m */
    public boolean mo22237m() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: n */
    public NetworkRequestMetric mo22236n() {
        NetworkRequestMetric networkRequestMetric = this.networkRequestMetric_;
        NetworkRequestMetric networkRequestMetric2 = networkRequestMetric;
        if (networkRequestMetric == null) {
            networkRequestMetric2 = NetworkRequestMetric.m7196S();
        }
        return networkRequestMetric2;
    }

    @Override // p131c.p161d.p282e.p340u.p350m.AbstractC6038t
    /* renamed from: p */
    public C6021k mo22235p() {
        C6021k kVar = this.gaugeMetric_;
        C6021k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = C6021k.m22277E();
        }
        return kVar2;
    }

    /* renamed from: v */
    public C6008e m22248v() {
        C6008e eVar = this.applicationInfo_;
        C6008e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = C6008e.m22329F();
        }
        return eVar2;
    }

    /* renamed from: w */
    public boolean m22247w() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }
}
