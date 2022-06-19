package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/s.class */
public abstract class AbstractC19213s {
    /* renamed from: a */
    public final Integer m2502a(AbstractC19213s visibility) {
        C18524p.m3840d(visibility, "visibility");
        return mo2503a().mo2676a(visibility.mo2503a());
    }

    /* renamed from: a */
    public abstract AbstractC19064bf mo2503a();

    /* renamed from: a */
    public abstract boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k);

    /* renamed from: b */
    public abstract String mo2501b();

    /* renamed from: c */
    public abstract AbstractC19213s mo2500c();

    public final String toString() {
        return mo2503a().toString();
    }
}
