package kotlin.reflect.jvm.internal.impl.builtins.a;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f37244a = new d();

    private d() {
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a(b fqName, g builtIns) {
        p.d(fqName, "fqName");
        p.d(builtIns, "builtIns");
        c cVar = c.f37237a;
        a a2 = c.a(fqName);
        if (a2 != null) {
            return builtIns.a(a2.f());
        }
        return null;
    }

    public static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.d mutable) {
        p.d(mutable, "mutable");
        c cVar = c.f37237a;
        return c.d(kotlin.reflect.jvm.internal.impl.resolve.d.c(mutable));
    }

    public static boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d readOnly) {
        p.d(readOnly, "readOnly");
        c cVar = c.f37237a;
        return c.e(kotlin.reflect.jvm.internal.impl.resolve.d.c(readOnly));
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d c(kotlin.reflect.jvm.internal.impl.descriptors.d readOnly) {
        p.d(readOnly, "readOnly");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = readOnly;
        c c2 = kotlin.reflect.jvm.internal.impl.resolve.d.c(dVar);
        c cVar = c.f37237a;
        b c3 = c.c(c2);
        if (c3 != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.d(dVar).a(c3);
            p.b(a2, "descriptor.builtIns.getBuiltInClassByFqName(oppositeClassFqName)");
            return a2;
        }
        throw new IllegalArgumentException("Given class " + readOnly + " is not a read-only collection");
    }
}
