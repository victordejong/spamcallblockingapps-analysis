package p131c.p161d.p282e.p340u.p350m;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6319h0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.e.u.m.w */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/w.class */
public final class C6044w extends GeneratedMessageLite<C6044w, C6046b> implements AbstractC6049x {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    public static final C6044w DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C6044w> PARSER;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    public int bitField0_;
    public long clientStartTimeUs_;
    public long durationUs_;
    public boolean isAuto_;
    public MapFieldLite<String, Long> counters_ = MapFieldLite.emptyMapField();
    public MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    public String name_ = "";
    public C6381y.AbstractC6390i<C6044w> subtraces_ = GeneratedMessageLite.m6940u();
    public C6381y.AbstractC6390i<C6039u> perfSessions_ = GeneratedMessageLite.m6940u();

    /* renamed from: c.d.e.u.m.w$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/w$a.class */
    public static /* synthetic */ class C6045a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19490a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19490a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19490a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.w$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/w$b.class */
    public static final class C6046b extends GeneratedMessageLite.AbstractC7946a<C6044w, C6046b> implements AbstractC6049x {
        public C6046b() {
            super(C6044w.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6046b(C6045a aVar) {
            this();
        }

        /* renamed from: a */
        public C6046b m22187a(long j) {
            m6930s();
            ((C6044w) this.f31129b).m22208a(j);
            return this;
        }

        /* renamed from: a */
        public C6046b m22186a(C6039u uVar) {
            m6930s();
            ((C6044w) this.f31129b).m22207a(uVar);
            return this;
        }

        /* renamed from: a */
        public C6046b m22185a(C6044w wVar) {
            m6930s();
            ((C6044w) this.f31129b).m22206a(wVar);
            return this;
        }

        /* renamed from: a */
        public C6046b m22184a(Iterable<? extends C6039u> iterable) {
            m6930s();
            ((C6044w) this.f31129b).m22200a(iterable);
            return this;
        }

        /* renamed from: a */
        public C6046b m22183a(String str) {
            m6930s();
            ((C6044w) this.f31129b).m22194b(str);
            return this;
        }

        /* renamed from: a */
        public C6046b m22182a(String str, long j) {
            str.getClass();
            m6930s();
            ((C6044w) this.f31129b).m22221C().put(str, Long.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public C6046b m22181a(Map<String, Long> map) {
            m6930s();
            ((C6044w) this.f31129b).m22221C().putAll(map);
            return this;
        }

        /* renamed from: b */
        public C6046b m22180b(long j) {
            m6930s();
            ((C6044w) this.f31129b).m22199b(j);
            return this;
        }

        /* renamed from: b */
        public C6046b m22179b(Iterable<? extends C6044w> iterable) {
            m6930s();
            ((C6044w) this.f31129b).m22195b(iterable);
            return this;
        }

        /* renamed from: b */
        public C6046b m22178b(Map<String, String> map) {
            m6930s();
            ((C6044w) this.f31129b).m22220D().putAll(map);
            return this;
        }
    }

    /* renamed from: c.d.e.u.m.w$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/w$c.class */
    public static final class C6047c {

        /* renamed from: a */
        public static final C6319h0<String, Long> f19491a = C6319h0.m21476a(WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    /* renamed from: c.d.e.u.m.w$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/w$d.class */
    public static final class C6048d {

        /* renamed from: a */
        public static final C6319h0<String, String> f19492a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f19492a = C6319h0.m21476a(fieldType, "", fieldType, "");
        }
    }

    static {
        C6044w wVar = new C6044w();
        DEFAULT_INSTANCE = wVar;
        GeneratedMessageLite.m6949a(C6044w.class, wVar);
    }

    /* renamed from: N */
    public static C6044w m22210N() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: O */
    public static C6046b m22209O() {
        return DEFAULT_INSTANCE.m6945i();
    }

    /* renamed from: A */
    public long m22222A() {
        return this.durationUs_;
    }

    /* renamed from: C */
    public final Map<String, Long> m22221C() {
        return m22213K();
    }

    /* renamed from: D */
    public final Map<String, String> m22220D() {
        return m22212L();
    }

    /* renamed from: E */
    public String m22219E() {
        return this.name_;
    }

    /* renamed from: F */
    public List<C6039u> m22218F() {
        return this.perfSessions_;
    }

    /* renamed from: G */
    public List<C6044w> m22217G() {
        return this.subtraces_;
    }

    /* renamed from: H */
    public boolean m22216H() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: I */
    public final MapFieldLite<String, Long> m22215I() {
        return this.counters_;
    }

    /* renamed from: J */
    public final MapFieldLite<String, String> m22214J() {
        return this.customAttributes_;
    }

    /* renamed from: K */
    public final MapFieldLite<String, Long> m22213K() {
        if (!this.counters_.isMutable()) {
            this.counters_ = this.counters_.mutableCopy();
        }
        return this.counters_;
    }

    /* renamed from: L */
    public final MapFieldLite<String, String> m22212L() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6045a.f19490a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6044w();
            case 2:
                return new C6046b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\b��\u0001\u0001\t\b\u0002\u0002��\u0001\b��\u0002\u0007\u0001\u0004\u0002\u0002\u0005\u0002\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", C6047c.f19491a, "subtraces_", C6044w.class, "customAttributes_", C6048d.f19492a, "perfSessions_", C6039u.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6044w> v0Var = PARSER;
                AbstractC6376v0<C6044w> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6044w.class) {
                        try {
                            AbstractC6376v0<C6044w> v0Var3 = PARSER;
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
    public final void m22208a(long j) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j;
    }

    /* renamed from: a */
    public final void m22207a(C6039u uVar) {
        uVar.getClass();
        m22192v();
        this.perfSessions_.add(uVar);
    }

    /* renamed from: a */
    public final void m22206a(C6044w wVar) {
        wVar.getClass();
        m22191w();
        this.subtraces_.add(wVar);
    }

    /* renamed from: a */
    public final void m22200a(Iterable<? extends C6039u> iterable) {
        m22192v();
        AbstractC6275a.m21695a(iterable, this.perfSessions_);
    }

    /* renamed from: b */
    public final void m22199b(long j) {
        this.bitField0_ |= 8;
        this.durationUs_ = j;
    }

    /* renamed from: b */
    public final void m22195b(Iterable<? extends C6044w> iterable) {
        m22191w();
        AbstractC6275a.m21695a(iterable, this.subtraces_);
    }

    /* renamed from: b */
    public final void m22194b(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    /* renamed from: v */
    public final void m22192v() {
        if (!this.perfSessions_.mo21000L()) {
            this.perfSessions_ = GeneratedMessageLite.m6958a(this.perfSessions_);
        }
    }

    /* renamed from: w */
    public final void m22191w() {
        if (!this.subtraces_.mo21000L()) {
            this.subtraces_ = GeneratedMessageLite.m6958a(this.subtraces_);
        }
    }

    /* renamed from: x */
    public int m22190x() {
        return m22215I().size();
    }

    /* renamed from: y */
    public Map<String, Long> m22189y() {
        return Collections.unmodifiableMap(m22215I());
    }

    /* renamed from: z */
    public Map<String, String> m22188z() {
        return Collections.unmodifiableMap(m22214J());
    }
}
