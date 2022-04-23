package p131c.p161d.p282e.p340u.p350m;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.u.m.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/a.class */
public final class C5999a extends GeneratedMessageLite<C5999a, C6001b> implements AbstractC6003b {
    public static final C5999a DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C5999a> PARSER;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    public int bitField0_;
    public String packageName_ = "";
    public String sdkVersion_ = "";
    public String versionName_ = "";

    /* renamed from: c.d.e.u.m.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/a$a.class */
    public static /* synthetic */ class C6000a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19479a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19479a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19479a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/a$b.class */
    public static final class C6001b extends GeneratedMessageLite.AbstractC7946a<C5999a, C6001b> implements AbstractC6003b {
        public C6001b() {
            super(C5999a.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6001b(C6000a aVar) {
            this();
        }

        /* renamed from: a */
        public C6001b m22344a(String str) {
            m6930s();
            ((C5999a) this.f31129b).m22353b(str);
            return this;
        }

        /* renamed from: b */
        public C6001b m22343b(String str) {
            m6930s();
            ((C5999a) this.f31129b).m22351c(str);
            return this;
        }

        /* renamed from: c */
        public C6001b m22342c(String str) {
            m6930s();
            ((C5999a) this.f31129b).m22350d(str);
            return this;
        }
    }

    static {
        C5999a aVar = new C5999a();
        DEFAULT_INSTANCE = aVar;
        GeneratedMessageLite.m6949a(C5999a.class, aVar);
    }

    /* renamed from: y */
    public static C5999a m22346y() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: z */
    public static C6001b m22345z() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6000a.f19479a[methodToInvoke.ordinal()]) {
            case 1:
                return new C5999a();
            case 2:
                return new C6001b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\b��\u0002\b\u0001\u0003\b\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C5999a> v0Var = PARSER;
                AbstractC6376v0<C5999a> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C5999a.class) {
                        try {
                            AbstractC6376v0<C5999a> v0Var3 = PARSER;
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
    public final void m22353b(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.packageName_ = str;
    }

    /* renamed from: c */
    public final void m22351c(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.sdkVersion_ = str;
    }

    /* renamed from: d */
    public final void m22350d(String str) {
        str.getClass();
        this.bitField0_ |= 4;
        this.versionName_ = str;
    }

    /* renamed from: v */
    public boolean m22349v() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    public boolean m22348w() {
        return (this.bitField0_ & 2) != 0;
    }
}
