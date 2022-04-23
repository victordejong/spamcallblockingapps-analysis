package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.util.Set;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.j;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.u;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
import kotlin.reflect.jvm.internal.impl.load.java.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/d.class */
public final class d implements n {

    /* renamed from: a  reason: collision with root package name */
    private final ClassLoader f37435a;

    public d(ClassLoader classLoader) {
        p.d(classLoader, "classLoader");
        this.f37435a = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.n
    public final g a(n.a request) {
        p.d(request, "request");
        a aVar = request.f37896a;
        b a2 = aVar.a();
        p.b(a2, "classId.packageFqName");
        String a3 = aVar.b().a();
        p.b(a3, "classId.relativeClassName.asString()");
        String a4 = kotlin.h.p.a(a3, '.', '$', false);
        if (!a2.f37335b.f37340a.isEmpty()) {
            a4 = a2.a() + '.' + a4;
        }
        Class<?> a5 = e.a(this.f37435a, a4);
        if (a5 != null) {
            return new j(a5);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.n
    public final t a(b fqName) {
        p.d(fqName, "fqName");
        return new u(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.n
    public final Set<String> b(b packageFqName) {
        p.d(packageFqName, "packageFqName");
        return null;
    }
}
