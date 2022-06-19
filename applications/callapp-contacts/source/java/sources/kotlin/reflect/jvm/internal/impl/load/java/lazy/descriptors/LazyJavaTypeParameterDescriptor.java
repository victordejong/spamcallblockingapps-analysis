package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.EnumC19343a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19436d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19582r;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor.class */
public final class LazyJavaTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    private final C19436d annotations;

    /* renamed from: c */
    private final C19501g f65368c;
    private final AbstractC19415x javaTypeParameter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaTypeParameterDescriptor(C19501g c, AbstractC19415x javaTypeParameter, int i, AbstractC19193k containingDeclaration) {
        super(c.f65480a.f65318a, containingDeclaration, javaTypeParameter.mo2183h(), Variance.INVARIANT, false, i, AbstractC19026at.f64759a, c.f65480a.f65330m);
        C18524p.m3840d(c, "c");
        C18524p.m3840d(javaTypeParameter, "javaTypeParameter");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        this.f65368c = c;
        this.javaTypeParameter = javaTypeParameter;
        this.annotations = new C19436d(c, javaTypeParameter, false, 4, null);
    }

    private final List<KotlinType> computeNotEnhancedBounds() {
        Collection<AbstractC19401j> mo2178d = this.javaTypeParameter.mo2178d();
        if (mo2178d.isEmpty()) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType m2798g = this.f65368c.f65480a.f65332o.getBuiltIns().m2798g();
            C18524p.m3843b(m2798g, "c.module.builtIns.anyType");
            SimpleType m2796h = this.f65368c.f65480a.f65332o.getBuiltIns().m2796h();
            C18524p.m3843b(m2796h, "c.module.builtIns.nullableAnyType");
            return C18282n.m4176a(KotlinTypeFactory.flexibleType(m2798g, m2796h));
        }
        Collection<AbstractC19401j> collection = mo2178d;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
        for (AbstractC19401j abstractC19401j : collection) {
            arrayList.add(this.f65368c.f65483d.transformJavaType(abstractC19401j, JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, this, 1, null)));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18976b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final C19436d getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> processBoundsWithoutCycles(List<? extends KotlinType> bounds) {
        C18524p.m3840d(bounds, "bounds");
        C19563k c19563k = this.f65368c.f65480a.f65335r;
        LazyJavaTypeParameterDescriptor typeParameter = this;
        C19501g context = this.f65368c;
        C18524p.m3840d(typeParameter, "typeParameter");
        C18524p.m3840d(bounds, "bounds");
        C18524p.m3840d(context, "context");
        List<? extends KotlinType> list = bounds;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        for (KotlinType kotlinType : list) {
            if (!TypeUtilsKt.contains(kotlinType, C19563k.C19573g.f65590a)) {
                kotlinType = new C19563k.C19565b(c19563k, typeParameter, kotlinType, C18297z.f63400a, false, context, EnumC19343a.TYPE_PARAMETER_BOUNDS, true).m2011a((C19582r) null).f65571a;
            }
            arrayList.add(kotlinType);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final void reportSupertypeLoopError(KotlinType type) {
        C18524p.m3840d(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> resolveUpperBounds() {
        return computeNotEnhancedBounds();
    }
}
