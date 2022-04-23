package kotlin.reflect.jvm.internal.impl.a;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.a.a.e;
import kotlin.reflect.jvm.internal.impl.a.a.f;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a.class */
public final class a {
    public static final void a(c cVar, b from, ae scopeOwner, e name) {
        kotlin.reflect.jvm.internal.impl.a.a.a location;
        kotlin.reflect.jvm.internal.impl.a.a.e eVar;
        p.d(cVar, "<this>");
        p.d(from, "from");
        p.d(scopeOwner, "scopeOwner");
        p.d(name, "name");
        String packageFqName = scopeOwner.c().a();
        p.b(packageFqName, "scopeOwner.fqName.asString()");
        String name2 = name.a();
        p.b(name2, "name.asString()");
        p.d(cVar, "<this>");
        p.d(from, "from");
        p.d(packageFqName, "packageFqName");
        p.d(name2, "name");
        if (cVar != c.a.f36964a && (location = from.getLocation()) != null) {
            e.a aVar = kotlin.reflect.jvm.internal.impl.a.a.e.f36965a;
            eVar = kotlin.reflect.jvm.internal.impl.a.a.e.f36966d;
            cVar.a(location.a(), eVar, packageFqName, f.PACKAGE, name2);
        }
    }

    public static final void a(c cVar, b from, d scopeOwner, kotlin.reflect.jvm.internal.impl.c.e name) {
        kotlin.reflect.jvm.internal.impl.a.a.a location;
        kotlin.reflect.jvm.internal.impl.a.a.e eVar;
        p.d(cVar, "<this>");
        p.d(from, "from");
        p.d(scopeOwner, "scopeOwner");
        p.d(name, "name");
        if (cVar != c.a.f36964a && (location = from.getLocation()) != null) {
            e.a aVar = kotlin.reflect.jvm.internal.impl.a.a.e.f36965a;
            eVar = kotlin.reflect.jvm.internal.impl.a.a.e.f36966d;
            String a2 = location.a();
            String a3 = kotlin.reflect.jvm.internal.impl.resolve.d.c(scopeOwner).a();
            p.b(a3, "getFqName(scopeOwner).asString()");
            f fVar = f.CLASSIFIER;
            String a4 = name.a();
            p.b(a4, "name.asString()");
            cVar.a(a2, eVar, a3, fVar, a4);
        }
    }
}
