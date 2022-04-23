package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/i.class */
public final class C5501i extends GeneratedMessageLite<C5501i, C5502a> implements AbstractC5505j {
    public static final C5501i DEFAULT_INSTANCE;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 5;
    public static final int FLOAT_VALUE_FIELD_NUMBER = 4;
    public static final int INT_VALUE_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5501i> PARSER;
    public static final int STRING_VALUE_FIELD_NUMBER = 2;
    public double doubleValue_;
    public float floatValue_;
    public long intValue_;
    public String name_ = "";
    public String stringValue_ = "";

    /* renamed from: c.d.e.q.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/i$a.class */
    public static final class C5502a extends GeneratedMessageLite.AbstractC7946a<C5501i, C5502a> implements AbstractC5505j {
        public C5502a() {
            super(C5501i.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5502a(C5487d dVar) {
            this();
        }
    }

    static {
        C5501i iVar = new C5501i();
        DEFAULT_INSTANCE = iVar;
        GeneratedMessageLite.m6949a(C5501i.class, iVar);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5487d.f18464a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5501i();
            case 2:
                return new C5502a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0001\u0005��", new Object[]{"name_", "stringValue_", "intValue_", "floatValue_", "doubleValue_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5501i> v0Var = PARSER;
                AbstractC6376v0<C5501i> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5501i.class) {
                        try {
                            AbstractC6376v0<C5501i> v0Var3 = PARSER;
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
}
