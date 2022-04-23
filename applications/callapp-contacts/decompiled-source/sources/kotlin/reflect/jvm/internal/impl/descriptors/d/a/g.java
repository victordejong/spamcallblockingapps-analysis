package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.io.InputStream;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.f;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/g.class */
public final class g implements m {

    /* renamed from: a  reason: collision with root package name */
    private final ClassLoader f37439a;

    /* renamed from: b  reason: collision with root package name */
    private final c f37440b = new c();

    public g(ClassLoader classLoader) {
        p.d(classLoader, "classLoader");
        this.f37439a = classLoader;
    }

    private final m.a a(String str) {
        Class<?> a2 = e.a(this.f37439a, str);
        m.a.b bVar = null;
        if (a2 != null) {
            f.a aVar = f.f37436a;
            f a3 = f.a.a(a2);
            if (a3 != null) {
                bVar = new m.a.b(a3, null, 2, null);
            }
        }
        return bVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.r
    public final InputStream a(b packageFqName) {
        p.d(packageFqName, "packageFqName");
        if (!packageFqName.b(j.l)) {
            return null;
        }
        return this.f37440b.a(a.m.a(packageFqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public final m.a a(kotlin.reflect.jvm.internal.impl.c.a classId) {
        String str;
        p.d(classId, "classId");
        String a2 = classId.b().a();
        p.b(a2, "relativeClassName.asString()");
        String a3 = kotlin.h.p.a(a2, '.', '$', false);
        if (classId.a().f37335b.f37340a.isEmpty()) {
            str = a3;
        } else {
            str = classId.a() + '.' + a3;
        }
        return a(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.m
    public final m.a a(kotlin.reflect.jvm.internal.impl.load.java.d.g javaClass) {
        p.d(javaClass, "javaClass");
        b e = javaClass.e();
        String a2 = e == null ? null : e.a();
        if (a2 == null) {
            return null;
        }
        return a(a2);
    }
}
