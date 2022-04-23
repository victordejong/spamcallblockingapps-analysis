package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.m0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/m0.class */
public final class C5514m0 extends GeneratedMessageLite<C5514m0, C5515a> implements AbstractC5517n0 {
    public static final C5514m0 DEFAULT_INSTANCE;
    public static final int HEX_COLOR_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C5514m0> PARSER;
    public static final int TEXT_FIELD_NUMBER = 1;
    public String text_ = "";
    public String hexColor_ = "";

    /* renamed from: c.d.e.q.m0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/m0$a.class */
    public static final class C5515a extends GeneratedMessageLite.AbstractC7946a<C5514m0, C5515a> implements AbstractC5517n0 {
        public C5515a() {
            super(C5514m0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5515a(C5884y yVar) {
            this();
        }
    }

    static {
        C5514m0 m0Var = new C5514m0();
        DEFAULT_INSTANCE = m0Var;
        GeneratedMessageLite.m6949a(C5514m0.class, m0Var);
    }

    /* renamed from: y */
    public static C5514m0 m23640y() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5514m0();
            case 2:
                return new C5515a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002Ȉ", new Object[]{"text_", "hexColor_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5514m0> v0Var = PARSER;
                AbstractC6376v0<C5514m0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5514m0.class) {
                        try {
                            AbstractC6376v0<C5514m0> v0Var3 = PARSER;
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
    public String m23643v() {
        return this.hexColor_;
    }

    /* renamed from: w */
    public String m23642w() {
        return this.text_;
    }
}
