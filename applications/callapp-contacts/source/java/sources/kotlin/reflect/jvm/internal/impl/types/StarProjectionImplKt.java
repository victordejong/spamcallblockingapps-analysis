package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt.class */
public final class StarProjectionImplKt {
    public static final KotlinType starProjectionType(TypeParameterDescriptor typeParameterDescriptor) {
        C18524p.m3840d(typeParameterDescriptor, "<this>");
        List<TypeParameterDescriptor> parameters = ((AbstractC19130h) typeParameterDescriptor.getContainingDeclaration()).getTypeConstructor().getParameters();
        C18524p.m3843b(parameters, "classDescriptor.typeConstructor.parameters");
        List<TypeParameterDescriptor> list = parameters;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
        for (TypeParameterDescriptor typeParameterDescriptor2 : list) {
            arrayList.add(typeParameterDescriptor2.getTypeConstructor());
        }
        final ArrayList arrayList2 = arrayList;
        TypeSubstitutor create = TypeSubstitutor.create(new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt$starProjectionType$1
            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public final TypeProjection get(TypeConstructor key) {
                C18524p.m3840d(key, "key");
                if (arrayList2.contains(key)) {
                    AbstractC19129g declarationDescriptor = key.getDeclarationDescriptor();
                    Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
                    return TypeUtils.makeStarProjection((TypeParameterDescriptor) declarationDescriptor);
                }
                return null;
            }
        });
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        C18524p.m3843b(upperBounds, "this.upperBounds");
        KotlinType substitute = create.substitute((KotlinType) C18282n.m4123e((List<? extends Object>) upperBounds), Variance.OUT_VARIANCE);
        if (substitute == null) {
            SimpleType m2794i = C19756a.m1526d(typeParameterDescriptor).m2794i();
            C18524p.m3843b(m2794i, "builtIns.defaultBound");
            return m2794i;
        }
        return substitute;
    }
}
