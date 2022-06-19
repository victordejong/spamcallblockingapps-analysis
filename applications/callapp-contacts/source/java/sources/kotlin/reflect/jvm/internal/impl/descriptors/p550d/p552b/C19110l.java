package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19400i;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/l.class */
public final class C19110l extends AbstractC19122w implements AbstractC19401j {

    /* renamed from: a */
    final Type f64836a;

    /* renamed from: c */
    private final AbstractC19400i f64837c;

    public C19110l(Type reflectType) {
        C19100j c19100j;
        C18524p.m3840d(reflectType, "reflectType");
        this.f64836a = reflectType;
        Type type = this.f64836a;
        if (type instanceof Class) {
            c19100j = new C19100j((Class) type);
        } else if (type instanceof TypeVariable) {
            c19100j = new C19124x((TypeVariable) type);
        } else if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("Not a classifier type (" + type.getClass() + "): " + type);
        } else {
            Type rawType = ((ParameterizedType) type).getRawType();
            Objects.requireNonNull(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            c19100j = new C19100j((Class) rawType);
        }
        this.f64837c = c19100j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w
    /* renamed from: a */
    public final Type mo2637a() {
        return this.f64836a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w, kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final AbstractC19389a mo2221a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final Collection<AbstractC19389a> mo2220b() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j
    /* renamed from: d */
    public final AbstractC19400i mo2203d() {
        return this.f64837c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j
    /* renamed from: e */
    public final String mo2202e() {
        throw new UnsupportedOperationException(C18524p.m3847a("Type not found: ", (Object) this.f64836a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j
    /* renamed from: f */
    public final String mo2201f() {
        return this.f64836a.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j
    /* renamed from: g */
    public final boolean mo2200g() {
        Type type = this.f64836a;
        if (type instanceof Class) {
            TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
            C18524p.m3843b(typeParameters, "getTypeParameters()");
            return (typeParameters.length == 0) ^ true;
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j
    /* renamed from: h */
    public final List<AbstractC19414w> mo2199h() {
        List<Type> m2658a = C19088b.m2658a(this.f64836a);
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) m2658a, 10));
        for (Type type : m2658a) {
            arrayList.add(AbstractC19122w.C19123a.m2639a(type));
        }
        return arrayList;
    }
}
