package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.g;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/f.class */
public final class f implements g {

    /* renamed from: a  reason: collision with root package name */
    private final m f38069a;

    /* renamed from: b  reason: collision with root package name */
    private final e f38070b;

    public f(m kotlinClassFinder, e deserializedDescriptorResolver) {
        p.d(kotlinClassFinder, "kotlinClassFinder");
        p.d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.f38069a = kotlinClassFinder;
        this.f38070b = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.g
    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.f a(a classId) {
        p.d(classId, "classId");
        o a2 = n.a(this.f38069a, classId);
        if (a2 == null) {
            return null;
        }
        boolean a3 = p.a(a2.c(), classId);
        if (!x.f38657a || a3) {
            return this.f38070b.a(a2);
        }
        throw new AssertionError("Class with incorrect id found: expected " + classId + ", actual " + a2.c());
    }
}
