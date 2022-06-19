package p193e.p194a.p294b.p295a.p296a.p301b.p303d;

import com.truecaller.bizmon.newBusiness.data.BusinessAPIErrorResponse;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.b.d.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a.class */
public abstract class AbstractC7602a<T> {

    /* renamed from: e.a.b.a.a.b.d.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$a.class */
    public static final class C7603a<T> extends AbstractC7602a<T> {
        public C7603a() {
            super(null);
        }
    }

    /* renamed from: e.a.b.a.a.b.d.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b.class */
    public static abstract class AbstractC7604b<T> extends AbstractC7602a<T> {

        /* renamed from: e.a.b.a.a.b.d.a$b$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$a.class */
        public static final class C7605a<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23944a;

            public C7605a(int i) {
                super(null);
                this.f23944a = i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C7605a) && this.f23944a == ((C7605a) obj).f23944a;
                }
                return true;
            }

            public int hashCode() {
                return this.f23944a;
            }

            public String toString() {
                return C22128a.m8697J2(C22128a.m8728C("BadRequest(errorCode="), this.f23944a, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$b */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$b.class */
        public static final class C7606b<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23945a;

            public C7606b(int i) {
                super(null);
                this.f23945a = i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C7606b) && this.f23945a == ((C7606b) obj).f23945a;
                }
                return true;
            }

            public int hashCode() {
                return this.f23945a;
            }

            public String toString() {
                return C22128a.m8697J2(C22128a.m8728C("Forbidden(errorCode="), this.f23945a, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$c */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$c.class */
        public static final class C7607c<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23946a;

            public C7607c(int i) {
                super(null);
                this.f23946a = i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C7607c) && this.f23946a == ((C7607c) obj).f23946a;
                }
                return true;
            }

            public int hashCode() {
                return this.f23946a;
            }

            public String toString() {
                return C22128a.m8697J2(C22128a.m8728C("InternalError(errorCode="), this.f23946a, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$d */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$d.class */
        public static final class C7608d<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23947a;

            public C7608d(int i) {
                super(null);
                this.f23947a = i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C7608d) && this.f23947a == ((C7608d) obj).f23947a;
                }
                return true;
            }

            public int hashCode() {
                return this.f23947a;
            }

            public String toString() {
                return C22128a.m8697J2(C22128a.m8728C("NoInternetConnection(errorCode="), this.f23947a, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$e */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$e.class */
        public static final class C7609e<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23948a;

            public C7609e(int i) {
                super(null);
                this.f23948a = i;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C7609e) && this.f23948a == ((C7609e) obj).f23948a;
                }
                return true;
            }

            public int hashCode() {
                return this.f23948a;
            }

            public String toString() {
                return C22128a.m8697J2(C22128a.m8728C("NotFound(errorCode="), this.f23948a, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$f */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$f.class */
        public static final class C7610f<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23949a;

            /* renamed from: b */
            public final String f23950b;

            public C7610f(int i, String str) {
                super(null);
                this.f23949a = i;
                this.f23950b = str;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C7610f)) {
                        return false;
                    }
                    C7610f c7610f = (C7610f) obj;
                    return this.f23949a == c7610f.f23949a && l.a(this.f23950b, c7610f.f23950b);
                }
                return true;
            }

            public int hashCode() {
                int i = this.f23949a;
                String str = this.f23950b;
                return (i * 31) + (str != null ? str.hashCode() : 0);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Unknown(errorCode=");
                m8728C.append(this.f23949a);
                m8728C.append(", errorMsg=");
                return C22128a.m8618h(m8728C, this.f23950b, ")");
            }
        }

        /* renamed from: e.a.b.a.a.b.d.a$b$g */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$b$g.class */
        public static final class C7611g<T> extends AbstractC7604b<T> {

            /* renamed from: a */
            public final int f23951a;

            /* renamed from: b */
            public final BusinessAPIErrorResponse f23952b;

            public C7611g(int i, BusinessAPIErrorResponse businessAPIErrorResponse) {
                super(null);
                this.f23951a = i;
                this.f23952b = businessAPIErrorResponse;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C7611g)) {
                        return false;
                    }
                    C7611g c7611g = (C7611g) obj;
                    return this.f23951a == c7611g.f23951a && l.a(this.f23952b, c7611g.f23952b);
                }
                return true;
            }

            public int hashCode() {
                int i = this.f23951a;
                BusinessAPIErrorResponse businessAPIErrorResponse = this.f23952b;
                return (i * 31) + (businessAPIErrorResponse != null ? businessAPIErrorResponse.hashCode() : 0);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("UnprocessableEntity(errorCode=");
                m8728C.append(this.f23951a);
                m8728C.append(", error=");
                m8728C.append(this.f23952b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC7604b() {
            super(null);
        }

        public AbstractC7604b(f fVar) {
            super(null);
        }
    }

    /* renamed from: e.a.b.a.a.b.d.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/a$c.class */
    public static final class C7612c<T> extends AbstractC7602a<T> {

        /* renamed from: a */
        public final T f23953a;

        public C7612c(T t) {
            super(null);
            this.f23953a = t;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C7612c) && l.a(this.f23953a, ((C7612c) obj).f23953a);
            }
            return true;
        }

        public int hashCode() {
            T t = this.f23953a;
            return t != null ? t.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8634d(C22128a.m8728C("Success(body="), this.f23953a, ")");
        }
    }

    public AbstractC7602a() {
    }

    public AbstractC7602a(f fVar) {
    }
}
