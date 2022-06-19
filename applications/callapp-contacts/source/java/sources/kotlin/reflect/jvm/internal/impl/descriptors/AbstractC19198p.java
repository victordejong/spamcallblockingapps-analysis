package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/p.class */
public abstract class AbstractC19198p extends AbstractC19213s {

    /* renamed from: a */
    private final AbstractC19064bf f65001a;

    public AbstractC19198p(AbstractC19064bf delegate) {
        C18524p.m3840d(delegate, "delegate");
        this.f65001a = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
    /* renamed from: a */
    public final AbstractC19064bf mo2503a() {
        return this.f65001a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
    /* renamed from: b */
    public final String mo2501b() {
        return this.f65001a.mo2675a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
    /* renamed from: c */
    public final AbstractC19213s mo2500c() {
        AbstractC19213s m2520a = C19200r.m2520a(this.f65001a.mo2674b());
        C18524p.m3843b(m2520a, "toDescriptorVisibility(delegate.normalize())");
        return m2520a;
    }
}
