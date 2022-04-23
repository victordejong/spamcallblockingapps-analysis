package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.f0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/f0.class */
public final class C5494f0 extends GeneratedMessageLite<C5494f0, C5495a> implements AbstractC5498g0 {
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    public static final C5494f0 DEFAULT_INSTANCE;
    public static final int LANDSCAPE_IMAGE_URL_FIELD_NUMBER = 4;
    public static volatile AbstractC6376v0<C5494f0> PARSER;
    public static final int PORTRAIT_IMAGE_URL_FIELD_NUMBER = 3;
    public static final int PRIMARY_ACTION_BUTTON_FIELD_NUMBER = 6;
    public static final int PRIMARY_ACTION_FIELD_NUMBER = 7;
    public static final int SECONDARY_ACTION_BUTTON_FIELD_NUMBER = 8;
    public static final int SECONDARY_ACTION_FIELD_NUMBER = 9;
    public static final int TITLE_FIELD_NUMBER = 1;
    public C5514m0 body_;
    public C5488d0 primaryActionButton_;
    public C5885z primaryAction_;
    public C5488d0 secondaryActionButton_;
    public C5885z secondaryAction_;
    public C5514m0 title_;
    public String portraitImageUrl_ = "";
    public String landscapeImageUrl_ = "";
    public String backgroundHexColor_ = "";

    /* renamed from: c.d.e.q.f0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/f0$a.class */
    public static final class C5495a extends GeneratedMessageLite.AbstractC7946a<C5494f0, C5495a> implements AbstractC5498g0 {
        public C5495a() {
            super(C5494f0.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5495a(C5884y yVar) {
            this();
        }
    }

    static {
        C5494f0 f0Var = new C5494f0();
        DEFAULT_INSTANCE = f0Var;
        GeneratedMessageLite.m6949a(C5494f0.class, f0Var);
    }

    /* renamed from: M */
    public static C5494f0 m23670M() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A */
    public C5488d0 m23681A() {
        C5488d0 d0Var = this.primaryActionButton_;
        C5488d0 d0Var2 = d0Var;
        if (d0Var == null) {
            d0Var2 = C5488d0.m23685z();
        }
        return d0Var2;
    }

    /* renamed from: C */
    public C5885z m23680C() {
        C5885z zVar = this.secondaryAction_;
        C5885z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = C5885z.m22813x();
        }
        return zVar2;
    }

    /* renamed from: D */
    public C5488d0 m23679D() {
        C5488d0 d0Var = this.secondaryActionButton_;
        C5488d0 d0Var2 = d0Var;
        if (d0Var == null) {
            d0Var2 = C5488d0.m23685z();
        }
        return d0Var2;
    }

    /* renamed from: E */
    public C5514m0 m23678E() {
        C5514m0 m0Var = this.title_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: F */
    public boolean m23677F() {
        return this.body_ != null;
    }

    /* renamed from: G */
    public boolean m23676G() {
        return this.primaryAction_ != null;
    }

    /* renamed from: H */
    public boolean m23675H() {
        return this.primaryActionButton_ != null;
    }

    /* renamed from: I */
    public boolean m23674I() {
        return this.secondaryAction_ != null;
    }

    /* renamed from: J */
    public boolean m23673J() {
        return this.secondaryActionButton_ != null;
    }

    /* renamed from: K */
    public boolean m23672K() {
        return this.title_ != null;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5884y.f19188a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5494f0();
            case 2:
                return new C5495a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\t����\u0001\t\t������\u0001\t\u0002\t\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006\t\u0007\t\b\t\t\t", new Object[]{"title_", "body_", "portraitImageUrl_", "landscapeImageUrl_", "backgroundHexColor_", "primaryActionButton_", "primaryAction_", "secondaryActionButton_", "secondaryAction_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5494f0> v0Var = PARSER;
                AbstractC6376v0<C5494f0> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5494f0.class) {
                        try {
                            AbstractC6376v0<C5494f0> v0Var3 = PARSER;
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
    public String m23669v() {
        return this.backgroundHexColor_;
    }

    /* renamed from: w */
    public C5514m0 m23668w() {
        C5514m0 m0Var = this.body_;
        C5514m0 m0Var2 = m0Var;
        if (m0Var == null) {
            m0Var2 = C5514m0.m23640y();
        }
        return m0Var2;
    }

    /* renamed from: x */
    public String m23667x() {
        return this.landscapeImageUrl_;
    }

    /* renamed from: y */
    public String m23666y() {
        return this.portraitImageUrl_;
    }

    /* renamed from: z */
    public C5885z m23665z() {
        C5885z zVar = this.primaryAction_;
        C5885z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = C5885z.m22813x();
        }
        return zVar2;
    }
}
