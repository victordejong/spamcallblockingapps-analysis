package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19765b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/j.class */
public final class C19505j implements AbstractC19504i {

    /* renamed from: a */
    public C19765b f65491a;

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19504i
    /* renamed from: a */
    public final AbstractC19070d mo2068a(AbstractC19398g javaClass) {
        C18524p.m3840d(javaClass, "javaClass");
        C19765b c19765b = this.f65491a;
        if (c19765b != null) {
            return c19765b.m1506a(javaClass);
        }
        C18524p.m3848a("resolver");
        throw null;
    }
}
