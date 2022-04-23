package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/i.class */
public final class i implements o {

    /* renamed from: a  reason: collision with root package name */
    public static final i f37442a = new i();

    private i() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.o
    public final void a(b descriptor) {
        p.d(descriptor, "descriptor");
        throw new IllegalStateException(p.a("Cannot infer visibility for ", (Object) descriptor));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.o
    public final void a(d descriptor, List<String> unresolvedSuperClasses) {
        p.d(descriptor, "descriptor");
        p.d(unresolvedSuperClasses, "unresolvedSuperClasses");
        throw new IllegalStateException("Incomplete hierarchy for class " + descriptor.getName() + ", unresolved classes " + unresolvedSuperClasses);
    }
}
