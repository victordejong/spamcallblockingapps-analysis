package kotlin.reflect.jvm.internal.impl.types;

import java.util.HashMap;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor.class */
public class DescriptorSubstitutor {
    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String format = String.format(str, objArr);
        throw (i != 4 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    public static TypeSubstitutor substituteTypeParameters(List<TypeParameterDescriptor> list, TypeSubstitution typeSubstitution, k kVar, List<TypeParameterDescriptor> list2) {
        if (list == null) {
            $$$reportNull$$$0(0);
        }
        if (typeSubstitution == null) {
            $$$reportNull$$$0(1);
        }
        if (kVar == null) {
            $$$reportNull$$$0(2);
        }
        if (list2 == null) {
            $$$reportNull$$$0(3);
        }
        TypeSubstitutor substituteTypeParameters = substituteTypeParameters(list, typeSubstitution, kVar, list2, null);
        if (substituteTypeParameters != null) {
            if (substituteTypeParameters == null) {
                $$$reportNull$$$0(4);
            }
            return substituteTypeParameters;
        }
        throw new AssertionError("Substitution failed");
    }

    public static TypeSubstitutor substituteTypeParameters(List<TypeParameterDescriptor> list, TypeSubstitution typeSubstitution, k kVar, List<TypeParameterDescriptor> list2, boolean[] zArr) {
        if (list == null) {
            $$$reportNull$$$0(5);
        }
        if (typeSubstitution == null) {
            $$$reportNull$$$0(6);
        }
        if (kVar == null) {
            $$$reportNull$$$0(7);
        }
        if (list2 == null) {
            $$$reportNull$$$0(8);
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i = 0;
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            TypeParameterDescriptorImpl createForFurtherModification = TypeParameterDescriptorImpl.createForFurtherModification(kVar, typeParameterDescriptor.getAnnotations(), typeParameterDescriptor.isReified(), typeParameterDescriptor.getVariance(), typeParameterDescriptor.getName(), i, at.f37401a, typeParameterDescriptor.getStorageManager());
            hashMap.put(typeParameterDescriptor.getTypeConstructor(), new TypeProjectionImpl(createForFurtherModification.getDefaultType()));
            hashMap2.put(typeParameterDescriptor, createForFurtherModification);
            list2.add(createForFurtherModification);
            i++;
        }
        TypeSubstitutor createChainedSubstitutor = TypeSubstitutor.createChainedSubstitutor(typeSubstitution, TypeConstructorSubstitution.createByConstructorsMap(hashMap));
        for (TypeParameterDescriptor typeParameterDescriptor2 : list) {
            TypeParameterDescriptorImpl typeParameterDescriptorImpl = (TypeParameterDescriptorImpl) hashMap2.get(typeParameterDescriptor2);
            for (KotlinType kotlinType : typeParameterDescriptor2.getUpperBounds()) {
                KotlinType substitute = createChainedSubstitutor.substitute(kotlinType, Variance.IN_VARIANCE);
                if (substitute == null) {
                    return null;
                }
                if (!(substitute == kotlinType || zArr == null)) {
                    zArr[0] = true;
                }
                typeParameterDescriptorImpl.addUpperBound(substitute);
            }
            typeParameterDescriptorImpl.setInitialized();
        }
        return createChainedSubstitutor;
    }
}
