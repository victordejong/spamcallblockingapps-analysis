package p131c.p161d.p282e.p340u.p350m;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.e.u.m.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/m/k.class */
public final class C6021k extends GeneratedMessageLite<C6021k, C6023b> implements AbstractC6024l {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    public static final C6021k DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    public static final int IOS_MEMORY_READINGS_FIELD_NUMBER = 5;
    public static volatile AbstractC6376v0<C6021k> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public int bitField0_;
    public C6017i gaugeMetadata_;
    public String sessionId_ = "";
    public C6381y.AbstractC6390i<C6013g> cpuMetricReadings_ = GeneratedMessageLite.m6940u();
    public C6381y.AbstractC6390i<C6004c> androidMemoryReadings_ = GeneratedMessageLite.m6940u();
    public C6381y.AbstractC6390i<C6029o> iosMemoryReadings_ = GeneratedMessageLite.m6940u();

    /* renamed from: c.d.e.u.m.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/k$a.class */
    public static /* synthetic */ class C6022a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19485a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f19485a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19485a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: c.d.e.u.m.k$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/u/m/k$b.class */
    public static final class C6023b extends GeneratedMessageLite.AbstractC7946a<C6021k, C6023b> implements AbstractC6024l {
        public C6023b() {
            super(C6021k.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6023b(C6022a aVar) {
            this();
        }

        /* renamed from: a */
        public C6023b m22262a(C6004c cVar) {
            m6930s();
            ((C6021k) this.f31129b).m22275a(cVar);
            return this;
        }

        /* renamed from: a */
        public C6023b m22261a(C6013g gVar) {
            m6930s();
            ((C6021k) this.f31129b).m22274a(gVar);
            return this;
        }

        /* renamed from: a */
        public C6023b m22260a(C6017i iVar) {
            m6930s();
            ((C6021k) this.f31129b).m22273a(iVar);
            return this;
        }

        /* renamed from: a */
        public C6023b m22259a(String str) {
            m6930s();
            ((C6021k) this.f31129b).m22268b(str);
            return this;
        }
    }

    static {
        C6021k kVar = new C6021k();
        DEFAULT_INSTANCE = kVar;
        GeneratedMessageLite.m6949a(C6021k.class, kVar);
    }

    /* renamed from: E */
    public static C6021k m22277E() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: F */
    public static C6023b m22276F() {
        return DEFAULT_INSTANCE.m6945i();
    }

    /* renamed from: A */
    public boolean m22280A() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: C */
    public boolean m22279C() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6022a.f19485a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6021k();
            case 2:
                return new C6023b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0003��\u0001\b��\u0002\u001b\u0003\t\u0001\u0004\u001b\u0005\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", C6013g.class, "gaugeMetadata_", "androidMemoryReadings_", C6004c.class, "iosMemoryReadings_", C6029o.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6021k> v0Var = PARSER;
                AbstractC6376v0<C6021k> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6021k.class) {
                        try {
                            AbstractC6376v0<C6021k> v0Var3 = PARSER;
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
    public final void m22275a(C6004c cVar) {
        cVar.getClass();
        m22267v();
        this.androidMemoryReadings_.add(cVar);
    }

    /* renamed from: a */
    public final void m22274a(C6013g gVar) {
        gVar.getClass();
        m22266w();
        this.cpuMetricReadings_.add(gVar);
    }

    /* renamed from: a */
    public final void m22273a(C6017i iVar) {
        iVar.getClass();
        this.gaugeMetadata_ = iVar;
        this.bitField0_ |= 2;
    }

    /* renamed from: b */
    public final void m22268b(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    /* renamed from: v */
    public final void m22267v() {
        if (!this.androidMemoryReadings_.mo21000L()) {
            this.androidMemoryReadings_ = GeneratedMessageLite.m6958a(this.androidMemoryReadings_);
        }
    }

    /* renamed from: w */
    public final void m22266w() {
        if (!this.cpuMetricReadings_.mo21000L()) {
            this.cpuMetricReadings_ = GeneratedMessageLite.m6958a(this.cpuMetricReadings_);
        }
    }

    /* renamed from: x */
    public int m22265x() {
        return this.androidMemoryReadings_.size();
    }

    /* renamed from: y */
    public int m22264y() {
        return this.cpuMetricReadings_.size();
    }

    /* renamed from: z */
    public C6017i m22263z() {
        C6017i iVar = this.gaugeMetadata_;
        C6017i iVar2 = iVar;
        if (iVar == null) {
            iVar2 = C6017i.m22286x();
        }
        return iVar2;
    }
}
