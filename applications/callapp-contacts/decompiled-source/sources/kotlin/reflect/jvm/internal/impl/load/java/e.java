package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.java.y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e.class */
public final class e extends y {

    /* renamed from: a  reason: collision with root package name */
    public static final e f37766a = new e();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e$a.class */
    static final class a extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            return Boolean.valueOf(e.b(it2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/e$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, Boolean> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            return Boolean.valueOf((it2 instanceof w) && e.b(it2));
        }
    }

    private e() {
    }

    public static final w a(w functionDescriptor) {
        p.d(functionDescriptor, "functionDescriptor");
        kotlin.reflect.jvm.internal.impl.c.e name = functionDescriptor.getName();
        p.b(name, "functionDescriptor.name");
        if (!a(name)) {
            return null;
        }
        return (w) kotlin.reflect.jvm.internal.impl.resolve.b.a.a(functionDescriptor, new a());
    }

    public static final y.b a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        p.d(bVar, "<this>");
        if (!y.c().contains(bVar.getName())) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.b a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(bVar, new b());
        String builtinSignature = a2 == null ? null : t.b(a2);
        if (builtinSignature == null) {
            return null;
        }
        p.d(builtinSignature, "builtinSignature");
        return y.a().contains(builtinSignature) ? y.b.ONE_COLLECTION_PARAMETER : ((y.c) ai.a(y.b(), builtinSignature)) == y.c.NULL ? y.b.OBJECT_PARAMETER_GENERIC : y.b.OBJECT_PARAMETER_NON_GENERIC;
    }

    public static boolean a(kotlin.reflect.jvm.internal.impl.c.e eVar) {
        p.d(eVar, "<this>");
        return y.c().contains(eVar);
    }

    public static final /* synthetic */ boolean b(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        return n.a((Iterable<? extends String>) y.d(), t.b(bVar));
    }
}
