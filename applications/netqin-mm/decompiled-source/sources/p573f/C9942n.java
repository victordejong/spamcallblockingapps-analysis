package p573f;

import p573f.p590w.p592c.C10057o;
/* renamed from: f.n */
/* loaded from: classes2-dex2jar.jar:f/n.class */
public final class C9942n implements Comparable<C9942n> {

    /* renamed from: a */
    public final short f37134a;

    /* renamed from: f.n$a */
    /* loaded from: classes2-dex2jar.jar:f/n$a.class */
    public static final class C9943a {
        public C9943a() {
        }

        public /* synthetic */ C9943a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9943a(null);
    }

    public /* synthetic */ C9942n(short s) {
        this.f37134a = s;
    }

    /* renamed from: a */
    public static boolean m1750a(short s, Object obj) {
        if (!(obj instanceof C9942n)) {
            return false;
        }
        return s == ((C9942n) obj).m1752a();
    }

    /* renamed from: b */
    public static final /* synthetic */ C9942n m1749b(short s) {
        return new C9942n(s);
    }

    /* renamed from: c */
    public static short m1748c(short s) {
        return s;
    }

    /* renamed from: d */
    public static int m1747d(short s) {
        return s;
    }

    /* renamed from: e */
    public static String m1746e(short s) {
        return String.valueOf(s & 65535);
    }

    /* renamed from: a */
    public final int m1751a(short s) {
        throw null;
    }

    /* renamed from: a */
    public final /* synthetic */ short m1752a() {
        return this.f37134a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(C9942n nVar) {
        m1751a(nVar.m1752a());
        throw null;
    }

    public boolean equals(Object obj) {
        return m1750a(this.f37134a, obj);
    }

    public int hashCode() {
        short s = this.f37134a;
        m1747d(s);
        return s;
    }

    public String toString() {
        return m1746e(this.f37134a);
    }
}
