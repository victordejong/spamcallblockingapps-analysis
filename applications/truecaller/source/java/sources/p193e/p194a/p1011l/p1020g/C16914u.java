package p193e.p194a.p1011l.p1020g;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.g.u */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/u.class */
public final class C16914u {

    /* renamed from: a */
    public final C16905q f47503a;

    /* renamed from: b */
    public final AbstractC17197v0 f47504b;

    /* renamed from: c */
    public final f f47505c;

    /* renamed from: e.a.l.g.u$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a.class */
    public static abstract class AbstractC16915a {

        /* renamed from: a */
        public final String f47506a;

        /* renamed from: e.a.l.g.u$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$a.class */
        public static final class C16916a extends AbstractC16915a {

            /* renamed from: b */
            public static final C16916a f47507b = new C16916a();

            public C16916a() {
                super("Failed", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$b.class */
        public static final class C16917b extends AbstractC16915a {

            /* renamed from: b */
            public static final C16917b f47508b = new C16917b();

            public C16917b() {
                super("Invalid Receipt", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$c.class */
        public static final class C16918c extends AbstractC16915a {

            /* renamed from: b */
            public static final C16918c f47509b = new C16918c();

            public C16918c() {
                super("Network error", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$d */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$d.class */
        public static final class C16919d extends AbstractC16915a {

            /* renamed from: b */
            public static final C16919d f47510b = new C16919d();

            public C16919d() {
                super("Not a Premium User", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$e */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$e.class */
        public static final class C16920e extends AbstractC16915a {

            /* renamed from: b */
            public static final C16920e f47511b = new C16920e();

            public C16920e() {
                super("Offer Not Found", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$f */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$f.class */
        public static final class C16921f extends AbstractC16915a {

            /* renamed from: b */
            public static final C16921f f47512b = new C16921f();

            public C16921f() {
                super("The recipient is already a Premium user", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$g */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$g.class */
        public static final class C16922g extends AbstractC16915a {

            /* renamed from: b */
            public static final C16922g f47513b = new C16922g();

            public C16922g() {
                super("The recipient is not a TC user", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$h */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$h.class */
        public static final class C16923h extends AbstractC16915a {

            /* renamed from: b */
            public static final C16923h f47514b = new C16923h();

            public C16923h() {
                super("Server error", null);
            }
        }

        /* renamed from: e.a.l.g.u$a$i */
        /* loaded from: classes12-dex2jar.jar:e/a/l/g/u$a$i.class */
        public static final class C16924i extends AbstractC16915a {

            /* renamed from: b */
            public static final C16924i f47515b = new C16924i();

            public C16924i() {
                super("Success", null);
            }
        }

        public AbstractC16915a(String str, s1.z.c.f fVar) {
            this.f47506a = str;
        }
    }

    @Inject
    public C16914u(C16905q c16905q, AbstractC17197v0 abstractC17197v0, @Named("IO") f fVar) {
        l.e(c16905q, "networkHelper");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(fVar, "asyncContext");
        this.f47503a = c16905q;
        this.f47504b = abstractC17197v0;
        this.f47505c = fVar;
    }
}
