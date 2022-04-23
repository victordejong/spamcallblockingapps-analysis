package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w.class */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    public final c f38486a;

    /* renamed from: b  reason: collision with root package name */
    public final g f38487b;

    /* renamed from: c  reason: collision with root package name */
    public final at f38488c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a.class */
    public static final class a extends w {

        /* renamed from: d  reason: collision with root package name */
        final a.b f38489d;
        public final a e;
        public final kotlin.reflect.jvm.internal.impl.c.a f;
        public final a.b.EnumC0632b g;
        public final boolean h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(a.b classProto, c nameResolver, g typeTable, at atVar, a aVar) {
            super(nameResolver, typeTable, atVar, null);
            p.d(classProto, "classProto");
            p.d(nameResolver, "nameResolver");
            p.d(typeTable, "typeTable");
            this.f38489d = classProto;
            this.e = aVar;
            this.f = u.a(nameResolver, classProto.f36999c);
            a.b.EnumC0632b b2 = kotlin.reflect.jvm.internal.impl.b.b.b.e.b(classProto.f36998b);
            this.g = b2 == null ? a.b.EnumC0632b.CLASS : b2;
            Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.f.b(classProto.f36998b);
            p.b(a2, "IS_INNER.get(classProto.flags)");
            this.h = a2.booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.w
        public final kotlin.reflect.jvm.internal.impl.c.b a() {
            kotlin.reflect.jvm.internal.impl.c.b f = this.f.f();
            p.b(f, "classId.asSingleFqName()");
            return f;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b.class */
    public static final class b extends w {

        /* renamed from: d  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.c.b f38490d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.c.b fqName, c nameResolver, g typeTable, at atVar) {
            super(nameResolver, typeTable, atVar, null);
            p.d(fqName, "fqName");
            p.d(nameResolver, "nameResolver");
            p.d(typeTable, "typeTable");
            this.f38490d = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.w
        public final kotlin.reflect.jvm.internal.impl.c.b a() {
            return this.f38490d;
        }
    }

    private w(c cVar, g gVar, at atVar) {
        this.f38486a = cVar;
        this.f38487b = gVar;
        this.f38488c = atVar;
    }

    public /* synthetic */ w(c cVar, g gVar, at atVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, gVar, atVar);
    }

    public abstract kotlin.reflect.jvm.internal.impl.c.b a();

    public String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + a();
    }
}
