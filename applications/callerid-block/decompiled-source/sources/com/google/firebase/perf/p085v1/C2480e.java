package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/e.class */
public final class C2480e extends GeneratedMessageLite<C2480e, C2482b> implements Object {
    public static final int CPU_CLOCK_RATE_KHZ_FIELD_NUMBER = 2;
    public static final int CPU_PROCESSOR_COUNT_FIELD_NUMBER = 6;
    private static final C2480e DEFAULT_INSTANCE;
    public static final int DEVICE_RAM_SIZE_KB_FIELD_NUMBER = 3;
    public static final int MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 4;
    public static final int MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 5;
    private static volatile AbstractC2660u0<C2480e> PARSER;
    public static final int PROCESS_NAME_FIELD_NUMBER = 1;
    private int bitField0_;
    private int cpuClockRateKhz_;
    private int cpuProcessorCount_;
    private int deviceRamSizeKb_;
    private int maxAppJavaHeapMemoryKb_;
    private int maxEncouragedAppJavaHeapMemoryKb_;
    private String processName_ = "";

    /* renamed from: com.google.firebase.perf.v1.e$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/e$a.class */
    static /* synthetic */ class C2481a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10754a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10754a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10754a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.e$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/e$b.class */
    public static final class C2482b extends GeneratedMessageLite.AbstractC2550a<C2480e, C2482b> implements Object {
        private C2482b() {
            super(C2480e.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2482b(C2481a aVar) {
            this();
        }

        /* renamed from: I */
        public C2482b m3421I(int i) {
            m3017z();
            ((C2480e) this.f10960c).m3425Z(i);
            return this;
        }

        /* renamed from: J */
        public C2482b m3420J(int i) {
            m3017z();
            ((C2480e) this.f10960c).m3424a0(i);
            return this;
        }

        /* renamed from: L */
        public C2482b m3419L(int i) {
            m3017z();
            ((C2480e) this.f10960c).m3423b0(i);
            return this;
        }

        /* renamed from: M */
        public C2482b m3418M(String str) {
            m3017z();
            ((C2480e) this.f10960c).m3422c0(str);
            return this;
        }
    }

    static {
        C2480e eVar = new C2480e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.m3029P(C2480e.class, eVar);
    }

    private C2480e() {
    }

    /* renamed from: W */
    public static C2480e m3428W() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: Y */
    public static C2482b m3426Y() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m3425Z(int i) {
        this.bitField0_ |= 8;
        this.deviceRamSizeKb_ = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public void m3424a0(int i) {
        this.bitField0_ |= 16;
        this.maxAppJavaHeapMemoryKb_ = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public void m3423b0(int i) {
        this.bitField0_ |= 32;
        this.maxEncouragedAppJavaHeapMemoryKb_ = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public void m3422c0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.processName_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2481a.f10754a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2480e();
            case 2:
                return new C2482b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002င\u0001\u0003င\u0003\u0004င\u0004\u0005င\u0005\u0006င\u0002", new Object[]{"bitField0_", "processName_", "cpuClockRateKhz_", "deviceRamSizeKb_", "maxAppJavaHeapMemoryKb_", "maxEncouragedAppJavaHeapMemoryKb_", "cpuProcessorCount_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2480e> u0Var = PARSER;
                AbstractC2660u0<C2480e> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (C2480e.class) {
                        try {
                            AbstractC2660u0<C2480e> u0Var3 = PARSER;
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

    /* renamed from: X */
    public boolean m3427X() {
        return (this.bitField0_ & 16) != 0;
    }
}
