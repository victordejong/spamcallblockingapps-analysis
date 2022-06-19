package p193e.p194a.p1011l.p1025p2;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.w.d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.o0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/o0.class */
public interface AbstractC17140o0 {

    /* renamed from: e.a.l.p2.o0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/o0$a.class */
    public static abstract class AbstractC17141a {

        /* renamed from: e.a.l.p2.o0$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/o0$a$a.class */
        public static final class C17142a extends AbstractC17141a {

            /* renamed from: a */
            public static final C17142a f48120a = new C17142a();

            public C17142a() {
                super(null);
            }
        }

        /* renamed from: e.a.l.p2.o0$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/o0$a$b.class */
        public static final class C17143b extends AbstractC17141a {

            /* renamed from: a */
            public final List<C17125k1> f48121a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C17143b(List<C17125k1> list) {
                super(null);
                l.e(list, "products");
                this.f48121a = list;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C17143b) && l.a(this.f48121a, ((C17143b) obj).f48121a);
                }
                return true;
            }

            public int hashCode() {
                List<C17125k1> list = this.f48121a;
                return list != null ? list.hashCode() : 0;
            }

            public String toString() {
                return C22128a.m8602l(C22128a.m8728C("Success(products="), this.f48121a, ")");
            }
        }

        /* renamed from: e.a.l.p2.o0$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/o0$a$c.class */
        public static final class C17144c extends AbstractC17141a {

            /* renamed from: a */
            public static final C17144c f48122a = new C17144c();

            public C17144c() {
                super(null);
            }
        }

        public AbstractC17141a() {
        }

        public AbstractC17141a(f fVar) {
        }
    }

    /* renamed from: a */
    Object mo16477a(String str, d<? super C17125k1> dVar);

    /* renamed from: b */
    Object mo16476b(d<? super AbstractC17141a> dVar);

    /* renamed from: c */
    void mo16475c();
}
