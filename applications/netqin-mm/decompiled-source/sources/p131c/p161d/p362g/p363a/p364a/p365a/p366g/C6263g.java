package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p278d.p279a.p280a.p281a.C5123b;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.g.a.a.a.g.g */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/g.class */
public final class C6263g extends GeneratedMessageLite<C6263g, C6265b> implements AbstractC6266h {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 3;
    public static final int CLIENT_SIGNALS_FIELD_NUMBER = 4;
    public static final C6263g DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C6263g> PARSER;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int REQUESTING_CLIENT_APP_FIELD_NUMBER = 2;
    public C5123b clientSignals_;
    public C6259e requestingClientApp_;
    public String projectNumber_ = "";
    public C6381y.AbstractC6390i<C6251a> alreadySeenCampaigns_ = GeneratedMessageLite.m6940u();

    /* renamed from: c.d.g.a.a.a.g.g$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/g$a.class */
    public static /* synthetic */ class C6264a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19848a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19848a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19848a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.g.a.a.a.g.g$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/g$b.class */
    public static final class C6265b extends GeneratedMessageLite.AbstractC7946a<C6263g, C6265b> implements AbstractC6266h {
        public C6265b() {
            super(C6263g.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6265b(C6264a aVar) {
            this();
        }

        /* renamed from: a */
        public C6265b m21712a(C5123b bVar) {
            m6930s();
            ((C6263g) this.f31129b).m21724a(bVar);
            return this;
        }

        /* renamed from: a */
        public C6265b m21711a(C6259e eVar) {
            m6930s();
            ((C6263g) this.f31129b).m21723a(eVar);
            return this;
        }

        /* renamed from: a */
        public C6265b m21710a(Iterable<? extends C6251a> iterable) {
            m6930s();
            ((C6263g) this.f31129b).m21718a(iterable);
            return this;
        }

        /* renamed from: a */
        public C6265b m21709a(String str) {
            m6930s();
            ((C6263g) this.f31129b).m21717b(str);
            return this;
        }
    }

    static {
        C6263g gVar = new C6263g();
        DEFAULT_INSTANCE = gVar;
        GeneratedMessageLite.m6949a(C6263g.class, gVar);
    }

    /* renamed from: x */
    public static C6263g m21714x() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: y */
    public static C6265b m21713y() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6264a.f19848a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6263g();
            case 2:
                return new C6265b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004��\u0001��\u0001Ȉ\u0002\t\u0003\u001b\u0004\t", new Object[]{"projectNumber_", "requestingClientApp_", "alreadySeenCampaigns_", C6251a.class, "clientSignals_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6263g> v0Var = PARSER;
                AbstractC6376v0<C6263g> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6263g.class) {
                        try {
                            AbstractC6376v0<C6263g> v0Var3 = PARSER;
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
    public final void m21724a(C5123b bVar) {
        bVar.getClass();
        this.clientSignals_ = bVar;
    }

    /* renamed from: a */
    public final void m21723a(C6259e eVar) {
        eVar.getClass();
        this.requestingClientApp_ = eVar;
    }

    /* renamed from: a */
    public final void m21718a(Iterable<? extends C6251a> iterable) {
        m21716v();
        AbstractC6275a.m21695a(iterable, this.alreadySeenCampaigns_);
    }

    /* renamed from: b */
    public final void m21717b(String str) {
        str.getClass();
        this.projectNumber_ = str;
    }

    /* renamed from: v */
    public final void m21716v() {
        if (!this.alreadySeenCampaigns_.mo21000L()) {
            this.alreadySeenCampaigns_ = GeneratedMessageLite.m6958a(this.alreadySeenCampaigns_);
        }
    }
}
