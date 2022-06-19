package p193e.p194a.p294b.p295a.p322f;

import com.truecaller.bizmon.newBusiness.data.BusinessAPIErrorResponse;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import e.m.e.k;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.Objects;
import s1.z.c.f;
import s1.z.c.l;
import u3.l0;
import x3.a0;
/* renamed from: e.a.b.a.f.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a.class */
public abstract class AbstractC7780a {

    /* renamed from: a */
    public final boolean f24239a;

    /* renamed from: b */
    public final int f24240b;

    /* renamed from: e.a.b.a.f.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$a.class */
    public static final class C7781a extends AbstractC7780a {

        /* renamed from: c */
        public static final C7781a f24241c = new C7781a();

        public C7781a() {
            super(400, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$b.class */
    public static final class C7782b extends AbstractC7780a {

        /* renamed from: c */
        public static final C7782b f24242c = new C7782b();

        public C7782b() {
            super(204, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$c.class */
    public static final class C7783c extends AbstractC7780a {

        /* renamed from: c */
        public static final C7783c f24243c = new C7783c();

        public C7783c() {
            super(403, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$d.class */
    public static final class C7784d extends AbstractC7780a {

        /* renamed from: c */
        public static final C7784d f24244c = new C7784d();

        public C7784d() {
            super(500, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$e.class */
    public static final class C7785e extends AbstractC7780a {

        /* renamed from: c */
        public static final C7785e f24245c = new C7785e();

        public C7785e() {
            super(0, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$f.class */
    public static final class C7786f extends AbstractC7780a {

        /* renamed from: c */
        public static final C7786f f24246c = new C7786f();

        public C7786f() {
            super(404, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$g.class */
    public static final class C7787g extends AbstractC7780a {

        /* renamed from: c */
        public final BusinessProfile f24247c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7787g(BusinessProfile businessProfile) {
            super(200, null);
            l.e(businessProfile, "businessProfile");
            this.f24247c = businessProfile;
        }
    }

    /* renamed from: e.a.b.a.f.a$h */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$h.class */
    public static final class C7788h extends AbstractC7780a {
        public C7788h(int i) {
            super(i, null);
        }

        public C7788h(int i, int i2) {
            super((i2 & 1) != 0 ? 0 : i, null);
        }
    }

    /* renamed from: e.a.b.a.f.a$i */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/f/a$i.class */
    public static final class C7789i extends AbstractC7780a {

        /* renamed from: c */
        public final BusinessAPIErrorResponse f24248c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7789i(BusinessAPIErrorResponse businessAPIErrorResponse) {
            super(422, null);
            l.e(businessAPIErrorResponse, "error");
            this.f24248c = businessAPIErrorResponse;
        }
    }

    public AbstractC7780a(int i, f fVar) {
        this.f24240b = i;
        this.f24239a = 200 <= i && 299 >= i;
    }

    /* renamed from: a */
    public static final AbstractC7780a m29294a(a0<l0> a0Var, k kVar) {
        C7788h c7788h;
        k kVar2;
        Type type;
        l.e(a0Var, "response");
        l.e(kVar, "gson");
        int i = a0Var.a.e;
        if (i == 200) {
            l0 l0Var = (l0) a0Var.b;
            if (l0Var == null) {
                c7788h = C7784d.f24244c;
            } else {
                BusinessProfile businessProfile = (BusinessProfile) kVar.d(l0Var.j(), BusinessProfile.class);
                l.d(businessProfile, "bizProfile");
                c7788h = new C7787g(businessProfile);
            }
        } else if (i == 204) {
            c7788h = C7782b.f24242c;
        } else if (i == 400) {
            c7788h = C7781a.f24241c;
        } else if (i == 403) {
            c7788h = C7783c.f24243c;
        } else if (i != 422) {
            c7788h = i != 500 ? new C7788h(i) : C7784d.f24244c;
        } else {
            Objects.requireNonNull(BusinessAPIErrorResponse.Companion);
            l.e(a0Var, "response");
            kVar2 = BusinessAPIErrorResponse.gson;
            l0 l0Var2 = a0Var.c;
            Reader j = l0Var2 != null ? l0Var2.j() : null;
            type = BusinessAPIErrorResponse.type;
            Object e = kVar2.e(j, type);
            l.d(e, "gson.fromJson(\n         …           type\n        )");
            c7788h = new C7789i((BusinessAPIErrorResponse) e);
        }
        return c7788h;
    }
}
