package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent;
import com.google.protobuf.GeneratedMessageLite;
import java.util.List;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.g.a.a.a.g.i */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/i.class */
public final class C6267i extends GeneratedMessageLite<C6267i, C6269b> implements AbstractC6270j {
    public static final C6267i DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<C6267i> PARSER;
    public long expirationEpochTimestampMillis_;
    public C6381y.AbstractC6390i<CampaignProto$ThickContent> messages_ = GeneratedMessageLite.m6940u();

    /* renamed from: c.d.g.a.a.a.g.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/i$a.class */
    public static /* synthetic */ class C6268a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19849a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19849a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19849a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.g.a.a.a.g.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/i$b.class */
    public static final class C6269b extends GeneratedMessageLite.AbstractC7946a<C6267i, C6269b> implements AbstractC6270j {
        public C6269b() {
            super(C6267i.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6269b(C6268a aVar) {
            this();
        }

        /* renamed from: a */
        public C6269b m21700a(long j) {
            m6930s();
            ((C6267i) this.f31129b).m21707a(j);
            return this;
        }
    }

    static {
        C6267i iVar = new C6267i();
        DEFAULT_INSTANCE = iVar;
        GeneratedMessageLite.m6949a(C6267i.class, iVar);
    }

    /* renamed from: A */
    public static AbstractC6376v0<C6267i> m21708A() {
        return DEFAULT_INSTANCE.mo6943r();
    }

    /* renamed from: y */
    public static C6267i m21702y() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: z */
    public static C6269b m21701z() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6268a.f19849a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6267i();
            case 2:
                return new C6269b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002\u0002", new Object[]{"messages_", CampaignProto$ThickContent.class, "expirationEpochTimestampMillis_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6267i> v0Var = PARSER;
                AbstractC6376v0<C6267i> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6267i.class) {
                        try {
                            AbstractC6376v0<C6267i> v0Var3 = PARSER;
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
    public final void m21707a(long j) {
        this.expirationEpochTimestampMillis_ = j;
    }

    /* renamed from: v */
    public long m21705v() {
        return this.expirationEpochTimestampMillis_;
    }

    /* renamed from: w */
    public List<CampaignProto$ThickContent> m21704w() {
        return this.messages_;
    }
}
