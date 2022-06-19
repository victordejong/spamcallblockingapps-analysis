package p193e.p194a.p294b.p295a.p296a.p304c.p305e;

import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.c.e.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b.class */
public abstract class AbstractC7625b {

    /* renamed from: e.a.b.a.a.c.e.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$a.class */
    public static abstract class AbstractC7626a extends AbstractC7625b {

        /* renamed from: a */
        public final int f23977a;

        /* renamed from: e.a.b.a.a.c.e.b$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$a$a.class */
        public static final class C7627a extends AbstractC7626a {

            /* renamed from: b */
            public static final C7627a f23978b = new C7627a();

            public C7627a() {
                super(C3478R.string.BusinessProfileOnboarding_NameNotEntered, null);
            }
        }

        /* renamed from: e.a.b.a.a.c.e.b$a$b */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$a$b.class */
        public static final class C7628b extends AbstractC7626a {

            /* renamed from: b */
            public static final C7628b f23979b = new C7628b();

            public C7628b() {
                super(C3478R.string.BusinessEditProfile_DescriptionMaxLength, null);
            }
        }

        /* renamed from: e.a.b.a.a.c.e.b$a$c */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$a$c.class */
        public static final class C7629c extends AbstractC7626a {

            /* renamed from: b */
            public static final C7629c f23980b = new C7629c();

            public C7629c() {
                super(C3478R.string.ProfileEditEmailInvalid, null);
            }
        }

        /* renamed from: e.a.b.a.a.c.e.b$a$d */
        /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$a$d.class */
        public static final class C7630d extends AbstractC7626a {

            /* renamed from: b */
            public static final C7630d f23981b = new C7630d();

            public C7630d() {
                super(C3478R.string.BusinessProfileOnboarding_NameInvalidError, null);
            }
        }

        public AbstractC7626a(int i, f fVar) {
            super(null);
            this.f23977a = i;
        }
    }

    /* renamed from: e.a.b.a.a.c.e.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/e/b$b.class */
    public static final class C7631b extends AbstractC7625b {

        /* renamed from: a */
        public final BusinessProfileRequest f23982a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7631b(BusinessProfileRequest businessProfileRequest) {
            super(null);
            l.e(businessProfileRequest, "profile");
            this.f23982a = businessProfileRequest;
        }
    }

    public AbstractC7625b() {
    }

    public AbstractC7625b(f fVar) {
    }
}
