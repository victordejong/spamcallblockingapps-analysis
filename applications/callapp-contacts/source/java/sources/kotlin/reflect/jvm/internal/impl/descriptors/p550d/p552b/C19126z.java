package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19390aa;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.z */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/z.class */
public final class C19126z extends AbstractC19122w implements AbstractC19390aa {

    /* renamed from: a */
    private final WildcardType f64853a;

    /* renamed from: c */
    private final Collection<AbstractC19389a> f64854c = C18297z.f63400a;

    /* renamed from: d */
    private final boolean f64855d;

    public C19126z(WildcardType reflectType) {
        C18524p.m3840d(reflectType, "reflectType");
        this.f64853a = reflectType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ Type mo2637a() {
        return this.f64853a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final Collection<AbstractC19389a> mo2220b() {
        return this.f64854c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return this.f64855d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19390aa
    /* renamed from: d */
    public final boolean mo2225d() {
        Type[] upperBounds = this.f64853a.getUpperBounds();
        C18524p.m3843b(upperBounds, "reflectType.upperBounds");
        return !C18524p.m3850a(C18273i.m4188d(upperBounds), Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19390aa
    /* renamed from: e */
    public final /* synthetic */ AbstractC19414w mo2224e() {
        AbstractC19122w abstractC19122w;
        Type[] upperBounds = this.f64853a.getUpperBounds();
        Type[] lowerBounds = this.f64853a.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException(C18524p.m3847a("Wildcard types with many bounds are not yet supported: ", (Object) this.f64853a));
        }
        if (lowerBounds.length == 1) {
            C18524p.m3843b(lowerBounds, "lowerBounds");
            Object f = C18273i.m4186f(lowerBounds);
            C18524p.m3843b(f, "lowerBounds.single()");
            abstractC19122w = AbstractC19122w.C19123a.m2639a((Type) f);
        } else {
            abstractC19122w = null;
            if (upperBounds.length == 1) {
                C18524p.m3843b(upperBounds, "upperBounds");
                Type ub = (Type) C18273i.m4186f(upperBounds);
                abstractC19122w = null;
                if (!C18524p.m3850a(ub, Object.class)) {
                    C18524p.m3843b(ub, "ub");
                    abstractC19122w = AbstractC19122w.C19123a.m2639a(ub);
                }
            }
        }
        return abstractC19122w;
    }
}
