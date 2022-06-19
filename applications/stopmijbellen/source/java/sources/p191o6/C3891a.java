package p191o6;

import com.google.protobuf.AbstractC1888i;
import java.util.Objects;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.a */
/* loaded from: classes-dex2jar.jar:o6/a.class */
public final class C3891a extends AbstractC1888i<C3891a, C3893b> implements AbstractC4918p {
    private static final C3891a DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile AbstractC4921s<C3891a> PARSER;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = "";
    private String sdkVersion_ = "";
    private String versionName_ = "";

    /* renamed from: o6.a$b */
    /* loaded from: classes-dex2jar.jar:o6/a$b.class */
    public static final class C3893b extends AbstractC1888i.AbstractC1889a<C3891a, C3893b> implements AbstractC4918p {
        public C3893b() {
            super(C3891a.DEFAULT_INSTANCE);
        }

        public C3893b(C3892a c3892a) {
            super(C3891a.DEFAULT_INSTANCE);
        }
    }

    static {
        C3891a c3891a = new C3891a();
        DEFAULT_INSTANCE = c3891a;
        AbstractC1888i.m4285x(C3891a.class, c3891a);
    }

    /* renamed from: A */
    public static void m1728A(C3891a c3891a, String str) {
        Objects.requireNonNull(c3891a);
        Objects.requireNonNull(str);
        c3891a.bitField0_ |= 2;
        c3891a.sdkVersion_ = str;
    }

    /* renamed from: B */
    public static void m1727B(C3891a c3891a, String str) {
        Objects.requireNonNull(c3891a);
        Objects.requireNonNull(str);
        c3891a.bitField0_ |= 4;
        c3891a.versionName_ = str;
    }

    /* renamed from: C */
    public static C3891a m1726C() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: F */
    public static C3893b m1723F() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1721z(C3891a c3891a, String str) {
        Objects.requireNonNull(c3891a);
        Objects.requireNonNull(str);
        c3891a.bitField0_ |= 1;
        c3891a.packageName_ = str;
    }

    /* renamed from: D */
    public boolean m1725D() {
        boolean z = true;
        if ((this.bitField0_ & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: E */
    public boolean m1724E() {
        return (this.bitField0_ & 2) != 0;
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case 3:
                return new C3891a();
            case 4:
                return new C3893b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3891a> abstractC4921s = PARSER;
                AbstractC4921s<C3891a> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3891a.class) {
                        try {
                            AbstractC4921s<C3891a> abstractC4921s3 = PARSER;
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
