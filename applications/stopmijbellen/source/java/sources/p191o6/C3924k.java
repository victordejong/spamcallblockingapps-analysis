package p191o6;

import com.google.protobuf.AbstractC1864c;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.C1894j;
import com.google.protobuf.C1895k;
import java.util.Objects;
import p191o6.EnumC3927l;
import p287x6.AbstractC4909i;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.k */
/* loaded from: classes-dex2jar.jar:o6/k.class */
public final class C3924k extends AbstractC1888i<C3924k, C3926b> implements AbstractC4918p {
    private static final C3924k DEFAULT_INSTANCE;
    private static volatile AbstractC4921s<C3924k> PARSER;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final AbstractC4909i<Integer, EnumC3927l> sessionVerbosity_converter_ = new C3925a();
    private int bitField0_;
    private String sessionId_ = "";
    private C1895k.AbstractC1898c sessionVerbosity_ = C1894j.f7089d;

    /* renamed from: o6.k$a */
    /* loaded from: classes-dex2jar.jar:o6/k$a.class */
    public class C3925a implements AbstractC4909i<Integer, EnumC3927l> {
    }

    /* renamed from: o6.k$b */
    /* loaded from: classes-dex2jar.jar:o6/k$b.class */
    public static final class C3926b extends AbstractC1888i.AbstractC1889a<C3924k, C3926b> implements AbstractC4918p {
        public C3926b() {
            super(C3924k.DEFAULT_INSTANCE);
        }

        public C3926b(C3925a c3925a) {
            super(C3924k.DEFAULT_INSTANCE);
        }
    }

    static {
        C3924k c3924k = new C3924k();
        DEFAULT_INSTANCE = c3924k;
        AbstractC1888i.m4285x(C3924k.class, c3924k);
    }

    /* renamed from: A */
    public static void m1629A(C3924k c3924k, EnumC3927l enumC3927l) {
        Objects.requireNonNull(c3924k);
        Objects.requireNonNull(enumC3927l);
        C1895k.AbstractC1898c abstractC1898c = c3924k.sessionVerbosity_;
        if (!((AbstractC1864c) abstractC1898c).f7039a) {
            C1894j c1894j = (C1894j) abstractC1898c;
            int i = c1894j.f7091c;
            c3924k.sessionVerbosity_ = c1894j.mo4205r(i == 0 ? 10 : i * 2);
        }
        ((C1894j) c3924k.sessionVerbosity_).m4273b(enumC3927l.f12415a);
    }

    /* renamed from: D */
    public static C3926b m1626D() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1624z(C3924k c3924k, String str) {
        Objects.requireNonNull(c3924k);
        Objects.requireNonNull(str);
        c3924k.bitField0_ |= 1;
        c3924k.sessionId_ = str;
    }

    /* renamed from: B */
    public EnumC3927l m1628B(int i) {
        AbstractC4909i<Integer, EnumC3927l> abstractC4909i = sessionVerbosity_converter_;
        C1894j c1894j = (C1894j) this.sessionVerbosity_;
        c1894j.m4272c(i);
        int i2 = c1894j.f7090b[i];
        Objects.requireNonNull((C3925a) abstractC4909i);
        EnumC3927l m1623a = EnumC3927l.m1623a(Integer.valueOf(i2).intValue());
        EnumC3927l enumC3927l = m1623a;
        if (m1623a == null) {
            enumC3927l = EnumC3927l.SESSION_VERBOSITY_NONE;
        }
        return enumC3927l;
    }

    /* renamed from: C */
    public int m1627C() {
        return ((C1894j) this.sessionVerbosity_).size();
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
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001e", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", EnumC3927l.C3928a.f12416a});
            case 3:
                return new C3924k();
            case 4:
                return new C3926b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3924k> abstractC4921s = PARSER;
                AbstractC4921s<C3924k> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3924k.class) {
                        try {
                            AbstractC4921s<C3924k> abstractC4921s3 = PARSER;
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
