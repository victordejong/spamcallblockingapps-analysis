package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/h.class */
public abstract class AbstractC19856h {
    /* renamed from: a */
    public abstract void mo1343a(AbstractC19039b abstractC19039b);

    /* renamed from: a */
    public void mo1398a(AbstractC19039b member, Collection<? extends AbstractC19039b> overridden) {
        C18524p.m3840d(member, "member");
        C18524p.m3840d(overridden, "overridden");
        member.setOverriddenDescriptors(overridden);
    }

    /* renamed from: b */
    public abstract void mo1397b(AbstractC19039b abstractC19039b, AbstractC19039b abstractC19039b2);

    /* renamed from: c */
    public abstract void mo1396c(AbstractC19039b abstractC19039b, AbstractC19039b abstractC19039b2);
}
