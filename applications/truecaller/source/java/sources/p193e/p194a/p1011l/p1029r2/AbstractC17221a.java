package p193e.p194a.p1011l.p1029r2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.r2.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/r2/a.class */
public abstract class AbstractC17221a<T> {

    /* renamed from: e.a.l.r2.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/r2/a$a.class */
    public static final class C17222a extends AbstractC17221a {

        /* renamed from: a */
        public final int f48345a;

        public C17222a(int i) {
            super(null);
            this.f48345a = i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17222a) && this.f48345a == ((C17222a) obj).f48345a;
            }
            return true;
        }

        public int hashCode() {
            return this.f48345a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("HttpError(code="), this.f48345a, ")");
        }
    }

    /* renamed from: e.a.l.r2.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/r2/a$b.class */
    public static final class C17223b extends AbstractC17221a {

        /* renamed from: a */
        public static final C17223b f48346a = new C17223b();

        public C17223b() {
            super(null);
        }
    }

    /* renamed from: e.a.l.r2.a$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/r2/a$c.class */
    public static final class C17224c<T> extends AbstractC17221a<T> {

        /* renamed from: a */
        public final T f48347a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17224c(T t) {
            super(null);
            l.e(t, RemoteMessageConst.DATA);
            this.f48347a = t;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17224c) && l.a(this.f48347a, ((C17224c) obj).f48347a);
            }
            return true;
        }

        public int hashCode() {
            T t = this.f48347a;
            return t != null ? t.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8634d(C22128a.m8728C("Success(data="), this.f48347a, ")");
        }
    }

    /* renamed from: e.a.l.r2.a$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/r2/a$d.class */
    public static final class C17225d extends AbstractC17221a {

        /* renamed from: a */
        public static final C17225d f48348a = new C17225d();

        public C17225d() {
            super(null);
        }
    }

    public AbstractC17221a() {
    }

    public AbstractC17221a(f fVar) {
    }
}
