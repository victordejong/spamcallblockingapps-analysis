package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt.class */
public final class StarProjectionImplKt {
    public static final KotlinType starProjectionType(TypeParameterDescriptor typeParameterDescriptor) {
        p.d(typeParameterDescriptor, "<this>");
        List<TypeParameterDescriptor> parameters = ((h) typeParameterDescriptor.getContainingDeclaration()).getTypeConstructor().getParameters();
        p.b(parameters, "classDescriptor.typeConstructor.parameters");
        List<TypeParameterDescriptor> list = parameters;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
        for (TypeParameterDescriptor typeParameterDescriptor2 : list) {
            arrayList.add(typeParameterDescriptor2.getTypeConstructor());
        }
        final ArrayList arrayList2 = arrayList;
        TypeSubstitutor create = TypeSubstitutor.create(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$starProjectionType$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public final TypeProjection get(TypeConstructor key) {
                p.d(key, "key");
                if (!arrayList2.contains(key)) {
                    return null;
                }
                g declarationDescriptor = key.getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
                return TypeUtils.makeStarProjection((TypeParameterDescriptor) declarationDescriptor);
            }
        });
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        p.b(upperBounds, "this.upperBounds");
        KotlinType substitute = create.substitute((KotlinType) n.e((List<? extends Object>) upperBounds), Variance.OUT_VARIANCE);
        if (substitute != null) {
            return substitute;
        }
        SimpleType i = a.d(typeParameterDescriptor).i();
        p.b(i, "builtIns.defaultBound");
        return i;
    }
}
