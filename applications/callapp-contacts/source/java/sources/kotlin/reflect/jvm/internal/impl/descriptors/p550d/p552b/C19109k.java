package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19399h;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/k.class */
public final class C19109k extends AbstractC19092d implements AbstractC19399h {

    /* renamed from: b */
    private final Class<?> f64835b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19109k(C18966e c18966e, Class<?> klass) {
        super(c18966e);
        C18524p.m3840d(klass, "klass");
        this.f64835b = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19399h
    /* renamed from: b */
    public final AbstractC19414w mo2204b() {
        AbstractC19122w.C19123a c19123a = AbstractC19122w.f64847b;
        return AbstractC19122w.C19123a.m2639a(this.f64835b);
    }
}
