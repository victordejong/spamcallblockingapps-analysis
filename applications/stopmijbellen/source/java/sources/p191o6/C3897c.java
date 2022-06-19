package p191o6;

import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1911q;
import com.google.protobuf.C1913r;
import java.util.Map;
import java.util.Objects;
import p191o6.EnumC3901d;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
import p287x6.EnumC4898c0;
/* renamed from: o6.c */
/* loaded from: classes-dex2jar.jar:o6/c.class */
public final class C3897c extends AbstractC1888i<C3897c, C3899b> implements AbstractC4918p {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final C3897c DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile AbstractC4921s<C3897c> PARSER;
    private C3891a androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private C1913r<String, String> customAttributes_ = C1913r.f7111b;
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    /* renamed from: o6.c$b */
    /* loaded from: classes-dex2jar.jar:o6/c$b.class */
    public static final class C3899b extends AbstractC1888i.AbstractC1889a<C3897c, C3899b> implements AbstractC4918p {
        public C3899b() {
            super(C3897c.DEFAULT_INSTANCE);
        }

        public C3899b(C3898a c3898a) {
            super(C3897c.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: o6.c$c */
    /* loaded from: classes-dex2jar.jar:o6/c$c.class */
    public static final class C3900c {

        /* renamed from: a */
        public static final C1911q<String, String> f12385a;

        static {
            EnumC4898c0 enumC4898c0 = EnumC4898c0.STRING;
            f12385a = new C1911q<>(enumC4898c0, "", enumC4898c0, "");
        }
    }

    static {
        C3897c c3897c = new C3897c();
        DEFAULT_INSTANCE = c3897c;
        AbstractC1888i.m4285x(C3897c.class, c3897c);
    }

    /* renamed from: A */
    public static void m1716A(C3897c c3897c, EnumC3901d enumC3901d) {
        Objects.requireNonNull(c3897c);
        c3897c.applicationProcessState_ = enumC3901d.f12391a;
        c3897c.bitField0_ |= 8;
    }

    /* renamed from: B */
    public static Map m1715B(C3897c c3897c) {
        C1913r<String, String> c1913r = c3897c.customAttributes_;
        if (!c1913r.f7112a) {
            c3897c.customAttributes_ = c1913r.m4247c();
        }
        return c3897c.customAttributes_;
    }

    /* renamed from: C */
    public static void m1714C(C3897c c3897c, String str) {
        Objects.requireNonNull(c3897c);
        Objects.requireNonNull(str);
        c3897c.bitField0_ |= 2;
        c3897c.appInstanceId_ = str;
    }

    /* renamed from: D */
    public static void m1713D(C3897c c3897c, C3891a c3891a) {
        Objects.requireNonNull(c3897c);
        c3897c.androidAppInfo_ = c3891a;
        c3897c.bitField0_ |= 4;
    }

    /* renamed from: F */
    public static C3897c m1711F() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: K */
    public static C3899b m1706K() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1704z(C3897c c3897c, String str) {
        Objects.requireNonNull(c3897c);
        Objects.requireNonNull(str);
        c3897c.bitField0_ |= 1;
        c3897c.googleAppId_ = str;
    }

    /* renamed from: E */
    public C3891a m1712E() {
        C3891a c3891a = this.androidAppInfo_;
        C3891a c3891a2 = c3891a;
        if (c3891a == null) {
            c3891a2 = C3891a.m1726C();
        }
        return c3891a2;
    }

    /* renamed from: G */
    public boolean m1710G() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: H */
    public boolean m1709H() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: I */
    public boolean m1708I() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: J */
    public boolean m1707J() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // com.google.protobuf.AbstractC1888i
    /* renamed from: r */
    public final Object mo1597r(AbstractC1888i.EnumC1893e enumC1893e, Object obj, Object obj2) {
        switch (enumC1893e.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0005��\u0001\u0001\u0006\u0005\u0001����\u0001ဈ��\u0002ဈ\u0001\u0003ဉ\u0002\u0005ဌ\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", EnumC3901d.C3902a.f12392a, "customAttributes_", C3900c.f12385a});
            case 3:
                return new C3897c();
            case 4:
                return new C3899b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3897c> abstractC4921s = PARSER;
                AbstractC4921s<C3897c> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3897c.class) {
                        try {
                            AbstractC4921s<C3897c> abstractC4921s3 = PARSER;
                            abstractC4921s2 = abstractC4921s3;
                            if (abstractC4921s3 == null) {
                                abstractC4921s2 = new AbstractC1888i.C1890b<>(DEFAULT_INSTANCE);
                                PARSER = abstractC4921s2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return abstractC4921s2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
