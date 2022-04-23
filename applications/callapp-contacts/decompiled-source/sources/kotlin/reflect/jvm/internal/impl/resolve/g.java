package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/g.class */
public abstract class g extends h {
    protected abstract void a(b bVar, b bVar2);

    @Override // kotlin.reflect.jvm.internal.impl.resolve.h
    public final void b(b fromSuper, b fromCurrent) {
        p.d(fromSuper, "fromSuper");
        p.d(fromCurrent, "fromCurrent");
        a(fromSuper, fromCurrent);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.h
    public final void c(b first, b second) {
        p.d(first, "first");
        p.d(second, "second");
        a(first, second);
    }
}
