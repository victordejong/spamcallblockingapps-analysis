package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/f.class */
public final class C2483f extends GeneratedMessageLite<C2483f, C2485b> implements Object {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final C2483f DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile AbstractC2660u0<C2483f> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private C2480e gaugeMetadata_;
    private String sessionId_ = "";
    private C2665x.AbstractC2674i<C2477d> cpuMetricReadings_ = GeneratedMessageLite.m3040E();
    private C2665x.AbstractC2674i<C2470b> androidMemoryReadings_ = GeneratedMessageLite.m3040E();

    /* renamed from: com.google.firebase.perf.v1.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/f$a.class */
    static /* synthetic */ class C2484a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10755a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10755a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10755a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/f$b.class */
    public static final class C2485b extends GeneratedMessageLite.AbstractC2550a<C2483f, C2485b> implements Object {
        private C2485b() {
            super(C2483f.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2485b(C2484a c2484a) {
            this();
        }

        /* renamed from: I */
        public C2485b m3399I(C2470b c2470b) {
            m3017z();
            ((C2483f) this.f10960c).m3412W(c2470b);
            return this;
        }

        /* renamed from: J */
        public C2485b m3398J(C2477d c2477d) {
            m3017z();
            ((C2483f) this.f10960c).m3411X(c2477d);
            return this;
        }

        /* renamed from: L */
        public C2485b m3397L(C2480e c2480e) {
            m3017z();
            ((C2483f) this.f10960c).m3401h0(c2480e);
            return this;
        }

        /* renamed from: M */
        public C2485b m3396M(String str) {
            m3017z();
            ((C2483f) this.f10960c).m3400i0(str);
            return this;
        }
    }

    static {
        C2483f c2483f = new C2483f();
        DEFAULT_INSTANCE = c2483f;
        GeneratedMessageLite.m3029P(C2483f.class, c2483f);
    }

    private C2483f() {
    }

    /* renamed from: W */
    public void m3412W(C2470b c2470b) {
        c2470b.getClass();
        m3410Y();
        this.androidMemoryReadings_.add(c2470b);
    }

    /* renamed from: X */
    public void m3411X(C2477d c2477d) {
        c2477d.getClass();
        m3409Z();
        this.cpuMetricReadings_.add(c2477d);
    }

    /* renamed from: Y */
    private void m3410Y() {
        C2665x.AbstractC2674i<C2470b> abstractC2674i = this.androidMemoryReadings_;
        if (!abstractC2674i.mo2237D()) {
            this.androidMemoryReadings_ = GeneratedMessageLite.m3033L(abstractC2674i);
        }
    }

    /* renamed from: Z */
    private void m3409Z() {
        C2665x.AbstractC2674i<C2477d> abstractC2674i = this.cpuMetricReadings_;
        if (!abstractC2674i.mo2237D()) {
            this.cpuMetricReadings_ = GeneratedMessageLite.m3033L(abstractC2674i);
        }
    }

    /* renamed from: c0 */
    public static C2483f m3406c0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: g0 */
    public static C2485b m3402g0() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* renamed from: h0 */
    public void m3401h0(C2480e c2480e) {
        c2480e.getClass();
        this.gaugeMetadata_ = c2480e;
        this.bitField0_ |= 2;
    }

    /* renamed from: i0 */
    public void m3400i0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2484a.f10755a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2483f();
            case 2:
                return new C2485b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0002��\u0001ဈ��\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", C2477d.class, "gaugeMetadata_", "androidMemoryReadings_", C2470b.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2483f> abstractC2660u0 = PARSER;
                AbstractC2660u0<C2483f> abstractC2660u02 = abstractC2660u0;
                if (abstractC2660u0 == null) {
                    synchronized (C2483f.class) {
                        try {
                            AbstractC2660u0<C2483f> abstractC2660u03 = PARSER;
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

    /* renamed from: a0 */
    public int m3408a0() {
        return this.androidMemoryReadings_.size();
    }

    /* renamed from: b0 */
    public int m3407b0() {
        return this.cpuMetricReadings_.size();
    }

    /* renamed from: d0 */
    public C2480e m3405d0() {
        C2480e c2480e = this.gaugeMetadata_;
        C2480e c2480e2 = c2480e;
        if (c2480e == null) {
            c2480e2 = C2480e.m3428W();
        }
        return c2480e2;
    }

    /* renamed from: e0 */
    public boolean m3404e0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: f0 */
    public boolean m3403f0() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }
}
