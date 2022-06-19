package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/m.class */
public final class C19864m {
    /* renamed from: a */
    public static final AbstractC19039b m1392a(Collection<? extends AbstractC19039b> descriptors) {
        Integer m2516a;
        C18524p.m3840d(descriptors, "descriptors");
        boolean isEmpty = descriptors.isEmpty();
        if (!C20130x.f66532a || (!isEmpty)) {
            AbstractC19039b abstractC19039b = null;
            for (AbstractC19039b abstractC19039b2 : descriptors) {
                if (abstractC19039b == null || ((m2516a = C19200r.m2516a(abstractC19039b.getVisibility(), abstractC19039b2.getVisibility())) != null && m2516a.intValue() < 0)) {
                    abstractC19039b = abstractC19039b2;
                }
            }
            C18524p.m3851a(abstractC19039b);
            return abstractC19039b;
        }
        throw new AssertionError("Assertion failed");
    }
}
