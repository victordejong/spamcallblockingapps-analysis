package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/h.class */
public abstract class h {
    public abstract void a(b bVar);

    public void a(b member, Collection<? extends b> overridden) {
        p.d(member, "member");
        p.d(overridden, "overridden");
        member.setOverriddenDescriptors(overridden);
    }

    public abstract void b(b bVar, b bVar2);

    public abstract void c(b bVar, b bVar2);
}
