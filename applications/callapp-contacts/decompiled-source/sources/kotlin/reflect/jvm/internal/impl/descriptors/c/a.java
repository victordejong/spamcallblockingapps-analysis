package kotlin.reflect.jvm.internal.impl.descriptors.c;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.be;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37426a = new a();

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$a.class */
    public static final class C0671a extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final C0671a f37427a = new C0671a();

        private C0671a() {
            super("package", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final Integer a(bf visibility) {
            p.d(visibility, "visibility");
            if (this == visibility) {
                return 0;
            }
            be beVar = be.f37412a;
            return be.a(visibility) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final String a() {
            return "public/*package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final bf b() {
            return be.g.f37421a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$b.class */
    public static final class b extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37428a = new b();

        private b() {
            super("protected_and_package", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final Integer a(bf visibility) {
            p.d(visibility, "visibility");
            if (p.a(this, visibility)) {
                return 0;
            }
            if (visibility == be.b.f37416a) {
                return null;
            }
            be beVar = be.f37412a;
            return be.a(visibility) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final String a() {
            return "protected/*protected and package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final bf b() {
            return be.g.f37421a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/c/a$c.class */
    public static final class c extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37429a = new c();

        private c() {
            super("protected_static", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final String a() {
            return "protected/*protected static*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final bf b() {
            return be.g.f37421a;
        }
    }

    private a() {
    }
}
