package p193e.p194a.p1146q2.p1152w0.p1153h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.q2.w0.h.n */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/n.class */
public abstract class AbstractC19577n {

    /* renamed from: e.a.q2.w0.h.n$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/n$a.class */
    public static final class C19578a extends AbstractC19577n {

        /* renamed from: a */
        public static final C19578a f54422a = new C19578a();

        public C19578a() {
            super(null);
        }
    }

    /* renamed from: e.a.q2.w0.h.n$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/n$b.class */
    public static final class C19579b extends AbstractC19577n {

        /* renamed from: a */
        public final String f54423a;

        /* renamed from: b */
        public final String f54424b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19579b(String str, String str2) {
            super(null);
            l.e(str, "number");
            l.e(str2, "countryIsoCode");
            this.f54423a = str;
            this.f54424b = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19579b)) {
                    return false;
                }
                C19579b c19579b = (C19579b) obj;
                return l.a(this.f54423a, c19579b.f54423a) && l.a(this.f54424b, c19579b.f54424b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f54423a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f54424b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Successful(number=");
            m8728C.append(this.f54423a);
            m8728C.append(", countryIsoCode=");
            return C22128a.m8618h(m8728C, this.f54424b, ")");
        }
    }

    public AbstractC19577n() {
    }

    public AbstractC19577n(f fVar) {
    }
}
