package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/b.class */
public final class C2470b extends GeneratedMessageLite<C2470b, C2472b> implements Object {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C2470b DEFAULT_INSTANCE;
    private static volatile AbstractC2660u0<C2470b> PARSER;
    public static final int USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private int usedAppJavaHeapMemoryKb_;

    /* renamed from: com.google.firebase.perf.v1.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/b$a.class */
    static /* synthetic */ class C2471a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10750a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10750a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10750a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/b$b.class */
    public static final class C2472b extends GeneratedMessageLite.AbstractC2550a<C2470b, C2472b> implements Object {
        private C2472b() {
            super(C2470b.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2472b(C2471a aVar) {
            this();
        }

        /* renamed from: I */
        public C2472b m3471I(long j) {
            m3017z();
            ((C2470b) this.f10960c).m3473V(j);
            return this;
        }

        /* renamed from: J */
        public C2472b m3470J(int i) {
            m3017z();
            ((C2470b) this.f10960c).m3472W(i);
            return this;
        }
    }

    static {
        C2470b bVar = new C2470b();
        DEFAULT_INSTANCE = bVar;
        GeneratedMessageLite.m3029P(C2470b.class, bVar);
    }

    private C2470b() {
    }

    /* renamed from: U */
    public static C2472b m3474U() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public void m3473V(long j) {
        this.bitField0_ |= 1;
        this.clientTimeUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m3472W(int i) {
        this.bitField0_ |= 2;
        this.usedAppJavaHeapMemoryKb_ = i;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2471a.f10750a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2470b();
            case 2:
                return new C2472b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဂ��\u0002င\u0001", new Object[]{"bitField0_", "clientTimeUs_", "usedAppJavaHeapMemoryKb_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2470b> u0Var = PARSER;
                AbstractC2660u0<C2470b> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (C2470b.class) {
                        try {
                            AbstractC2660u0<C2470b> u0Var3 = PARSER;
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
