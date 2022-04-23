package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/g.class */
public final class C5496g extends GeneratedMessageLite<C5496g, C5497a> implements AbstractC5499h {
    public static final C5496g DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C5496g> PARSER;
    public static final int VALUE_FIELD_NUMBER = 1;
    public int value_;

    /* renamed from: c.d.e.q.g$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/g$a.class */
    public static final class C5497a extends GeneratedMessageLite.AbstractC7946a<C5496g, C5497a> implements AbstractC5499h {
        public C5497a() {
            super(C5496g.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5497a(C5487d dVar) {
            this();
        }
    }

    static {
        C5496g gVar = new C5496g();
        DEFAULT_INSTANCE = gVar;
        GeneratedMessageLite.m6949a(C5496g.class, gVar);
    }

    /* renamed from: x */
    public static C5496g m23662x() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5487d.f18464a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5496g();
            case 2:
                return new C5497a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0004", new Object[]{"value_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5496g> v0Var = PARSER;
                AbstractC6376v0<C5496g> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5496g.class) {
                        try {
                            AbstractC6376v0<C5496g> v0Var3 = PARSER;
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
    public int m23664v() {
        return this.value_;
    }
}
