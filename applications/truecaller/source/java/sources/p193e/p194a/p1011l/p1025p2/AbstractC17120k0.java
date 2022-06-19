package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.w.d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.k0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/k0.class */
public interface AbstractC17120k0 {

    /* renamed from: e.a.l.p2.k0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/k0$a.class */
    public static abstract class AbstractC17121a {

        /* renamed from: e.a.l.p2.k0$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/k0$a$a.class */
        public static final class C17122a extends AbstractC17121a {

            /* renamed from: a */
            public static final C17122a f48056a = new C17122a();

            public C17122a() {
                super(null);
            }
        }

        /* renamed from: e.a.l.p2.k0$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/k0$a$b.class */
        public static final class C17123b extends AbstractC17121a {

            /* renamed from: a */
            public final C17130l1 f48057a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C17123b(C17130l1 c17130l1) {
                super(null);
                l.e(c17130l1, "productIds");
                this.f48057a = c17130l1;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C17123b) && l.a(this.f48057a, ((C17123b) obj).f48057a);
                }
                return true;
            }

            public int hashCode() {
                C17130l1 c17130l1 = this.f48057a;
                return c17130l1 != null ? c17130l1.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Success(productIds=");
                m8728C.append(this.f48057a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.l.p2.k0$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/k0$a$c.class */
        public static final class C17124c extends AbstractC17121a {

            /* renamed from: a */
            public static final C17124c f48058a = new C17124c();

            public C17124c() {
                super(null);
            }
        }

        public AbstractC17121a() {
        }

        public AbstractC17121a(f fVar) {
        }
    }

    /* renamed from: a */
    Object mo16502a(String str, d<? super C17125k1> dVar);

    /* renamed from: b */
    Object mo16501b(boolean z, boolean z2, boolean z3, d<? super AbstractC17121a> dVar);
}
