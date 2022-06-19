package p191o6;

import com.google.protobuf.AbstractC1888i;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.n */
/* loaded from: classes-dex2jar.jar:o6/n.class */
public final class C3934n extends AbstractC1888i<C3934n, C3936b> implements AbstractC4918p {
    private static final C3934n DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile AbstractC4921s<C3934n> PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    /* renamed from: o6.n$b */
    /* loaded from: classes-dex2jar.jar:o6/n$b.class */
    public static final class C3936b extends AbstractC1888i.AbstractC1889a<C3934n, C3936b> implements AbstractC4918p {
        public C3936b(C3935a c3935a) {
            super(C3934n.DEFAULT_INSTANCE);
        }
    }

    static {
        C3934n c3934n = new C3934n();
        DEFAULT_INSTANCE = c3934n;
        AbstractC1888i.m4285x(C3934n.class, c3934n);
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"bitField0_", "dispatchDestination_", C3937o.f12419a});
            case 3:
                return new C3934n();
            case 4:
                return new C3936b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3934n> abstractC4921s = PARSER;
                AbstractC4921s<C3934n> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3934n.class) {
                        try {
                            AbstractC4921s<C3934n> abstractC4921s3 = PARSER;
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
