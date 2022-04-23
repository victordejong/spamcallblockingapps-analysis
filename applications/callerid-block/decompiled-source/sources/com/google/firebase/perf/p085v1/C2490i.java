package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.AbstractC2676y;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/i.class */
public final class C2490i extends GeneratedMessageLite<C2490i, C2493c> implements Object {
    private static final C2490i DEFAULT_INSTANCE;
    private static volatile AbstractC2660u0<C2490i> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final AbstractC2676y<Integer, SessionVerbosity> sessionVerbosity_converter_ = new C2491a();
    private int bitField0_;
    private String sessionId_ = "";
    private C2665x.AbstractC2672g sessionVerbosity_ = GeneratedMessageLite.m3041D();

    /* renamed from: com.google.firebase.perf.v1.i$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/i$a.class */
    class C2491a implements AbstractC2676y<Integer, SessionVerbosity> {
        C2491a() {
        }

        /* renamed from: b */
        public SessionVerbosity mo2229a(Integer num) {
            SessionVerbosity forNumber = SessionVerbosity.forNumber(num.intValue());
            SessionVerbosity sessionVerbosity = forNumber;
            if (forNumber == null) {
                sessionVerbosity = SessionVerbosity.SESSION_VERBOSITY_NONE;
            }
            return sessionVerbosity;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/i$b.class */
    static /* synthetic */ class C2492b {

        /* renamed from: a */
        static final /* synthetic */ int[] f10757a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10757a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10757a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.i$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/i$c.class */
    public static final class C2493c extends GeneratedMessageLite.AbstractC2550a<C2490i, C2493c> implements Object {
        private C2493c() {
            super(C2490i.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2493c(C2491a aVar) {
            this();
        }

        /* renamed from: I */
        public C2493c m3363I(SessionVerbosity sessionVerbosity) {
            m3017z();
            ((C2490i) this.f10960c).m3370U(sessionVerbosity);
            return this;
        }

        /* renamed from: J */
        public C2493c m3362J(String str) {
            m3017z();
            ((C2490i) this.f10960c).m3365Z(str);
            return this;
        }
    }

    static {
        C2490i iVar = new C2490i();
        DEFAULT_INSTANCE = iVar;
        GeneratedMessageLite.m3029P(C2490i.class, iVar);
    }

    private C2490i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public void m3370U(SessionVerbosity sessionVerbosity) {
        sessionVerbosity.getClass();
        m3369V();
        this.sessionVerbosity_.mo2239n(sessionVerbosity.getNumber());
    }

    /* renamed from: V */
    private void m3369V() {
        C2665x.AbstractC2672g gVar = this.sessionVerbosity_;
        if (!gVar.mo2237D()) {
            this.sessionVerbosity_ = GeneratedMessageLite.m3034K(gVar);
        }
    }

    /* renamed from: Y */
    public static C2493c m3366Y() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m3365Z(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2492b.f10757a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2490i();
            case 2:
                return new C2493c(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001e", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", SessionVerbosity.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2490i> u0Var = PARSER;
                AbstractC2660u0<C2490i> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (C2490i.class) {
                        try {
                            AbstractC2660u0<C2490i> u0Var3 = PARSER;
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
    public SessionVerbosity m3368W(int i) {
        return sessionVerbosity_converter_.mo2229a(Integer.valueOf(this.sessionVerbosity_.mo2238q(i)));
    }

    /* renamed from: X */
    public int m3367X() {
        return this.sessionVerbosity_.size();
    }
}
