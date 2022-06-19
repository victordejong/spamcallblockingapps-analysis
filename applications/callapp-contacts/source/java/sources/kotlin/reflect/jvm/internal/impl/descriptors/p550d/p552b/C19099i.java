package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19397f;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/i.class */
public final class C19099i extends AbstractC19122w implements AbstractC19397f {

    /* renamed from: a */
    private final Type f64822a;

    /* renamed from: c */
    private final AbstractC19122w f64823c;

    /* renamed from: d */
    private final Collection<AbstractC19389a> f64824d;

    /* renamed from: e */
    private final boolean f64825e;

    public C19099i(Type reflectType) {
        AbstractC19122w abstractC19122w;
        C18524p.m3840d(reflectType, "reflectType");
        this.f64822a = reflectType;
        if (!(reflectType instanceof GenericArrayType)) {
            if (reflectType instanceof Class) {
                Class cls = (Class) reflectType;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    C18524p.m3843b(componentType, "getComponentType()");
                    abstractC19122w = AbstractC19122w.C19123a.m2639a(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + reflectType.getClass() + "): " + reflectType);
        }
        Type genericComponentType = ((GenericArrayType) reflectType).getGenericComponentType();
        C18524p.m3843b(genericComponentType, "genericComponentType");
        abstractC19122w = AbstractC19122w.C19123a.m2639a(genericComponentType);
        this.f64823c = abstractC19122w;
        this.f64824d = C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w
    /* renamed from: a */
    protected final Type mo2637a() {
        return this.f64822a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final Collection<AbstractC19389a> mo2220b() {
        return this.f64824d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return this.f64825e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19397f
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ AbstractC19414w mo2217d() {
        return this.f64823c;
    }
}
