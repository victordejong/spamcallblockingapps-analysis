package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.n */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/n.class */
public interface AbstractC27186n {

    /* renamed from: n3.y.b.a.q0.n$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/n$a.class */
    public static final class C27187a {

        /* renamed from: a */
        public final C27189o f76056a;

        /* renamed from: b */
        public final C27189o f76057b;

        public C27187a(C27189o c27189o) {
            this.f76056a = c27189o;
            this.f76057b = c27189o;
        }

        public C27187a(C27189o c27189o, C27189o c27189o2) {
            this.f76056a = c27189o;
            this.f76057b = c27189o2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C27187a.class != obj.getClass()) {
                return false;
            }
            C27187a c27187a = (C27187a) obj;
            if (!this.f76056a.equals(c27187a.f76056a) || !this.f76057b.equals(c27187a.f76057b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f76057b.hashCode() + (this.f76056a.hashCode() * 31);
        }

        public String toString() {
            String str;
            String valueOf = String.valueOf(this.f76056a);
            if (this.f76056a.equals(this.f76057b)) {
                str = "";
            } else {
                String valueOf2 = String.valueOf(this.f76057b);
                str = C22128a.m8674Q1(valueOf2.length() + 2, ", ", valueOf2);
            }
            StringBuilder sb = new StringBuilder(C22128a.m8623f2(str, valueOf.length() + 2));
            sb.append("[");
            sb.append(valueOf);
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: n3.y.b.a.q0.n$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/n$b.class */
    public static final class C27188b implements AbstractC27186n {

        /* renamed from: a */
        public final long f76058a;

        /* renamed from: b */
        public final C27187a f76059b;

        public C27188b(long j, long j2) {
            this.f76058a = j;
            this.f76059b = new C27187a(j2 == 0 ? C27189o.f76060c : new C27189o(0L, j2));
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: b */
        public C27187a mo602b(long j) {
            return this.f76059b;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: c */
        public boolean mo601c() {
            return false;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: g */
        public long mo599g() {
            return this.f76058a;
        }
    }

    /* renamed from: b */
    C27187a mo602b(long j);

    /* renamed from: c */
    boolean mo601c();

    /* renamed from: g */
    long mo599g();
}
