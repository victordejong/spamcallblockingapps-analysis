package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.util.ArrayList;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/j.class */
public final class C18923j {
    /* renamed from: a */
    public static final TypeConstructorSubstitution m2866a(AbstractC19070d from, AbstractC19070d to) {
        C18524p.m3840d(from, "from");
        C18524p.m3840d(to, "to");
        boolean z = from.getDeclaredTypeParameters().size() == to.getDeclaredTypeParameters().size();
        if (C20130x.f66532a && !z) {
            throw new AssertionError(from + " and " + to + " should have same number of type parameters, but " + from.getDeclaredTypeParameters().size() + " / " + to.getDeclaredTypeParameters().size() + " found");
        }
        TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.Companion;
        List<TypeParameterDescriptor> declaredTypeParameters = from.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters, "from.declaredTypeParameters");
        List<TypeParameterDescriptor> list = declaredTypeParameters;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            arrayList.add(typeParameterDescriptor.getTypeConstructor());
        }
        ArrayList arrayList2 = arrayList;
        List<TypeParameterDescriptor> declaredTypeParameters2 = to.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters2, "to.declaredTypeParameters");
        List<TypeParameterDescriptor> list2 = declaredTypeParameters2;
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (TypeParameterDescriptor typeParameterDescriptor2 : list2) {
            SimpleType defaultType = typeParameterDescriptor2.getDefaultType();
            C18524p.m3843b(defaultType, "it.defaultType");
            arrayList3.add(TypeUtilsKt.asTypeProjection(defaultType));
        }
        return TypeConstructorSubstitution.Companion.createByConstructorsMap$default(companion, C18247ai.m4256a(C18282n.m4127d((Iterable) arrayList2, (Iterable) arrayList3)), false, 2, null);
    }
}
