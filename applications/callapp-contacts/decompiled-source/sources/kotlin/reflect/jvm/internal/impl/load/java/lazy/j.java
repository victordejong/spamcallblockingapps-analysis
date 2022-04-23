package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.resolve.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/j.class */
public final class j implements i {

    /* renamed from: a  reason: collision with root package name */
    public b f37891a;

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.i
    public final d a(g javaClass) {
        p.d(javaClass, "javaClass");
        b bVar = this.f37891a;
        if (bVar != null) {
            return bVar.a(javaClass);
        }
        p.a("resolver");
        throw null;
    }
}
