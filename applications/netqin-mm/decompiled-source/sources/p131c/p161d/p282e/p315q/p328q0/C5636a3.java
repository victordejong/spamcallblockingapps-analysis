package p131c.p161d.p282e.p315q.p328q0;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Map;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6319h0;
/* renamed from: c.d.e.q.q0.a3 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/a3.class */
public final class C5636a3 extends GeneratedMessageLite<C5636a3, C5637a> implements AbstractC5643b3 {
    public static final C5636a3 DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5636a3> PARSER;
    public MapFieldLite<String, C5835y2> limits_ = MapFieldLite.emptyMapField();

    /* renamed from: c.d.e.q.q0.a3$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/a3$a.class */
    public static final class C5637a extends GeneratedMessageLite.AbstractC7946a<C5636a3, C5637a> implements AbstractC5643b3 {
        public C5637a() {
            super(C5636a3.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5637a(C5831x2 x2Var) {
            this();
        }

        /* renamed from: a */
        public C5637a m23354a(String str, C5835y2 y2Var) {
            str.getClass();
            y2Var.getClass();
            m6930s();
            ((C5636a3) this.f31129b).m23359v().put(str, y2Var);
            return this;
        }
    }

    /* renamed from: c.d.e.q.q0.a3$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/a3$b.class */
    public static final class C5638b {

        /* renamed from: a */
        public static final C6319h0<String, C5835y2> f18713a = C6319h0.m21476a(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, C5835y2.m22928z());
    }

    static {
        C5636a3 a3Var = new C5636a3();
        DEFAULT_INSTANCE = a3Var;
        GeneratedMessageLite.m6949a(C5636a3.class, a3Var);
    }

    /* renamed from: A */
    public static AbstractC6376v0<C5636a3> m23363A() {
        return DEFAULT_INSTANCE.mo6943r();
    }

    /* renamed from: b */
    public static C5637a m23360b(C5636a3 a3Var) {
        return DEFAULT_INSTANCE.m6953a(a3Var);
    }

    /* renamed from: z */
    public static C5636a3 m23355z() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: a */
    public C5835y2 m23361a(String str, C5835y2 y2Var) {
        str.getClass();
        MapFieldLite<String, C5835y2> w = m23358w();
        if (w.containsKey(str)) {
            y2Var = w.get(str);
        }
        return y2Var;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5831x2.f19100a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5636a3();
            case 2:
                return new C5637a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001\u0001����\u00012", new Object[]{"limits_", C5638b.f18713a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5636a3> v0Var = PARSER;
                AbstractC6376v0<C5636a3> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5636a3.class) {
                        try {
                            AbstractC6376v0<C5636a3> v0Var3 = PARSER;
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

    /* renamed from: v */
    public final Map<String, C5835y2> m23359v() {
        return m23357x();
    }

    /* renamed from: w */
    public final MapFieldLite<String, C5835y2> m23358w() {
        return this.limits_;
    }

    /* renamed from: x */
    public final MapFieldLite<String, C5835y2> m23357x() {
        if (!this.limits_.isMutable()) {
            this.limits_ = this.limits_.mutableCopy();
        }
        return this.limits_;
    }
}
