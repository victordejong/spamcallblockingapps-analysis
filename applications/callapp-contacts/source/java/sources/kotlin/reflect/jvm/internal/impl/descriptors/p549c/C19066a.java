package kotlin.reflect.jvm.internal.impl.descriptors.p549c;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.C19054be;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.c.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a.class */
public final class C19066a {

    /* renamed from: a */
    public static final C19066a f64784a = new C19066a();

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.c.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$a.class */
    public static final class C19067a extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19067a f64785a = new C19067a();

        private C19067a() {
            super("package", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final Integer mo2676a(AbstractC19064bf visibility) {
            C18524p.m3840d(visibility, "visibility");
            if (this == visibility) {
                return 0;
            }
            C19054be c19054be = C19054be.f64770a;
            return C19054be.m2678a(visibility) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final String mo2675a() {
            return "public/*package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: b */
        public final AbstractC19064bf mo2674b() {
            return C19054be.C19061g.f64779a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.c.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$b.class */
    public static final class C19068b extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19068b f64786a = new C19068b();

        private C19068b() {
            super("protected_and_package", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final Integer mo2676a(AbstractC19064bf visibility) {
            C18524p.m3840d(visibility, "visibility");
            if (C18524p.m3850a(this, visibility)) {
                return 0;
            }
            if (visibility == C19054be.C19056b.f64774a) {
                return null;
            }
            C19054be c19054be = C19054be.f64770a;
            return C19054be.m2678a(visibility) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final String mo2675a() {
            return "protected/*protected and package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: b */
        public final AbstractC19064bf mo2674b() {
            return C19054be.C19061g.f64779a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.c.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$c.class */
    public static final class C19069c extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19069c f64787a = new C19069c();

        private C19069c() {
            super("protected_static", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final String mo2675a() {
            return "protected/*protected static*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: b */
        public final AbstractC19064bf mo2674b() {
            return C19054be.C19061g.f64779a;
        }
    }

    private C19066a() {
    }
}
