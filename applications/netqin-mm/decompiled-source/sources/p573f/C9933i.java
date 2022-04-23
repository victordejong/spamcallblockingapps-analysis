package p573f;

import p573f.p590w.p592c.C10057o;
/* renamed from: f.i */
/* loaded from: classes2-dex2jar.jar:f/i.class */
public final class C9933i implements Comparable<C9933i> {

    /* renamed from: a */
    public final int f37127a;

    /* renamed from: f.i$a */
    /* loaded from: classes2-dex2jar.jar:f/i$a.class */
    public static final class C9934a {
        public C9934a() {
        }

        public /* synthetic */ C9934a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9934a(null);
    }

    public /* synthetic */ C9933i(int i) {
        this.f37127a = i;
    }

    /* renamed from: a */
    public static boolean m1766a(int i, Object obj) {
        if (!(obj instanceof C9933i)) {
            return false;
        }
        return i == ((C9933i) obj).m1768a();
    }

    /* renamed from: b */
    public static final /* synthetic */ C9933i m1765b(int i) {
        return new C9933i(i);
    }

    /* renamed from: c */
    public static int m1764c(int i) {
        return i;
    }

    /* renamed from: d */
    public static int m1763d(int i) {
        return i;
    }

    /* renamed from: e */
    public static String m1762e(int i) {
        return String.valueOf(i & 4294967295L);
    }

    /* renamed from: a */
    public final /* synthetic */ int m1768a() {
        return this.f37127a;
    }

    /* renamed from: a */
    public final int m1767a(int i) {
        throw null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(C9933i iVar) {
        m1767a(iVar.m1768a());
        throw null;
    }

    public boolean equals(Object obj) {
        return m1766a(this.f37127a, obj);
    }

    public int hashCode() {
        int i = this.f37127a;
        m1763d(i);
        return i;
    }

    public String toString() {
        return m1762e(this.f37127a);
    }
}
