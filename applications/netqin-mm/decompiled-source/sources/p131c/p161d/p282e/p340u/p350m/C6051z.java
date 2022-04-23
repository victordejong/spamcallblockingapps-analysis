package p131c.p161d.p282e.p340u.p350m;

import com.google.firebase.perf.p494v1.EffectiveConnectionType;
import com.google.firebase.perf.p494v1.ServiceWorkerStatus;
import com.google.firebase.perf.p494v1.VisibilityState;
import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.u.m.z */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/z.class */
public final class C6051z extends GeneratedMessageLite<C6051z, C6053b> implements AbstractC6002a0 {
    public static final C6051z DEFAULT_INSTANCE;
    public static final int EFFECTIVE_CONNECTION_TYPE_FIELD_NUMBER = 5;
    public static final int PAGE_URL_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C6051z> PARSER;
    public static final int SDK_VERSION_FIELD_NUMBER = 1;
    public static final int SERVICE_WORKER_STATUS_FIELD_NUMBER = 3;
    public static final int VISIBILITY_STATE_FIELD_NUMBER = 4;
    public int bitField0_;
    public int effectiveConnectionType_;
    public int serviceWorkerStatus_;
    public int visibilityState_;
    public String sdkVersion_ = "";
    public String pageUrl_ = "";

    /* renamed from: c.d.e.u.m.z$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/z$a.class */
    public static /* synthetic */ class C6052a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19493a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19493a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19493a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.z$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/z$b.class */
    public static final class C6053b extends GeneratedMessageLite.AbstractC7946a<C6051z, C6053b> implements AbstractC6002a0 {
        public C6053b() {
            super(C6051z.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6053b(C6052a aVar) {
            this();
        }
    }

    static {
        C6051z zVar = new C6051z();
        DEFAULT_INSTANCE = zVar;
        GeneratedMessageLite.m6949a(C6051z.class, zVar);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6052a.f19493a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6051z();
            case 2:
                return new C6053b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\b��\u0002\b\u0001\u0003\f\u0002\u0004\f\u0003\u0005\f\u0004", new Object[]{"bitField0_", "sdkVersion_", "pageUrl_", "serviceWorkerStatus_", ServiceWorkerStatus.internalGetVerifier(), "visibilityState_", VisibilityState.internalGetVerifier(), "effectiveConnectionType_", EffectiveConnectionType.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6051z> v0Var = PARSER;
                AbstractC6376v0<C6051z> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6051z.class) {
                        try {
                            AbstractC6376v0<C6051z> v0Var3 = PARSER;
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
