package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/j.class */
public final class j {
    public static final TypeConstructorSubstitution a(d from, d to) {
        p.d(from, "from");
        p.d(to, "to");
        boolean z = from.getDeclaredTypeParameters().size() == to.getDeclaredTypeParameters().size();
        if (!x.f38657a || z) {
            TypeConstructorSubstitution.Companion companion = TypeConstructorSubstitution.Companion;
            List<TypeParameterDescriptor> declaredTypeParameters = from.getDeclaredTypeParameters();
            p.b(declaredTypeParameters, "from.declaredTypeParameters");
            List<TypeParameterDescriptor> list = declaredTypeParameters;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (TypeParameterDescriptor typeParameterDescriptor : list) {
                arrayList.add(typeParameterDescriptor.getTypeConstructor());
            }
            ArrayList arrayList2 = arrayList;
            List<TypeParameterDescriptor> declaredTypeParameters2 = to.getDeclaredTypeParameters();
            p.b(declaredTypeParameters2, "to.declaredTypeParameters");
            List<TypeParameterDescriptor> list2 = declaredTypeParameters2;
            ArrayList arrayList3 = new ArrayList(n.a((Iterable) list2, 10));
            for (TypeParameterDescriptor typeParameterDescriptor2 : list2) {
                SimpleType defaultType = typeParameterDescriptor2.getDefaultType();
                p.b(defaultType, "it.defaultType");
                arrayList3.add(TypeUtilsKt.asTypeProjection(defaultType));
            }
            return TypeConstructorSubstitution.Companion.createByConstructorsMap$default(companion, ai.a(n.d((Iterable) arrayList2, (Iterable) arrayList3)), false, 2, null);
        }
        throw new AssertionError(from + " and " + to + " should have same number of type parameters, but " + from.getDeclaredTypeParameters().size() + " / " + to.getDeclaredTypeParameters().size() + " found");
    }
}
