package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Iterator;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b.class */
final class b implements g {

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.c.b f37912b;

    public b(kotlin.reflect.jvm.internal.impl.c.b fqNameToMatch) {
        p.d(fqNameToMatch, "fqNameToMatch");
        this.f37912b = fqNameToMatch;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final /* synthetic */ c a(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        p.d(fqName, "fqName");
        return p.a(fqName, this.f37912b) ? a.f37911a : null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(kotlin.reflect.jvm.internal.impl.c.b bVar) {
        return g.b.b(this, bVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return z.f36608a.iterator();
    }
}
