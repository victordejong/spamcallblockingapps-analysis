package p131c.p161d.p282e.p315q;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/b.class */
public final class C5480b extends GeneratedMessageLite<C5480b, C5482b> implements AbstractC5485c {
    public static final C5480b DEFAULT_INSTANCE;
    public static final int FIREBASE_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5480b> PARSER;
    public int bitField0_;
    public String googleAppId_ = "";
    public String firebaseInstanceId_ = "";

    /* renamed from: c.d.e.q.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/b$a.class */
    public static /* synthetic */ class C5481a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18463a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f18463a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18463a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.q.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/b$b.class */
    public static final class C5482b extends GeneratedMessageLite.AbstractC7946a<C5480b, C5482b> implements AbstractC5485c {
        public C5482b() {
            super(C5480b.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C5482b(C5481a aVar) {
            this();
        }

        /* renamed from: a */
        public C5482b m23701a(String str) {
            m6930s();
            ((C5480b) this.f31129b).m23705b(str);
            return this;
        }

        /* renamed from: b */
        public C5482b m23700b(String str) {
            m6930s();
            ((C5480b) this.f31129b).m23704c(str);
            return this;
        }
    }

    static {
        C5480b bVar = new C5480b();
        DEFAULT_INSTANCE = bVar;
        GeneratedMessageLite.m6949a(C5480b.class, bVar);
    }

    /* renamed from: w */
    public static C5482b m23702w() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5481a.f18463a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5480b();
            case 2:
                return new C5482b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\b\u0001", new Object[]{"bitField0_", "googleAppId_", "firebaseInstanceId_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5480b> v0Var = PARSER;
                AbstractC6376v0<C5480b> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5480b.class) {
                        try {
                            AbstractC6376v0<C5480b> v0Var3 = PARSER;
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
    public final void m23705b(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.firebaseInstanceId_ = str;
    }

    /* renamed from: c */
    public final void m23704c(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }
}
