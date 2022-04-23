package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/h.class */
public final class h implements g {

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f37364b;

    /* JADX WARN: Multi-variable type inference failed */
    public h(List<? extends c> annotations) {
        p.d(annotations, "annotations");
        this.f37364b = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final c a(b bVar) {
        return g.b.a(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        return this.f37364b.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(b bVar) {
        return g.b.b(this, bVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return this.f37364b.iterator();
    }

    public final String toString() {
        return this.f37364b.toString();
    }
}
