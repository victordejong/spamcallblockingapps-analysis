package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Set;
import kotlin.a.ap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h.class */
public final class h {

    /* renamed from: a */
    public static final b f38431a = new b(null);

    /* renamed from: d */
    private static final Set<kotlin.reflect.jvm.internal.impl.c.a> f38432d = ap.a(kotlin.reflect.jvm.internal.impl.c.a.a(j.a.f37323d.c()));

    /* renamed from: b */
    private final j f38433b;

    /* renamed from: c */
    private final Function1<a, d> f38434c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$a.class */
    public static final class a {

        /* renamed from: a */
        final kotlin.reflect.jvm.internal.impl.c.a f38435a;

        /* renamed from: b */
        final f f38436b;

        public a(kotlin.reflect.jvm.internal.impl.c.a classId, f fVar) {
            p.d(classId, "classId");
            this.f38435a = classId;
            this.f38436b = fVar;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof a) && p.a(this.f38435a, ((a) obj).f38435a);
        }

        public final int hashCode() {
            return this.f38435a.hashCode();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/h$c.class */
    public static final class c extends r implements Function1<a, d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c() {
            super(1);
            h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ d invoke(a aVar) {
            a key = aVar;
            p.d(key, "key");
            return h.a(h.this, key);
        }
    }

    public h(j components) {
        p.d(components, "components");
        this.f38433b = components;
        this.f38434c = components.f38441a.b(new c());
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x015f, code lost:
        if (((r0 instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h) && ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h) r0).d().contains(r0)) != false) goto L_0x0162;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.h r8, kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a r9) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.h, kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$a):kotlin.reflect.jvm.internal.impl.descriptors.d");
    }

    public final d a(kotlin.reflect.jvm.internal.impl.c.a classId, f fVar) {
        p.d(classId, "classId");
        return this.f38434c.invoke(new a(classId, fVar));
    }
}
