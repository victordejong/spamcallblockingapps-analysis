package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.g.a.a.a.g.a */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/a.class */
public final class C6251a extends GeneratedMessageLite<C6251a, C6253b> implements AbstractC6258d {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final C6251a DEFAULT_INSTANCE;
    public static final int IMPRESSION_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C6251a> PARSER;
    public String campaignId_ = "";
    public long impressionTimestampMillis_;

    /* renamed from: c.d.g.a.a.a.g.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/a$a.class */
    public static /* synthetic */ class C6252a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19845a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19845a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19845a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.g.a.a.a.g.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/a$b.class */
    public static final class C6253b extends GeneratedMessageLite.AbstractC7946a<C6251a, C6253b> implements AbstractC6258d {
        public C6253b() {
            super(C6251a.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6253b(C6252a aVar) {
            this();
        }

        /* renamed from: a */
        public C6253b m21747a(long j) {
            m6930s();
            ((C6251a) this.f31129b).m21754a(j);
            return this;
        }

        /* renamed from: a */
        public C6253b m21746a(String str) {
            m6930s();
            ((C6251a) this.f31129b).m21751b(str);
            return this;
        }
    }

    static {
        C6251a aVar = new C6251a();
        DEFAULT_INSTANCE = aVar;
        GeneratedMessageLite.m6949a(C6251a.class, aVar);
    }

    /* renamed from: x */
    public static C6253b m21748x() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6252a.f19845a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6251a();
            case 2:
                return new C6253b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\u0002", new Object[]{"campaignId_", "impressionTimestampMillis_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6251a> v0Var = PARSER;
                AbstractC6376v0<C6251a> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6251a.class) {
                        try {
                            AbstractC6376v0<C6251a> v0Var3 = PARSER;
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

    /* renamed from: a */
    public final void m21754a(long j) {
        this.impressionTimestampMillis_ = j;
    }

    /* renamed from: b */
    public final void m21751b(String str) {
        str.getClass();
        this.campaignId_ = str;
    }

    /* renamed from: v */
    public String m21750v() {
        return this.campaignId_;
    }
}
