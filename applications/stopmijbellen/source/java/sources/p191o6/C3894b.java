package p191o6;

import com.google.protobuf.AbstractC1888i;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.b */
/* loaded from: classes-dex2jar.jar:o6/b.class */
public final class C3894b extends AbstractC1888i<C3894b, C3896b> implements AbstractC4918p {
    public static final int CLIENT_TIME_US_FIELD_NUMBER = 1;
    private static final C3894b DEFAULT_INSTANCE;
    private static volatile AbstractC4921s<C3894b> PARSER;
    public static final int USED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 2;
    private int bitField0_;
    private long clientTimeUs_;
    private int usedAppJavaHeapMemoryKb_;

    /* renamed from: o6.b$b */
    /* loaded from: classes-dex2jar.jar:o6/b$b.class */
    public static final class C3896b extends AbstractC1888i.AbstractC1889a<C3894b, C3896b> implements AbstractC4918p {
        public C3896b() {
            super(C3894b.DEFAULT_INSTANCE);
        }

        public C3896b(C3895a c3895a) {
            super(C3894b.DEFAULT_INSTANCE);
        }
    }

    static {
        C3894b c3894b = new C3894b();
        DEFAULT_INSTANCE = c3894b;
        AbstractC1888i.m4285x(C3894b.class, c3894b);
    }

    /* renamed from: A */
    public static void m1720A(C3894b c3894b, int i) {
        c3894b.bitField0_ |= 2;
        c3894b.usedAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: B */
    public static C3896b m1719B() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1717z(C3894b c3894b, long j) {
        c3894b.bitField0_ |= 1;
        c3894b.clientTimeUs_ = j;
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဂ��\u0002င\u0001", new Object[]{"bitField0_", "clientTimeUs_", "usedAppJavaHeapMemoryKb_"});
            case 3:
                return new C3894b();
            case 4:
                return new C3896b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3894b> abstractC4921s = PARSER;
                AbstractC4921s<C3894b> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3894b.class) {
                        try {
                            AbstractC4921s<C3894b> abstractC4921s3 = PARSER;
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
