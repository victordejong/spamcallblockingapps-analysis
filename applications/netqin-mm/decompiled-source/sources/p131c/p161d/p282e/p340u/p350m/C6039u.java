package p131c.p161d.p282e.p340u.p350m;

import com.google.firebase.perf.p494v1.SessionVerbosity;
import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.AbstractC6392z;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.e.u.m.u */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/u.class */
public final class C6039u extends GeneratedMessageLite<C6039u, C6042c> implements AbstractC6043v {
    public static final C6039u DEFAULT_INSTANCE;
    public static volatile AbstractC6376v0<C6039u> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    public static final AbstractC6392z<Integer, SessionVerbosity> sessionVerbosity_converter_ = new C6040a();
    public int bitField0_;
    public String sessionId_ = "";
    public C6381y.AbstractC6388g sessionVerbosity_ = GeneratedMessageLite.m6941t();

    /* renamed from: c.d.e.u.m.u$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/u$a.class */
    public class C6040a implements AbstractC6392z<Integer, SessionVerbosity> {
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public SessionVerbosity mo20993a(Integer num) {
            SessionVerbosity forNumber = SessionVerbosity.forNumber(num.intValue());
            SessionVerbosity sessionVerbosity = forNumber;
            if (forNumber == null) {
                sessionVerbosity = SessionVerbosity.SESSION_VERBOSITY_NONE;
            }
            return sessionVerbosity;
        }
    }

    /* renamed from: c.d.e.u.m.u$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/u$b.class */
    public static /* synthetic */ class C6041b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19489a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19489a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19489a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.u$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/u$c.class */
    public static final class C6042c extends GeneratedMessageLite.AbstractC7946a<C6039u, C6042c> implements AbstractC6043v {
        public C6042c() {
            super(C6039u.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6042c(C6040a aVar) {
            this();
        }

        /* renamed from: a */
        public C6042c m22224a(SessionVerbosity sessionVerbosity) {
            m6930s();
            ((C6039u) this.f31129b).m22232a(sessionVerbosity);
            return this;
        }

        /* renamed from: a */
        public C6042c m22223a(String str) {
            m6930s();
            ((C6039u) this.f31129b).m22230b(str);
            return this;
        }
    }

    static {
        C6039u uVar = new C6039u();
        DEFAULT_INSTANCE = uVar;
        GeneratedMessageLite.m6949a(C6039u.class, uVar);
    }

    /* renamed from: y */
    public static C6042c m22226y() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6041b.f19489a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6039u();
            case 2:
                return new C6042c(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\b��\u0002\u001e", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", SessionVerbosity.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6039u> v0Var = PARSER;
                AbstractC6376v0<C6039u> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6039u.class) {
                        try {
                            AbstractC6376v0<C6039u> v0Var3 = PARSER;
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
    public final void m22232a(SessionVerbosity sessionVerbosity) {
        sessionVerbosity.getClass();
        m22229v();
        this.sessionVerbosity_.mo21001g(sessionVerbosity.getNumber());
    }

    /* renamed from: b */
    public SessionVerbosity m22231b(int i) {
        return sessionVerbosity_converter_.mo20993a(Integer.valueOf(this.sessionVerbosity_.getInt(i)));
    }

    /* renamed from: b */
    public final void m22230b(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    /* renamed from: v */
    public final void m22229v() {
        if (!this.sessionVerbosity_.mo21000L()) {
            this.sessionVerbosity_ = GeneratedMessageLite.m6959a(this.sessionVerbosity_);
        }
    }

    /* renamed from: w */
    public int m22228w() {
        return this.sessionVerbosity_.size();
    }
}
