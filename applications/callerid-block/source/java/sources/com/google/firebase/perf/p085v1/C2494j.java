package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2569a;
import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.C2607g0;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.firebase.perf.v1.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/j.class */
public final class C2494j extends GeneratedMessageLite<C2494j, C2496b> implements Object {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final C2494j DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile AbstractC2660u0<C2494j> PARSER;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private long durationUs_;
    private boolean isAuto_;
    private MapFieldLite<String, Long> counters_ = MapFieldLite.emptyMapField();
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private C2665x.AbstractC2674i<C2494j> subtraces_ = GeneratedMessageLite.m3040E();
    private C2665x.AbstractC2674i<C2490i> perfSessions_ = GeneratedMessageLite.m3040E();

    /* renamed from: com.google.firebase.perf.v1.j$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/j$a.class */
    static /* synthetic */ class C2495a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10758a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10758a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10758a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.j$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/j$b.class */
    public static final class C2496b extends GeneratedMessageLite.AbstractC2550a<C2494j, C2496b> implements Object {
        private C2496b() {
            super(C2494j.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2496b(C2495a c2495a) {
            this();
        }

        /* renamed from: I */
        public C2496b m3326I(Iterable<? extends C2490i> iterable) {
            m3017z();
            ((C2494j) this.f10960c).m3351b0(iterable);
            return this;
        }

        /* renamed from: J */
        public C2496b m3325J(Iterable<? extends C2494j> iterable) {
            m3017z();
            ((C2494j) this.f10960c).m3350c0(iterable);
            return this;
        }

        /* renamed from: L */
        public C2496b m3324L(C2490i c2490i) {
            m3017z();
            ((C2494j) this.f10960c).m3349d0(c2490i);
            return this;
        }

        /* renamed from: M */
        public C2496b m3323M(C2494j c2494j) {
            m3017z();
            ((C2494j) this.f10960c).m3348e0(c2494j);
            return this;
        }

        /* renamed from: N */
        public C2496b m3322N(Map<String, Long> map) {
            m3017z();
            ((C2494j) this.f10960c).m3340m0().putAll(map);
            return this;
        }

        /* renamed from: P */
        public C2496b m3321P(Map<String, String> map) {
            m3017z();
            ((C2494j) this.f10960c).m3339n0().putAll(map);
            return this;
        }

        /* renamed from: Q */
        public C2496b m3320Q(String str, long j) {
            str.getClass();
            m3017z();
            ((C2494j) this.f10960c).m3340m0().put(str, Long.valueOf(j));
            return this;
        }

        /* renamed from: R */
        public C2496b m3319R(long j) {
            m3017z();
            ((C2494j) this.f10960c).m3329x0(j);
            return this;
        }

        /* renamed from: S */
        public C2496b m3318S(long j) {
            m3017z();
            ((C2494j) this.f10960c).m3328y0(j);
            return this;
        }

        /* renamed from: T */
        public C2496b m3317T(String str) {
            m3017z();
            ((C2494j) this.f10960c).m3327z0(str);
            return this;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.j$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/j$c.class */
    private static final class C2497c {

        /* renamed from: a */
        static final C2607g0<String, Long> f10759a = C2607g0.m2726d(WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    /* renamed from: com.google.firebase.perf.v1.j$d */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/j$d.class */
    private static final class C2498d {

        /* renamed from: a */
        static final C2607g0<String, String> f10760a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f10760a = C2607g0.m2726d(fieldType, "", fieldType, "");
        }
    }

    static {
        C2494j c2494j = new C2494j();
        DEFAULT_INSTANCE = c2494j;
        GeneratedMessageLite.m3029P(C2494j.class, c2494j);
    }

    private C2494j() {
    }

    /* renamed from: b0 */
    public void m3351b0(Iterable<? extends C2490i> iterable) {
        m3347f0();
        AbstractC2569a.m2921q(iterable, this.perfSessions_);
    }

    /* renamed from: c0 */
    public void m3350c0(Iterable<? extends C2494j> iterable) {
        m3346g0();
        AbstractC2569a.m2921q(iterable, this.subtraces_);
    }

    /* renamed from: d0 */
    public void m3349d0(C2490i c2490i) {
        c2490i.getClass();
        m3347f0();
        this.perfSessions_.add(c2490i);
    }

    /* renamed from: e0 */
    public void m3348e0(C2494j c2494j) {
        c2494j.getClass();
        m3346g0();
        this.subtraces_.add(c2494j);
    }

    /* renamed from: f0 */
    private void m3347f0() {
        C2665x.AbstractC2674i<C2490i> abstractC2674i = this.perfSessions_;
        if (!abstractC2674i.mo2237D()) {
            this.perfSessions_ = GeneratedMessageLite.m3033L(abstractC2674i);
        }
    }

    /* renamed from: g0 */
    private void m3346g0() {
        C2665x.AbstractC2674i<C2494j> abstractC2674i = this.subtraces_;
        if (!abstractC2674i.mo2237D()) {
            this.subtraces_ = GeneratedMessageLite.m3033L(abstractC2674i);
        }
    }

    /* renamed from: k0 */
    public static C2494j m3342k0() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: m0 */
    public Map<String, Long> m3340m0() {
        return m3332u0();
    }

    /* renamed from: n0 */
    public Map<String, String> m3339n0() {
        return m3331v0();
    }

    /* renamed from: s0 */
    private MapFieldLite<String, Long> m3334s0() {
        return this.counters_;
    }

    /* renamed from: t0 */
    private MapFieldLite<String, String> m3333t0() {
        return this.customAttributes_;
    }

    /* renamed from: u0 */
    private MapFieldLite<String, Long> m3332u0() {
        if (!this.counters_.isMutable()) {
            this.counters_ = this.counters_.mutableCopy();
        }
        return this.counters_;
    }

    /* renamed from: v0 */
    private MapFieldLite<String, String> m3331v0() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    /* renamed from: w0 */
    public static C2496b m3330w0() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* renamed from: x0 */
    public void m3329x0(long j) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j;
    }

    /* renamed from: y0 */
    public void m3328y0(long j) {
        this.bitField0_ |= 8;
        this.durationUs_ = j;
    }

    /* renamed from: z0 */
    public void m3327z0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2495a.f10758a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2494j();
            case 2:
                return new C2496b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\b��\u0001\u0001\t\b\u0002\u0002��\u0001ဈ��\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", C2497c.f10759a, "subtraces_", C2494j.class, "customAttributes_", C2498d.f10760a, "perfSessions_", C2490i.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2494j> abstractC2660u0 = PARSER;
                AbstractC2660u0<C2494j> abstractC2660u02 = abstractC2660u0;
                if (abstractC2660u0 == null) {
                    synchronized (C2494j.class) {
                        try {
                            AbstractC2660u0<C2494j> abstractC2660u03 = PARSER;
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

    /* renamed from: h0 */
    public int m3345h0() {
        return m3334s0().size();
    }

    /* renamed from: i0 */
    public Map<String, Long> m3344i0() {
        return Collections.unmodifiableMap(m3334s0());
    }

    /* renamed from: j0 */
    public Map<String, String> m3343j0() {
        return Collections.unmodifiableMap(m3333t0());
    }

    /* renamed from: l0 */
    public long m3341l0() {
        return this.durationUs_;
    }

    /* renamed from: o0 */
    public String m3338o0() {
        return this.name_;
    }

    /* renamed from: p0 */
    public List<C2490i> m3337p0() {
        return this.perfSessions_;
    }

    /* renamed from: q0 */
    public List<C2494j> m3336q0() {
        return this.subtraces_;
    }

    /* renamed from: r0 */
    public boolean m3335r0() {
        return (this.bitField0_ & 4) != 0;
    }
}
