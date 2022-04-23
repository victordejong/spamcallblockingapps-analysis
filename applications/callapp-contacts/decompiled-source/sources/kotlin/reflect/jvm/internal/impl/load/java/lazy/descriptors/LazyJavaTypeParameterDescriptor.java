package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.java.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.x;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.r;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor.class */
public final class LazyJavaTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    private final d annotations;

    /* renamed from: c  reason: collision with root package name */
    private final g f37800c;
    private final x javaTypeParameter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaTypeParameterDescriptor(g c2, x javaTypeParameter, int i, k containingDeclaration) {
        super(c2.f37882a.f37782a, containingDeclaration, javaTypeParameter.h(), Variance.INVARIANT, false, i, at.f37401a, c2.f37882a.m);
        p.d(c2, "c");
        p.d(javaTypeParameter, "javaTypeParameter");
        p.d(containingDeclaration, "containingDeclaration");
        this.f37800c = c2;
        this.javaTypeParameter = javaTypeParameter;
        this.annotations = new d(c2, javaTypeParameter, false, 4, null);
    }

    private final List<KotlinType> computeNotEnhancedBounds() {
        Collection<j> d2 = this.javaTypeParameter.d();
        if (d2.isEmpty()) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType g = this.f37800c.f37882a.o.getBuiltIns().g();
            p.b(g, "c.module.builtIns.anyType");
            SimpleType h = this.f37800c.f37882a.o.getBuiltIns().h();
            p.b(h, "c.module.builtIns.nullableAnyType");
            return n.a(KotlinTypeFactory.flexibleType(g, h));
        }
        Collection<j> collection = d2;
        ArrayList arrayList = new ArrayList(n.a(collection, 10));
        for (j jVar : collection) {
            arrayList.add(this.f37800c.f37885d.transformJavaType(jVar, JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, false, this, 1, null)));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final d getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> processBoundsWithoutCycles(List<? extends KotlinType> bounds) {
        p.d(bounds, "bounds");
        kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k kVar = this.f37800c.f37882a.r;
        LazyJavaTypeParameterDescriptor typeParameter = this;
        g context = this.f37800c;
        p.d(typeParameter, "typeParameter");
        p.d(bounds, "bounds");
        p.d(context, "context");
        List<? extends KotlinType> list = bounds;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
        for (KotlinType kotlinType : list) {
            if (!TypeUtilsKt.contains(kotlinType, k.g.f37984a)) {
                kotlinType = new k.b(kVar, typeParameter, kotlinType, z.f36608a, false, context, a.TYPE_PARAMETER_BOUNDS, true).a((r) null).f37969a;
            }
            arrayList.add(kotlinType);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final void reportSupertypeLoopError(KotlinType type) {
        p.d(type, "type");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> resolveUpperBounds() {
        return computeNotEnhancedBounds();
    }
}
