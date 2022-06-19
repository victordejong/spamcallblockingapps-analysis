package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23920j;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.c0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0.class */
public class C23543c0 extends AbstractC23940o implements Serializable {

    /* renamed from: a */
    public final int f65311a;

    /* renamed from: b */
    public final Class<?> f65312b;

    /* renamed from: c */
    public final AbstractC23576o<?> f65313c;

    /* renamed from: e.k.a.c.d0.z.c0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0$a.class */
    public static final class C23544a extends AbstractC23940o implements Serializable {

        /* renamed from: a */
        public final Class<?> f65314a;

        /* renamed from: b */
        public final AbstractC23700j<?> f65315b;

        public C23544a(Class<?> cls, AbstractC23700j<?> abstractC23700j) {
            this.f65314a = cls;
            this.f65315b = abstractC23700j;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23940o
        /* renamed from: a */
        public final Object mo5684a(String str, AbstractC23632g abstractC23632g) throws IOException {
            if (str == null) {
                return null;
            }
            C23893a0 c23893a0 = new C23893a0(abstractC23632g.f65505g, abstractC23632g);
            c23893a0.mo5868T1(str);
            try {
                AbstractC23376j m5835x2 = c23893a0.m5835x2();
                m5835x2.mo5811i2();
                Object mo6232d = this.f65315b.mo6232d(m5835x2, abstractC23632g);
                if (mo6232d != null) {
                    return mo6232d;
                }
                abstractC23632g.m6494L(this.f65314a, str, "not a valid representation", new Object[0]);
                throw null;
            } catch (Exception e) {
                abstractC23632g.m6494L(this.f65314a, str, "not a valid representation: %s", e.getMessage());
                throw null;
            }
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.c0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0$b.class */
    public static final class C23545b extends C23543c0 {

        /* renamed from: d */
        public final C23920j f65316d;

        /* renamed from: e */
        public final C23664j f65317e;

        /* renamed from: f */
        public C23920j f65318f;

        /* renamed from: g */
        public final Enum<?> f65319g;

        public C23545b(C23920j c23920j, C23664j c23664j) {
            super(-1, c23920j.f66170a);
            this.f65316d = c23920j;
            this.f65317e = c23664j;
            this.f65319g = c23920j.f66173d;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23543c0
        /* renamed from: b */
        public Object mo6631b(String str, AbstractC23632g abstractC23632g) throws IOException {
            C23920j c23920j;
            C23664j c23664j = this.f65317e;
            if (c23664j != null) {
                try {
                    return c23664j.mo6370o(str);
                } catch (Exception e) {
                    Throwable m5748s = C23914g.m5748s(e);
                    String message = m5748s.getMessage();
                    C23914g.m5770K(m5748s);
                    C23914g.m5772I(m5748s);
                    throw new IllegalArgumentException(message, m5748s);
                }
            }
            if (abstractC23632g.m6488R(EnumC23694h.READ_ENUMS_USING_TO_STRING)) {
                C23920j c23920j2 = this.f65318f;
                c23920j = c23920j2;
                if (c23920j2 == null) {
                    synchronized (this) {
                        c23920j = C23920j.m5732d(abstractC23632g.f65501c, this.f65316d.f66170a);
                        this.f65318f = c23920j;
                    }
                }
            } else {
                c23920j = this.f65316d;
            }
            Enum<?> r0 = c23920j.f66172c.get(str);
            Enum<?> r12 = r0;
            if (r0 == null) {
                r12 = r0;
                if (c23920j.f66174e) {
                    Iterator<Map.Entry<String, Enum<?>>> it = c23920j.f66172c.entrySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            r12 = null;
                            break;
                        }
                        Map.Entry<String, Enum<?>> next = it.next();
                        if (str.equalsIgnoreCase(next.getKey())) {
                            r12 = next.getValue();
                            break;
                        }
                    }
                }
            }
            Enum<?> r14 = r12;
            if (r12 == null) {
                if (this.f65319g != null && abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                    r14 = this.f65319g;
                } else if (!abstractC23632g.m6488R(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                    abstractC23632g.m6494L(this.f65312b, str, "not one of the values accepted for Enum class: %s", c23920j.f66172c.keySet());
                    throw null;
                } else {
                    r14 = r12;
                }
            }
            return r14;
        }
    }

    /* renamed from: e.k.a.c.d0.z.c0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0$c.class */
    public static final class C23546c extends C23543c0 {

        /* renamed from: d */
        public final Constructor<?> f65320d;

        public C23546c(Constructor<?> constructor) {
            super(-1, constructor.getDeclaringClass());
            this.f65320d = constructor;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23543c0
        /* renamed from: b */
        public Object mo6631b(String str, AbstractC23632g abstractC23632g) throws Exception {
            return this.f65320d.newInstance(str);
        }
    }

    /* renamed from: e.k.a.c.d0.z.c0$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0$d.class */
    public static final class C23547d extends C23543c0 {

        /* renamed from: d */
        public final Method f65321d;

        public C23547d(Method method) {
            super(-1, method.getDeclaringClass());
            this.f65321d = method;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23543c0
        /* renamed from: b */
        public Object mo6631b(String str, AbstractC23632g abstractC23632g) throws Exception {
            return this.f65321d.invoke(null, str);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.c0$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c0$e.class */
    public static final class C23548e extends C23543c0 {

        /* renamed from: d */
        public static final C23548e f65322d = new C23548e(String.class);

        /* renamed from: e */
        public static final C23548e f65323e = new C23548e(Object.class);

        public C23548e(Class<?> cls) {
            super(-1, cls);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23543c0, p193e.p1545k.p1546a.p1556c.AbstractC23940o
        /* renamed from: a */
        public Object mo5684a(String str, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            return str;
        }
    }

    public C23543c0(int i, Class<?> cls) {
        this.f65311a = i;
        this.f65312b = cls;
        this.f65313c = null;
    }

    public C23543c0(int i, Class<?> cls, AbstractC23576o<?> abstractC23576o) {
        this.f65311a = i;
        this.f65312b = cls;
        this.f65313c = abstractC23576o;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23940o
    /* renamed from: a */
    public Object mo5684a(String str, AbstractC23632g abstractC23632g) throws IOException {
        if (str == null) {
            return null;
        }
        try {
            Object mo6631b = mo6631b(str, abstractC23632g);
            if (mo6631b != null) {
                return mo6631b;
            }
            if (C23914g.m5744w(this.f65312b) && abstractC23632g.f65501c.m6515y(EnumC23694h.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            abstractC23632g.m6494L(this.f65312b, str, "not a valid representation", new Object[0]);
            throw null;
        } catch (Exception e) {
            abstractC23632g.m6494L(this.f65312b, str, "not a valid representation, problem: (%s) %s", e.getClass().getName(), C23914g.m5757j(e));
            throw null;
        }
    }

    /* renamed from: b */
    public Object mo6631b(String str, AbstractC23632g abstractC23632g) throws Exception {
        switch (this.f65311a) {
            case 1:
                if ("true".equals(str)) {
                    return Boolean.TRUE;
                }
                if ("false".equals(str)) {
                    return Boolean.FALSE;
                }
                abstractC23632g.m6494L(this.f65312b, str, "value not 'true' or 'false'", new Object[0]);
                throw null;
            case 2:
                int parseInt = Integer.parseInt(str);
                if (parseInt >= -128 && parseInt <= 255) {
                    return Byte.valueOf((byte) parseInt);
                }
                abstractC23632g.m6494L(this.f65312b, str, "overflow, value cannot be represented as 8-bit value", new Object[0]);
                throw null;
            case 3:
                int parseInt2 = Integer.parseInt(str);
                if (parseInt2 >= -32768 && parseInt2 <= 32767) {
                    return Short.valueOf((short) parseInt2);
                }
                abstractC23632g.m6494L(this.f65312b, str, "overflow, value cannot be represented as 16-bit value", new Object[0]);
                throw null;
            case 4:
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                abstractC23632g.m6494L(this.f65312b, str, "can only convert 1-character Strings", new Object[0]);
                throw null;
            case 5:
                return Integer.valueOf(Integer.parseInt(str));
            case 6:
                return Long.valueOf(Long.parseLong(str));
            case 7:
                return Float.valueOf((float) C23400f.m7118e(str));
            case 8:
                return Double.valueOf(C23400f.m7118e(str));
            case 9:
                try {
                    return this.f65313c.mo6553m0(str, abstractC23632g);
                } catch (IllegalArgumentException e) {
                    m6632c(abstractC23632g, str, e);
                    throw null;
                }
            case 10:
                return abstractC23632g.m6484V(str);
            case 11:
                Date m6484V = abstractC23632g.m6484V(str);
                Calendar calendar = Calendar.getInstance(abstractC23632g.m6504B());
                calendar.setTime(m6484V);
                return calendar;
            case 12:
                try {
                    return UUID.fromString(str);
                } catch (Exception e2) {
                    m6632c(abstractC23632g, str, e2);
                    throw null;
                }
            case 13:
                try {
                    return URI.create(str);
                } catch (Exception e3) {
                    m6632c(abstractC23632g, str, e3);
                    throw null;
                }
            case 14:
                try {
                    return new URL(str);
                } catch (MalformedURLException e4) {
                    m6632c(abstractC23632g, str, e4);
                    throw null;
                }
            case 15:
                try {
                    return abstractC23632g.mo6470i().m5903m(str);
                } catch (Exception e5) {
                    abstractC23632g.m6494L(this.f65312b, str, "unable to parse key as Class", new Object[0]);
                    throw null;
                }
            case 16:
                try {
                    return this.f65313c.mo6553m0(str, abstractC23632g);
                } catch (IllegalArgumentException e6) {
                    m6632c(abstractC23632g, str, e6);
                    throw null;
                }
            case 17:
                try {
                    C23344a c23344a = abstractC23632g.f65501c.f65071b.f65032k;
                    Objects.requireNonNull(c23344a);
                    C23348c c23348c = new C23348c((C23346a) null, 500);
                    c23344a.m7265d(str, c23348c);
                    return c23348c.m7247q();
                } catch (IllegalArgumentException e7) {
                    m6632c(abstractC23632g, str, e7);
                    throw null;
                }
            default:
                StringBuilder m8728C = C22128a.m8728C("Internal error: unknown key type ");
                m8728C.append(this.f65312b);
                throw new IllegalStateException(m8728C.toString());
        }
    }

    /* renamed from: c */
    public Object m6632c(AbstractC23632g abstractC23632g, String str, Exception exc) throws IOException {
        abstractC23632g.m6494L(this.f65312b, str, "problem: %s", C23914g.m5757j(exc));
        throw null;
    }
}
