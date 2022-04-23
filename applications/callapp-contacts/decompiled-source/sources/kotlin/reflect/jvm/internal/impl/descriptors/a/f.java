package kotlin.reflect.jvm.internal.impl.descriptors.a;

import kotlin.a.ai;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.resolve.constants.b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.s;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final e f37356a;

    /* renamed from: b  reason: collision with root package name */
    private static final e f37357b;

    /* renamed from: c  reason: collision with root package name */
    private static final e f37358c;

    /* renamed from: d  reason: collision with root package name */
    private static final e f37359d;
    private static final e e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/f$a.class */
    public static final class a extends r implements Function1<ab, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f37360a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g gVar) {
            super(1);
            this.f37360a = gVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(ab abVar) {
            ab module = abVar;
            p.d(module, "module");
            SimpleType a2 = module.getBuiltIns().a(Variance.INVARIANT, this.f37360a.p());
            p.b(a2, "module.builtIns.getArrayType(Variance.INVARIANT, stringType)");
            return a2;
        }
    }

    static {
        e a2 = e.a("message");
        p.b(a2, "identifier(\"message\")");
        f37356a = a2;
        e a3 = e.a("replaceWith");
        p.b(a3, "identifier(\"replaceWith\")");
        f37357b = a3;
        e a4 = e.a("level");
        p.b(a4, "identifier(\"level\")");
        f37358c = a4;
        e a5 = e.a("expression");
        p.b(a5, "identifier(\"expression\")");
        f37359d = a5;
        e a6 = e.a("imports");
        p.b(a6, "identifier(\"imports\")");
        e = a6;
    }

    public static /* synthetic */ c a(g gVar, String message) {
        p.d(gVar, "<this>");
        p.d(message, "message");
        p.d("", "replaceWith");
        p.d("WARNING", "level");
        j jVar = new j(gVar, j.a.B, ai.a(t.a(f37359d, new s("")), t.a(e, new b(z.f36608a, new a(gVar)))));
        kotlin.reflect.jvm.internal.impl.c.b bVar = j.a.y;
        n a2 = t.a(f37356a, new s(message));
        n a3 = t.a(f37357b, new kotlin.reflect.jvm.internal.impl.resolve.constants.a(jVar));
        e eVar = f37358c;
        kotlin.reflect.jvm.internal.impl.c.a a4 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.A);
        p.b(a4, "topLevel(StandardNames.FqNames.deprecationLevel)");
        e a5 = e.a("WARNING");
        p.b(a5, "identifier(level)");
        return new j(gVar, bVar, ai.a(a2, a3, t.a(eVar, new kotlin.reflect.jvm.internal.impl.resolve.constants.j(a4, a5))));
    }
}
