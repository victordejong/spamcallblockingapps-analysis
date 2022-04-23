package p131c.p161d.p278d.p279a.p280a.p281a;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.d.a.a.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/d/a/a/a/b.class */
public final class C5123b extends GeneratedMessageLite<C5123b, C5124a> implements AbstractC5125c {
    public static final int APP_VERSION_FIELD_NUMBER = 1;
    public static final C5123b DEFAULT_INSTANCE;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    public static volatile AbstractC6376v0<C5123b> PARSER;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 2;
    public static final int TIME_ZONE_FIELD_NUMBER = 4;
    public String appVersion_ = "";
    public String platformVersion_ = "";
    public String languageCode_ = "";
    public String timeZone_ = "";

    /* renamed from: c.d.d.a.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/d/a/a/a/b$a.class */
    public static final class C5124a extends GeneratedMessageLite.AbstractC7946a<C5123b, C5124a> implements AbstractC5125c {
        public C5124a() {
            super(C5123b.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5124a(C5122a aVar) {
            this();
        }

        /* renamed from: a */
        public C5124a m24483a(String str) {
            m6930s();
            ((C5123b) this.f31129b).m24491b(str);
            return this;
        }

        /* renamed from: b */
        public C5124a m24482b(String str) {
            m6930s();
            ((C5123b) this.f31129b).m24489c(str);
            return this;
        }

        /* renamed from: c */
        public C5124a m24481c(String str) {
            m6930s();
            ((C5123b) this.f31129b).m24487d(str);
            return this;
        }

        /* renamed from: d */
        public C5124a m24480d(String str) {
            m6930s();
            ((C5123b) this.f31129b).m24486e(str);
            return this;
        }
    }

    static {
        C5123b bVar = new C5123b();
        DEFAULT_INSTANCE = bVar;
        GeneratedMessageLite.m6949a(C5123b.class, bVar);
    }

    /* renamed from: w */
    public static C5124a m24484w() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5122a.f17714a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5123b();
            case 2:
                return new C5124a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"appVersion_", "platformVersion_", "languageCode_", "timeZone_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5123b> v0Var = PARSER;
                AbstractC6376v0<C5123b> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5123b.class) {
                        try {
                            AbstractC6376v0<C5123b> v0Var3 = PARSER;
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

    /* renamed from: b */
    public final void m24491b(String str) {
        str.getClass();
        this.appVersion_ = str;
    }

    /* renamed from: c */
    public final void m24489c(String str) {
        str.getClass();
        this.languageCode_ = str;
    }

    /* renamed from: d */
    public final void m24487d(String str) {
        str.getClass();
        this.platformVersion_ = str;
    }

    /* renamed from: e */
    public final void m24486e(String str) {
        str.getClass();
        this.timeZone_ = str;
    }
}
