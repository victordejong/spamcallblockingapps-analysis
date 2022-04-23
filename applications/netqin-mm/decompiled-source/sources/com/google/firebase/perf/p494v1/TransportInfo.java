package com.google.firebase.perf.p494v1;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p340u.p350m.AbstractC6050y;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.TransportInfo */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo.class */
public final class TransportInfo extends GeneratedMessageLite<TransportInfo, C7885b> implements AbstractC6050y {
    public static final TransportInfo DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<TransportInfo> PARSER;
    public int bitField0_;
    public int dispatchDestination_;

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination.class */
    public enum DispatchDestination implements C6381y.AbstractC6384c {
        SOURCE_UNKNOWN(0),
        FL_LEGACY_V1(1);
        
        public static final int FL_LEGACY_V1_VALUE = 1;
        public static final int SOURCE_UNKNOWN_VALUE = 0;
        public static final C6381y.AbstractC6385d<DispatchDestination> internalValueMap = new C7882a();
        public final int value;

        /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination$a.class */
        public class C7882a implements C6381y.AbstractC6385d<DispatchDestination> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public DispatchDestination mo6797a(int i) {
                return DispatchDestination.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.perf.v1.TransportInfo$DispatchDestination$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$DispatchDestination$b.class */
        public static final class C7883b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f31047a = new C7883b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
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

        public static C6381y.AbstractC6385d<DispatchDestination> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7883b.f31047a;
        }

        @Deprecated
        public static DispatchDestination valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$a.class */
    public static /* synthetic */ class C7884a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31048a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31048a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31048a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.TransportInfo$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/TransportInfo$b.class */
    public static final class C7885b extends GeneratedMessageLite.AbstractC7946a<TransportInfo, C7885b> implements AbstractC6050y {
        public C7885b() {
            super(TransportInfo.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7885b(C7884a aVar) {
            this();
        }
    }

    static {
        TransportInfo transportInfo = new TransportInfo();
        DEFAULT_INSTANCE = transportInfo;
        GeneratedMessageLite.m6949a(TransportInfo.class, transportInfo);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C7884a.f31048a[methodToInvoke.ordinal()]) {
            case 1:
                return new TransportInfo();
            case 2:
                return new C7885b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001\f��", new Object[]{"bitField0_", "dispatchDestination_", DispatchDestination.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<TransportInfo> v0Var = PARSER;
                AbstractC6376v0<TransportInfo> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (TransportInfo.class) {
                        try {
                            AbstractC6376v0<TransportInfo> v0Var3 = PARSER;
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
}
