package p193e.p1545k.p1546a.p1556c;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23324o;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k.class */
public class C23733k extends C23379k {

    /* renamed from: b */
    public LinkedList<C23734a> f65777b;

    /* renamed from: c */
    public transient Closeable f65778c;

    /* renamed from: e.k.a.c.k$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/k$a.class */
    public static class C23734a implements Serializable {

        /* renamed from: a */
        public transient Object f65779a;

        /* renamed from: b */
        public String f65780b;

        /* renamed from: c */
        public int f65781c;

        /* renamed from: d */
        public String f65782d;

        public C23734a() {
            this.f65781c = -1;
        }

        public C23734a(Object obj, int i) {
            this.f65781c = -1;
            this.f65779a = obj;
            this.f65781c = i;
        }

        public C23734a(Object obj, String str) {
            this.f65781c = -1;
            this.f65779a = obj;
            Objects.requireNonNull(str, "Cannot pass null fieldName");
            this.f65780b = str;
        }

        /* renamed from: a */
        public String m6156a() {
            if (this.f65782d == null) {
                StringBuilder sb = new StringBuilder();
                Object obj = this.f65779a;
                if (obj != null) {
                    Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
                    int i = 0;
                    while (cls.isArray()) {
                        cls = cls.getComponentType();
                        i++;
                    }
                    sb.append(cls.getName());
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        sb.append("[]");
                    }
                } else {
                    sb.append("UNKNOWN");
                }
                sb.append('[');
                if (this.f65780b != null) {
                    sb.append('\"');
                    sb.append(this.f65780b);
                    sb.append('\"');
                } else {
                    int i2 = this.f65781c;
                    if (i2 >= 0) {
                        sb.append(i2);
                    } else {
                        sb.append('?');
                    }
                }
                sb.append(']');
                this.f65782d = sb.toString();
            }
            return this.f65782d;
        }

        public String toString() {
            return m6156a();
        }

        public Object writeReplace() {
            m6156a();
            return this;
        }
    }

    public C23733k(Closeable closeable, String str) {
        super(str);
        this.f65778c = closeable;
        if (closeable instanceof AbstractC23376j) {
            this.f64687a = ((AbstractC23376j) closeable).mo5806m1();
        }
    }

    public C23733k(Closeable closeable, String str, C23374h c23374h) {
        super(str, c23374h);
        this.f65778c = closeable;
    }

    public C23733k(Closeable closeable, String str, Throwable th) {
        super(str, th);
        this.f65778c = closeable;
        if (th instanceof C23379k) {
            this.f64687a = ((C23379k) th).f64687a;
        } else if (!(closeable instanceof AbstractC23376j)) {
        } else {
            this.f64687a = ((AbstractC23376j) closeable).mo5806m1();
        }
    }

    /* renamed from: e */
    public static C23733k m6162e(IOException iOException) {
        return new C23733k(null, String.format("Unexpected IOException (of type %s): %s", iOException.getClass().getName(), C23914g.m5757j(iOException)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0.isEmpty() != false) goto L9;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1545k.p1546a.p1556c.C23733k m6159h(java.lang.Throwable r6, p193e.p1545k.p1546a.p1556c.C23733k.C23734a r7) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof p193e.p1545k.p1546a.p1556c.C23733k
            if (r0 == 0) goto Lf
            r0 = r6
            e.k.a.c.k r0 = (p193e.p1545k.p1546a.p1556c.C23733k) r0
            r6 = r0
            goto L71
        Lf:
            r0 = r6
            java.lang.String r0 = p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5757j(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L21
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L3f
        L21:
            java.lang.String r0 = "(was "
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r9 = r0
            r0 = r9
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r0 = r0.toString()
            r9 = r0
        L3f:
            r0 = 0
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p1545k.p1546a.p1548b.C23379k
            if (r0 == 0) goto L66
            r0 = r6
            e.k.a.b.k r0 = (p193e.p1545k.p1546a.p1548b.C23379k) r0
            java.lang.Object r0 = r0.mo6164c()
            r11 = r0
            r0 = r10
            r8 = r0
            r0 = r11
            boolean r0 = r0 instanceof java.io.Closeable
            if (r0 == 0) goto L66
            r0 = r11
            java.io.Closeable r0 = (java.io.Closeable) r0
            r8 = r0
        L66:
            e.k.a.c.k r0 = new e.k.a.c.k
            r1 = r0
            r2 = r8
            r3 = r9
            r4 = r6
            r1.<init>(r2, r3, r4)
            r6 = r0
        L71:
            r0 = r6
            r1 = r7
            r0.m6161f(r1)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.C23733k.m6159h(java.lang.Throwable, e.k.a.c.k$a):e.k.a.c.k");
    }

    /* renamed from: i */
    public static C23733k m6158i(Throwable th, Object obj, int i) {
        return m6159h(th, new C23734a(obj, i));
    }

    /* renamed from: j */
    public static C23733k m6157j(Throwable th, Object obj, String str) {
        return m6159h(th, new C23734a(obj, str));
    }

    @Override // p193e.p1545k.p1546a.p1548b.C23379k
    @AbstractC23324o
    /* renamed from: c */
    public Object mo6164c() {
        return this.f65778c;
    }

    /* renamed from: d */
    public String m6163d() {
        String message = super.getMessage();
        if (this.f65777b == null) {
            return message;
        }
        StringBuilder sb = message == null ? new StringBuilder() : new StringBuilder(message);
        sb.append(" (through reference chain: ");
        LinkedList<C23734a> linkedList = this.f65777b;
        if (linkedList != null) {
            Iterator<C23734a> it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
                if (it.hasNext()) {
                    sb.append("->");
                }
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: f */
    public void m6161f(C23734a c23734a) {
        if (this.f65777b == null) {
            this.f65777b = new LinkedList<>();
        }
        if (this.f65777b.size() < 1000) {
            this.f65777b.addFirst(c23734a);
        }
    }

    /* renamed from: g */
    public void m6160g(Object obj, String str) {
        m6161f(new C23734a(obj, str));
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return m6163d();
    }

    @Override // p193e.p1545k.p1546a.p1548b.C23379k, java.lang.Throwable
    public String getMessage() {
        return m6163d();
    }

    @Override // p193e.p1545k.p1546a.p1548b.C23379k, java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
