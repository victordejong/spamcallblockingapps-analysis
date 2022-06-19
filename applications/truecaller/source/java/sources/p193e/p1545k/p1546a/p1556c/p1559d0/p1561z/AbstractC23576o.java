package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23365p;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23617c;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/o.class */
public abstract class AbstractC23576o<T> extends AbstractC23552e0<T> {

    /* renamed from: d */
    public static final /* synthetic */ int f65407d = 0;

    /* renamed from: e.k.a.c.d0.z.o$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/o$a.class */
    public static class C23577a extends AbstractC23576o<Object> {

        /* renamed from: e */
        public final int f65408e;

        public C23577a(Class<?> cls, int i) {
            super(cls);
            this.f65408e = i;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
            int i = this.f65408e;
            if (i != 3) {
                if (i == 8) {
                    return Locale.ROOT;
                }
                return null;
            }
            return URI.create("");
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o
        /* renamed from: m0 */
        public Object mo6553m0(String str, AbstractC23632g abstractC23632g) throws IOException {
            switch (this.f65408e) {
                case 1:
                    return new File(str);
                case 2:
                    return new URL(str);
                case 3:
                    return URI.create(str);
                case 4:
                    try {
                        return abstractC23632g.mo6470i().m5903m(str);
                    } catch (Exception e) {
                        abstractC23632g.m6502D(this.f65309a, str, C23914g.m5748s(e));
                        throw null;
                    }
                case 5:
                    return abstractC23632g.mo6470i().m5908h(str);
                case 6:
                    return Currency.getInstance(str);
                case 7:
                    return Pattern.compile(str);
                case 8:
                    int m6554q0 = m6554q0(str);
                    if (m6554q0 < 0) {
                        return new Locale(str);
                    }
                    String substring = str.substring(0, m6554q0);
                    String substring2 = str.substring(m6554q0 + 1);
                    int m6554q02 = m6554q0(substring2);
                    return m6554q02 < 0 ? new Locale(substring, substring2) : new Locale(substring, substring2.substring(0, m6554q02), substring2.substring(m6554q02 + 1));
                case 9:
                    return Charset.forName(str);
                case 10:
                    return TimeZone.getTimeZone(str);
                case 11:
                    return InetAddress.getByName(str);
                case 12:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf == -1) {
                            throw new C23617c(abstractC23632g.f65505g, "Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                        }
                        int indexOf = str.indexOf(58, lastIndexOf);
                        return new InetSocketAddress(str.substring(0, lastIndexOf + 1), indexOf > -1 ? Integer.parseInt(str.substring(indexOf + 1)) : 0);
                    }
                    int indexOf2 = str.indexOf(58);
                    if (indexOf2 >= 0) {
                        int i = indexOf2 + 1;
                        if (str.indexOf(58, i) < 0) {
                            return new InetSocketAddress(str.substring(0, indexOf2), Integer.parseInt(str.substring(i)));
                        }
                    }
                    return new InetSocketAddress(str, 0);
                default:
                    C23365p.m7220a();
                    throw null;
            }
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o
        /* renamed from: o0 */
        public Object mo6555o0(AbstractC23632g abstractC23632g) throws IOException {
            return mo6226j(abstractC23632g);
        }

        /* renamed from: q0 */
        public int m6554q0(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '_' || charAt == '-') {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: e.k.a.c.d0.z.o$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/o$b.class */
    public static class C23578b extends AbstractC23576o<Object> {
        public C23578b() {
            super(StringBuilder.class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            String mo7001F1 = abstractC23376j.mo7001F1();
            return mo7001F1 != null ? new StringBuilder(mo7001F1) : AbstractC23576o.super.mo6232d(abstractC23376j, abstractC23632g);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: j */
        public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
            return new StringBuilder();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o
        /* renamed from: m0 */
        public Object mo6553m0(String str, AbstractC23632g abstractC23632g) throws IOException {
            return new StringBuilder(str);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23576o, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public EnumC23876f mo6221o() {
            return EnumC23876f.Textual;
        }
    }

    public AbstractC23576o(Class<?> cls) {
        super(cls);
    }

    /* renamed from: p0 */
    public static AbstractC23576o<?> m6556p0(Class<?> cls) {
        int i;
        if (cls == File.class) {
            i = 1;
        } else if (cls == URL.class) {
            i = 2;
        } else if (cls == URI.class) {
            i = 3;
        } else if (cls == Class.class) {
            i = 4;
        } else if (cls == AbstractC23698i.class) {
            i = 5;
        } else if (cls == Currency.class) {
            i = 6;
        } else if (cls == Pattern.class) {
            i = 7;
        } else if (cls == Locale.class) {
            i = 8;
        } else if (cls == Charset.class) {
            i = 9;
        } else if (cls == TimeZone.class) {
            i = 10;
        } else if (cls == InetAddress.class) {
            i = 11;
        } else if (cls != InetSocketAddress.class) {
            if (cls != StringBuilder.class) {
                return null;
            }
            return new C23578b();
        } else {
            i = 12;
        }
        return new C23577a(cls, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public T mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        T t;
        String mo7001F1 = abstractC23376j.mo7001F1();
        if (mo7001F1 == null) {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            if (mo7142l == EnumC23381m.START_OBJECT) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            }
            if (mo7142l == EnumC23381m.START_ARRAY) {
                t = mo6676A(abstractC23376j, abstractC23632g);
            } else if (mo7142l != EnumC23381m.VALUE_EMBEDDED_OBJECT) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else {
                Object mo5803p0 = abstractC23376j.mo5803p0();
                if (mo5803p0 == null) {
                    t = null;
                } else {
                    boolean isAssignableFrom = this.f65309a.isAssignableFrom(mo5803p0.getClass());
                    t = mo5803p0;
                    if (!isAssignableFrom) {
                        t = mo6557n0(mo5803p0, abstractC23632g);
                    }
                }
            }
            return t;
        }
        if (!mo7001F1.isEmpty()) {
            String trim = mo7001F1.trim();
            if (!trim.isEmpty()) {
                try {
                    return mo6553m0(trim, abstractC23632g);
                } catch (IllegalArgumentException | MalformedURLException e) {
                    String str = "not a valid textual representation";
                    String message = e.getMessage();
                    if (message != null) {
                        str = C22128a.m8725C2("not a valid textual representation", ", problem: ", message);
                    }
                    C23733k m6469i0 = abstractC23632g.m6469i0(trim, this.f65309a, str);
                    m6469i0.initCause(e);
                    throw m6469i0;
                }
            }
        }
        EnumC23446b m6463q = abstractC23632g.m6463q(mo6221o(), this.f65309a, EnumC23448d.EmptyString);
        if (m6463q != EnumC23446b.Fail) {
            return m6463q == EnumC23446b.AsNull ? null : m6463q == EnumC23446b.AsEmpty ? mo6226j(abstractC23632g) : mo6555o0(abstractC23632g);
        }
        abstractC23632g.m6479a0(this, "Cannot coerce empty String (\"\") to %s (but could if enabling coercion using `CoercionConfig`)", m6633z());
        throw null;
    }

    /* renamed from: m0 */
    public abstract T mo6553m0(String str, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: n0 */
    public T mo6557n0(Object obj, AbstractC23632g abstractC23632g) throws IOException {
        abstractC23632g.m6479a0(this, "Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this.f65309a.getName());
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.OtherScalar;
    }

    /* renamed from: o0 */
    public Object mo6555o0(AbstractC23632g abstractC23632g) throws IOException {
        return null;
    }
}
