package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/a.class */
public final class C2467a extends GeneratedMessageLite<C2467a, C2469b> implements Object {
    private static final C2467a DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile AbstractC2660u0<C2467a> PARSER;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = "";
    private String sdkVersion_ = "";
    private String versionName_ = "";

    /* renamed from: com.google.firebase.perf.v1.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/a$a.class */
    static /* synthetic */ class C2468a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10749a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10749a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10749a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/a$b.class */
    public static final class C2469b extends GeneratedMessageLite.AbstractC2550a<C2467a, C2469b> implements Object {
        private C2469b() {
            super(C2467a.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2469b(C2468a aVar) {
            this();
        }

        /* renamed from: I */
        public C2469b m3480I(String str) {
            m3017z();
            ((C2467a) this.f10960c).m3483Z(str);
            return this;
        }

        /* renamed from: J */
        public C2469b m3479J(String str) {
            m3017z();
            ((C2467a) this.f10960c).m3482a0(str);
            return this;
        }

        /* renamed from: L */
        public C2469b m3478L(String str) {
            m3017z();
            ((C2467a) this.f10960c).m3481b0(str);
            return this;
        }
    }

    static {
        C2467a aVar = new C2467a();
        DEFAULT_INSTANCE = aVar;
        GeneratedMessageLite.m3029P(C2467a.class, aVar);
    }

    private C2467a() {
    }

    /* renamed from: V */
    public static C2467a m3487V() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: Y */
    public static C2469b m3484Y() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m3483Z(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.packageName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public void m3482a0(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.sdkVersion_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public void m3481b0(String str) {
        str.getClass();
        this.bitField0_ |= 4;
        this.versionName_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2468a.f10749a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2467a();
            case 2:
                return new C2469b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2467a> u0Var = PARSER;
                AbstractC2660u0<C2467a> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (C2467a.class) {
                        try {
                            AbstractC2660u0<C2467a> u0Var3 = PARSER;
                            u0Var2 = u0Var3;
                            if (u0Var3 == null) {
                                u0Var2 = new GeneratedMessageLite.C2551b<>(DEFAULT_INSTANCE);
                                PARSER = u0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return u0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: W */
    public boolean m3486W() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: X */
    public boolean m3485X() {
        return (this.bitField0_ & 2) != 0;
    }
}
