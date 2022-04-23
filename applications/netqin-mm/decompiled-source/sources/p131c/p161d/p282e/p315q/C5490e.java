package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.e.q.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/e.class */
public final class C5490e extends GeneratedMessageLite<C5490e, C5491a> implements AbstractC5493f {
    public static final int COUNT_FIELD_NUMBER = 5;
    public static final C5490e DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C5490e> PARSER;
    public static final int PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    public static final int TIMESTAMP_MILLIS_FIELD_NUMBER = 3;
    public static final int TRIGGER_PARAMS_FIELD_NUMBER = 1;
    public int count_;
    public long previousTimestampMillis_;
    public long timestampMillis_;
    public C6381y.AbstractC6390i<C5501i> triggerParams_ = GeneratedMessageLite.m6940u();
    public String name_ = "";

    /* renamed from: c.d.e.q.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/e$a.class */
    public static final class C5491a extends GeneratedMessageLite.AbstractC7946a<C5490e, C5491a> implements AbstractC5493f {
        public C5491a() {
            super(C5490e.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5491a(C5487d dVar) {
            this();
        }
    }

    static {
        C5490e eVar = new C5490e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.m6949a(C5490e.class, eVar);
    }

    /* renamed from: x */
    public static C5490e m23682x() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5487d.f18464a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5490e();
            case 2:
                return new C5491a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002Ȉ\u0003\u0002\u0004\u0002\u0005\u0004", new Object[]{"triggerParams_", C5501i.class, "name_", "timestampMillis_", "previousTimestampMillis_", "count_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5490e> v0Var = PARSER;
                AbstractC6376v0<C5490e> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5490e.class) {
                        try {
                            AbstractC6376v0<C5490e> v0Var3 = PARSER;
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
    public String m23684v() {
        return this.name_;
    }
}
