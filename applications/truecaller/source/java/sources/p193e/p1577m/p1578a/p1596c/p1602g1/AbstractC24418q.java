package p193e.p1577m.p1578a.p1596c.p1602g1;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.g1.q */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/q.class */
public interface AbstractC24418q {

    /* renamed from: e.m.a.c.g1.q$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/q$a.class */
    public static final class C24419a {

        /* renamed from: a */
        public final C24421r f68117a;

        /* renamed from: b */
        public final C24421r f68118b;

        public C24419a(C24421r c24421r) {
            this.f68117a = c24421r;
            this.f68118b = c24421r;
        }

        public C24419a(C24421r c24421r, C24421r c24421r2) {
            this.f68117a = c24421r;
            this.f68118b = c24421r2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C24419a.class != obj.getClass()) {
                return false;
            }
            C24419a c24419a = (C24419a) obj;
            if (!this.f68117a.equals(c24419a.f68117a) || !this.f68118b.equals(c24419a.f68118b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f68118b.hashCode() + (this.f68117a.hashCode() * 31);
        }

        public String toString() {
            String str;
            StringBuilder m8728C = C22128a.m8728C("[");
            m8728C.append(this.f68117a);
            if (this.f68117a.equals(this.f68118b)) {
                str = "";
            } else {
                StringBuilder m8728C2 = C22128a.m8728C(", ");
                m8728C2.append(this.f68118b);
                str = m8728C2.toString();
            }
            return C22128a.m8618h(m8728C, str, "]");
        }
    }

    /* renamed from: e.m.a.c.g1.q$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/q$b.class */
    public static class C24420b implements AbstractC24418q {

        /* renamed from: a */
        public final long f68119a;

        /* renamed from: b */
        public final C24419a f68120b;

        public C24420b(long j, long j2) {
            this.f68119a = j;
            this.f68120b = new C24419a(j2 == 0 ? C24421r.f68121c : new C24421r(0L, j2));
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: b */
        public C24419a mo5144b(long j) {
            return this.f68120b;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: c */
        public boolean mo5143c() {
            return false;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: g */
        public long mo5142g() {
            return this.f68119a;
        }
    }

    /* renamed from: b */
    C24419a mo5144b(long j);

    /* renamed from: c */
    boolean mo5143c();

    /* renamed from: g */
    long mo5142g();
}
