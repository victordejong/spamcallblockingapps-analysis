package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/d.class */
public final class C2477d extends GeneratedMessageLite<C2477d, C2479b> implements Object {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C2477d DEFAULT_INSTANCE;
    private static volatile AbstractC2660u0<C2477d> PARSER;
    public static final int SYSTEM_TIME_US_FIELD_NUMBER = 3;
    public static final int USER_TIME_US_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private long systemTimeUs_;
    private long userTimeUs_;

    /* renamed from: com.google.firebase.perf.v1.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/d$a.class */
    static /* synthetic */ class C2478a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10753a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10753a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10753a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/d$b.class */
    public static final class C2479b extends GeneratedMessageLite.AbstractC2550a<C2477d, C2479b> implements Object {
        private C2479b() {
            super(C2477d.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2479b(C2478a aVar) {
            this();
        }

        /* renamed from: I */
        public C2479b m3436I(long j) {
            m3017z();
            ((C2477d) this.f10960c).m3439W(j);
            return this;
        }

        /* renamed from: J */
        public C2479b m3435J(long j) {
            m3017z();
            ((C2477d) this.f10960c).m3438X(j);
            return this;
        }

        /* renamed from: L */
        public C2479b m3434L(long j) {
            m3017z();
            ((C2477d) this.f10960c).m3437Y(j);
            return this;
        }
    }

    static {
        C2477d dVar = new C2477d();
        DEFAULT_INSTANCE = dVar;
        GeneratedMessageLite.m3029P(C2477d.class, dVar);
    }

    private C2477d() {
    }

    /* renamed from: V */
    public static C2479b m3440V() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m3439W(long j) {
        this.bitField0_ |= 1;
        this.clientTimeUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public void m3438X(long j) {
        this.bitField0_ |= 4;
        this.systemTimeUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y */
    public void m3437Y(long j) {
        this.bitField0_ |= 2;
        this.userTimeUs_ = j;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2478a.f10753a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2477d();
            case 2:
                return new C2479b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "clientTimeUs_", "userTimeUs_", "systemTimeUs_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2477d> u0Var = PARSER;
                AbstractC2660u0<C2477d> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (C2477d.class) {
                        try {
                            AbstractC2660u0<C2477d> u0Var3 = PARSER;
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
}
