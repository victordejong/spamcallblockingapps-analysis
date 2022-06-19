package p193e.p194a.p1315v4.p1321s0.p1323l.p1324e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.v4.s0.l.e.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a.class */
public abstract class AbstractC21104a<T> {

    /* renamed from: e.a.v4.s0.l.e.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a.class */
    public static abstract class AbstractC21105a<T> extends AbstractC21104a<T> {

        /* renamed from: a */
        public final AbstractC21115b f59240a;

        /* renamed from: e.a.v4.s0.l.e.a$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$a.class */
        public static final class C21106a<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59241b;

            public C21106a() {
                this(null, 1);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public C21106a(p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b r6, int r7) {
                /*
                    r5 = this;
                    r0 = r7
                    r1 = 1
                    r0 = r0 & r1
                    if (r0 == 0) goto L15
                    e.a.v4.s0.l.e.b.a r0 = new e.a.v4.s0.l.e.b.a
                    r1 = r0
                    r2 = -2
                    java.lang.String r3 = ""
                    r1.<init>(r2, r3)
                    r6 = r0
                    goto L17
                L15:
                    r0 = 0
                    r6 = r0
                L17:
                    r0 = r6
                    java.lang.String r1 = "error"
                    s1.z.c.l.e(r0, r1)
                    r0 = r5
                    r1 = r6
                    r2 = 0
                    r0.<init>(r1, r2)
                    r0 = r5
                    r1 = r6
                    r0.f59241b = r1
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a.AbstractC21105a.C21106a.<init>(e.a.v4.s0.l.e.b.b, int):void");
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21106a) && l.a(this.f59241b, ((C21106a) obj).f59241b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59241b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("EmptyBodyError(error=");
                m8728C.append(this.f59241b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$b.class */
        public static final class C21107b<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59242b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21107b(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59242b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21107b) && l.a(this.f59242b, ((C21107b) obj).f59242b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59242b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("HttpError(error=");
                m8728C.append(this.f59242b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$c.class */
        public static final class C21108c<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59243b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21108c(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59243b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21108c) && l.a(this.f59243b, ((C21108c) obj).f59243b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59243b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("JobCancellationError(error=");
                m8728C.append(this.f59243b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$d */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$d.class */
        public static final class C21109d<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59244b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21109d(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59244b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21109d) && l.a(this.f59244b, ((C21109d) obj).f59244b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59244b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("KnownError(error=");
                m8728C.append(this.f59244b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$e */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$e.class */
        public static final class C21110e<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59245b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21110e(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59245b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21110e) && l.a(this.f59245b, ((C21110e) obj).f59245b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59245b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("NoInternetConnection(error=");
                m8728C.append(this.f59245b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$f */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$f.class */
        public static final class C21111f<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59246b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21111f(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59246b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21111f) && l.a(this.f59246b, ((C21111f) obj).f59246b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59246b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("TimeoutError(error=");
                m8728C.append(this.f59246b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.v4.s0.l.e.a$a$g */
        /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$a$g.class */
        public static final class C21112g<T> extends AbstractC21105a<T> {

            /* renamed from: b */
            public final AbstractC21115b f59247b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C21112g(AbstractC21115b abstractC21115b) {
                super(abstractC21115b, null);
                l.e(abstractC21115b, "error");
                this.f59247b = abstractC21115b;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C21112g) && l.a(this.f59247b, ((C21112g) obj).f59247b);
                }
                return true;
            }

            public int hashCode() {
                AbstractC21115b abstractC21115b = this.f59247b;
                return abstractC21115b != null ? abstractC21115b.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Unknown(error=");
                m8728C.append(this.f59247b);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC21105a(AbstractC21115b abstractC21115b, f fVar) {
            super(null);
            this.f59240a = abstractC21115b;
        }
    }

    /* renamed from: e.a.v4.s0.l.e.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/e/a$b.class */
    public static final class C21113b<T> extends AbstractC21104a<T> {

        /* renamed from: a */
        public final T f59248a;

        public C21113b(T t) {
            super(null);
            this.f59248a = t;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C21113b) && l.a(this.f59248a, ((C21113b) obj).f59248a);
            }
            return true;
        }

        public int hashCode() {
            T t = this.f59248a;
            return t != null ? t.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8634d(C22128a.m8728C("Success(body="), this.f59248a, ")");
        }
    }

    public AbstractC21104a() {
    }

    public AbstractC21104a(f fVar) {
    }
}
