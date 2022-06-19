package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18255ap;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h.class */
public final class C19941h {

    /* renamed from: a */
    public static final C19943b f66239a = new C19943b(null);

    /* renamed from: d */
    private static final Set<C18960a> f66240d = C18255ap.m4240a(C18960a.m2754a(C18954j.C18955a.f64649d.m2730c()));

    /* renamed from: b */
    private final C19948j f66241b;

    /* renamed from: c */
    private final Function1<C19942a, AbstractC19070d> f66242c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a.class */
    public static final class C19942a {

        /* renamed from: a */
        final C18960a f66243a;

        /* renamed from: b */
        final C19939f f66244b;

        public C19942a(C18960a classId, C19939f c19939f) {
            C18524p.m3840d(classId, "classId");
            this.f66243a = classId;
            this.f66244b = c19939f;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof C19942a) && C18524p.m3850a(this.f66243a, ((C19942a) obj).f66243a);
        }

        public final int hashCode() {
            return this.f66243a.hashCode();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b.class */
    public static final class C19943b {
        private C19943b() {
        }

        public /* synthetic */ C19943b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$c.class */
    public static final class C19944c extends AbstractC18526r implements Function1<C19942a, AbstractC19070d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19944c() {
            super(1);
            C19941h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19070d invoke(C19942a c19942a) {
            C19942a key = c19942a;
            C18524p.m3840d(key, "key");
            return C19941h.m1264a(C19941h.this, key);
        }
    }

    public C19941h(C19948j components) {
        C18524p.m3840d(components, "components");
        this.f66241b = components;
        this.f66242c = components.f66249a.mo2307b(new C19944c());
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x015f, code lost:
        if (((r0 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h) && ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h) r0).m1325d().contains(r0)) != false) goto L43;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d m1264a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19941h r8, kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19941h.C19942a r9) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19941h.m1264a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.h, kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$a):kotlin.reflect.jvm.internal.impl.descriptors.d");
    }

    /* renamed from: a */
    public final AbstractC19070d m1266a(C18960a classId, C19939f c19939f) {
        C18524p.m3840d(classId, "classId");
        return this.f66242c.invoke(new C19942a(classId, c19939f));
    }
}
