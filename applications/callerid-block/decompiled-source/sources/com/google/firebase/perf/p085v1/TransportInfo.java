package com.google.firebase.perf.p085v1;

import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.C2665x;
import com.google.protobuf.GeneratedMessageLite;
/* renamed from: com.google.firebase.perf.v1.TransportInfo */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo.class */
public final class TransportInfo extends GeneratedMessageLite<TransportInfo, C2466b> implements Object {
    private static final TransportInfo DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile AbstractC2660u0<TransportInfo> PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination.class */
    public enum DispatchDestination implements C2665x.AbstractC2668c {
        SOURCE_UNKNOWN(0),
        FL_LEGACY_V1(1);
        

        /* renamed from: d */
        private static final C2665x.AbstractC2669d<DispatchDestination> f10745d = new C2463a();
        private final int value;

        /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination$a.class */
        class C2463a implements C2665x.AbstractC2669d<DispatchDestination> {
            C2463a() {
            }

            /* renamed from: b */
            public DispatchDestination mo2241a(int i) {
                return DispatchDestination.forNumber(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination$b.class */
        public static final class C2464b implements C2665x.AbstractC2670e {

            /* renamed from: a */
            static final C2665x.AbstractC2670e f10747a = new C2464b();

            private C2464b() {
            }

            @Override // com.google.protobuf.C2665x.AbstractC2670e
            /* renamed from: a */
            public boolean mo2240a(int i) {
                return DispatchDestination.forNumber(i) != null;
            }
        }

        DispatchDestination(int i) {
            this.value = i;
        }

        public static DispatchDestination forNumber(int i) {
            if (i == 0) {
                return SOURCE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return FL_LEGACY_V1;
        }

        public static C2665x.AbstractC2669d<DispatchDestination> internalGetValueMap() {
            return f10745d;
        }

        public static C2665x.AbstractC2670e internalGetVerifier() {
            return C2464b.f10747a;
        }

        @Deprecated
        public static DispatchDestination valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.C2665x.AbstractC2668c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$a.class */
    static /* synthetic */ class C2465a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10748a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10748a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10748a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$b.class */
    public static final class C2466b extends GeneratedMessageLite.AbstractC2550a<TransportInfo, C2466b> implements Object {
        private C2466b() {
            super(TransportInfo.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2466b(C2465a aVar) {
            this();
        }
    }

    static {
        TransportInfo transportInfo = new TransportInfo();
        DEFAULT_INSTANCE = transportInfo;
        GeneratedMessageLite.m3029P(TransportInfo.class, transportInfo);
    }

    private TransportInfo() {
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2465a.f10748a[methodToInvoke.ordinal()]) {
            case 1:
                return new TransportInfo();
            case 2:
                return new C2466b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"bitField0_", "dispatchDestination_", DispatchDestination.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<TransportInfo> u0Var = PARSER;
                AbstractC2660u0<TransportInfo> u0Var2 = u0Var;
                if (u0Var == null) {
                    synchronized (TransportInfo.class) {
                        try {
                            AbstractC2660u0<TransportInfo> u0Var3 = PARSER;
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
