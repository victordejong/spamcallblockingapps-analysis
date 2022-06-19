package com.google.firebase.perf.p085v1;

import com.google.firebase.perf.p085v1.C2467a;
import com.google.protobuf.AbstractC2660u0;
import com.google.protobuf.C2607g0;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Map;
/* renamed from: com.google.firebase.perf.v1.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/c.class */
public final class C2473c extends GeneratedMessageLite<C2473c, C2475b> implements Object {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final C2473c DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile AbstractC2660u0<C2473c> PARSER;
    private C2467a androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    /* renamed from: com.google.firebase.perf.v1.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/c$a.class */
    static /* synthetic */ class C2474a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10751a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f10751a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10751a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/c$b.class */
    public static final class C2475b extends GeneratedMessageLite.AbstractC2550a<C2473c, C2475b> implements Object {
        private C2475b() {
            super(C2473c.DEFAULT_INSTANCE);
        }

        /* synthetic */ C2475b(C2474a c2474a) {
            this();
        }

        /* renamed from: I */
        public boolean m3450I() {
            return ((C2473c) this.f10960c).m3459b0();
        }

        /* renamed from: J */
        public C2475b m3449J(Map<String, String> map) {
            m3017z();
            ((C2473c) this.f10960c).m3461Z().putAll(map);
            return this;
        }

        /* renamed from: L */
        public C2475b m3448L(C2467a.C2469b c2469b) {
            m3017z();
            ((C2473c) this.f10960c).m3454g0(c2469b.mo2420a());
            return this;
        }

        /* renamed from: M */
        public C2475b m3447M(String str) {
            m3017z();
            ((C2473c) this.f10960c).m3453h0(str);
            return this;
        }

        /* renamed from: N */
        public C2475b m3446N(ApplicationProcessState applicationProcessState) {
            m3017z();
            ((C2473c) this.f10960c).m3452i0(applicationProcessState);
            return this;
        }

        /* renamed from: P */
        public C2475b m3445P(String str) {
            m3017z();
            ((C2473c) this.f10960c).m3451j0(str);
            return this;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/c$c.class */
    private static final class C2476c {

        /* renamed from: a */
        static final C2607g0<String, String> f10752a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f10752a = C2607g0.m2726d(fieldType, "", fieldType, "");
        }
    }

    static {
        C2473c c2473c = new C2473c();
        DEFAULT_INSTANCE = c2473c;
        GeneratedMessageLite.m3029P(C2473c.class, c2473c);
    }

    private C2473c() {
    }

    /* renamed from: Y */
    public static C2473c m3462Y() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: Z */
    public Map<String, String> m3461Z() {
        return m3456e0();
    }

    /* renamed from: e0 */
    private MapFieldLite<String, String> m3456e0() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    /* renamed from: f0 */
    public static C2475b m3455f0() {
        return DEFAULT_INSTANCE.m3026z();
    }

    /* renamed from: g0 */
    public void m3454g0(C2467a c2467a) {
        c2467a.getClass();
        this.androidAppInfo_ = c2467a;
        this.bitField0_ |= 4;
    }

    /* renamed from: h0 */
    public void m3453h0(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    /* renamed from: i0 */
    public void m3452i0(ApplicationProcessState applicationProcessState) {
        this.applicationProcessState_ = applicationProcessState.getNumber();
        this.bitField0_ |= 8;
    }

    /* renamed from: j0 */
    public void m3451j0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: C */
    protected final Object mo3042C(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C2474a.f10751a[methodToInvoke.ordinal()]) {
            case 1:
                return new C2473c();
            case 2:
                return new C2475b(null);
            case 3:
                return GeneratedMessageLite.m3031N(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0006\u0005\u0001����\u0001ဈ��\u0002ဈ\u0001\u0003ဉ\u0002\u0005ဌ\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", ApplicationProcessState.internalGetVerifier(), "customAttributes_", C2476c.f10752a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC2660u0<C2473c> abstractC2660u0 = PARSER;
                AbstractC2660u0<C2473c> abstractC2660u02 = abstractC2660u0;
                if (abstractC2660u0 == null) {
                    synchronized (C2473c.class) {
                        try {
                            AbstractC2660u0<C2473c> abstractC2660u03 = PARSER;
                            abstractC2660u02 = abstractC2660u03;
                            if (abstractC2660u03 == null) {
                                abstractC2660u02 = new GeneratedMessageLite.C2551b<>(DEFAULT_INSTANCE);
                                PARSER = abstractC2660u02;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return abstractC2660u02;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: X */
    public C2467a m3463X() {
        C2467a c2467a = this.androidAppInfo_;
        C2467a c2467a2 = c2467a;
        if (c2467a == null) {
            c2467a2 = C2467a.m3487V();
        }
        return c2467a2;
    }

    /* renamed from: a0 */
    public boolean m3460a0() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: b0 */
    public boolean m3459b0() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: c0 */
    public boolean m3458c0() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: d0 */
    public boolean m3457d0() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }
}
