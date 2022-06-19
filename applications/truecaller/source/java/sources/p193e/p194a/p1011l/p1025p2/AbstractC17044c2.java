package p193e.p194a.p1011l.p1025p2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.c2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/c2.class */
public abstract class AbstractC17044c2<T> {

    /* renamed from: e.a.l.p2.c2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/c2$a.class */
    public static final class C17045a extends AbstractC17044c2 {

        /* renamed from: a */
        public static final C17045a f47803a = new C17045a();

        public C17045a() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.c2$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/c2$b.class */
    public static final class C17046b extends AbstractC17044c2 {

        /* renamed from: a */
        public static final C17046b f47804a = new C17046b();

        public C17046b() {
            super(null);
        }
    }

    /* renamed from: e.a.l.p2.c2$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/c2$c.class */
    public static final class C17047c<T> extends AbstractC17044c2<T> {

        /* renamed from: a */
        public final T f47805a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17047c(T t) {
            super(null);
            l.e(t, RemoteMessageConst.DATA);
            this.f47805a = t;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17047c) && l.a(this.f47805a, ((C17047c) obj).f47805a);
            }
            return true;
        }

        public int hashCode() {
            T t = this.f47805a;
            return t != null ? t.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8634d(C22128a.m8728C("Success(data="), this.f47805a, ")");
        }
    }

    public AbstractC17044c2() {
    }

    public AbstractC17044c2(f fVar) {
    }
}
