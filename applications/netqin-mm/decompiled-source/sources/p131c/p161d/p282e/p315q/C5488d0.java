package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.d0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/d0.class */
public final class C5488d0 extends GeneratedMessageLite<C5488d0, C5489a> implements AbstractC5492e0 {
    public static final int BUTTON_HEX_COLOR_FIELD_NUMBER = 2;
    public static final C5488d0 DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C5488d0> PARSER;
    public static final int TEXT_FIELD_NUMBER = 1;
    public String buttonHexColor_ = "";
    public C5514m0 text_;

    /* renamed from: c.d.e.q.d0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/d0$a.class */
    public static final class C5489a extends GeneratedMessageLite.AbstractC7946a<C5488d0, C5489a> implements AbstractC5492e0 {
        public C5489a() {
            super(C5488d0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5489a(C5884y yVar) {
            this();
        }
    }

    static {
        C5488d0 d0Var = new C5488d0();
        DEFAULT_INSTANCE = d0Var;
        GeneratedMessageLite.m6949a(C5488d0.class, d0Var);
    }

    /* renamed from: z */
    public static C5488d0 m23685z() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5488d0();
            case 2:
                return new C5489a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002Ȉ", new Object[]{"text_", "buttonHexColor_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5488d0> v0Var = PARSER;
                AbstractC6376v0<C5488d0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5488d0.class) {
                        try {
                            AbstractC6376v0<C5488d0> v0Var3 = PARSER;
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
    public String m23689v() {
        return this.buttonHexColor_;
    }

    /* renamed from: w */
    public C5514m0 m23688w() {
        C5514m0 m0Var = this.text_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: x */
    public boolean m23687x() {
        return this.text_ != null;
    }
}
