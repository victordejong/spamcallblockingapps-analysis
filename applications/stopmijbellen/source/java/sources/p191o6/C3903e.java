package p191o6;

import com.google.protobuf.AbstractC1888i;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.e */
/* loaded from: classes-dex2jar.jar:o6/e.class */
public final class C3903e extends AbstractC1888i<C3903e, C3905b> implements AbstractC4918p {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C3903e DEFAULT_INSTANCE;
    private static volatile AbstractC4921s<C3903e> PARSER;
    public static final int SYSTEM_TIME_US_FIELD_NUMBER = 3;
    public static final int USER_TIME_US_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private long systemTimeUs_;
    private long userTimeUs_;

    /* renamed from: o6.e$b */
    /* loaded from: classes-dex2jar.jar:o6/e$b.class */
    public static final class C3905b extends AbstractC1888i.AbstractC1889a<C3903e, C3905b> implements AbstractC4918p {
        public C3905b() {
            super(C3903e.DEFAULT_INSTANCE);
        }

        public C3905b(C3904a c3904a) {
            super(C3903e.DEFAULT_INSTANCE);
        }
    }

    static {
        C3903e c3903e = new C3903e();
        DEFAULT_INSTANCE = c3903e;
        AbstractC1888i.m4285x(C3903e.class, c3903e);
    }

    /* renamed from: A */
    public static void m1703A(C3903e c3903e, long j) {
        c3903e.bitField0_ |= 2;
        c3903e.userTimeUs_ = j;
    }

    /* renamed from: B */
    public static void m1702B(C3903e c3903e, long j) {
        c3903e.bitField0_ |= 4;
        c3903e.systemTimeUs_ = j;
    }

    /* renamed from: C */
    public static C3905b m1701C() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1699z(C3903e c3903e, long j) {
        c3903e.bitField0_ |= 1;
        c3903e.clientTimeUs_ = j;
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"bitField0_", "clientTimeUs_", "userTimeUs_", "systemTimeUs_"});
            case 3:
                return new C3903e();
            case 4:
                return new C3905b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3903e> abstractC4921s = PARSER;
                AbstractC4921s<C3903e> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3903e.class) {
                        try {
                            AbstractC4921s<C3903e> abstractC4921s3 = PARSER;
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
