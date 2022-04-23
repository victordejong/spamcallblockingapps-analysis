package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt.class */
public final class TypeUtilsKt {
    public static final TypeProjection asTypeProjection(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return new TypeProjectionImpl(kotlinType);
    }

    public static final boolean contains(KotlinType kotlinType, Function1<? super UnwrappedType, Boolean> predicate) {
        p.d(kotlinType, "<this>");
        p.d(predicate, "predicate");
        return TypeUtils.contains(kotlinType, predicate);
    }

    public static final boolean containsTypeAliasParameters(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$containsTypeAliasParameters$1.INSTANCE);
    }

    public static final TypeProjection createProjection(KotlinType type, Variance projectionKind, TypeParameterDescriptor typeParameterDescriptor) {
        p.d(type, "type");
        p.d(projectionKind, "projectionKind");
        Variance variance = typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance();
        Variance variance2 = projectionKind;
        if (variance == projectionKind) {
            variance2 = Variance.INVARIANT;
        }
        return new TypeProjectionImpl(variance2, type);
    }

    public static final g getBuiltIns(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        g builtIns = kotlinType.getConstructor().getBuiltIns();
        p.b(builtIns, "constructor.builtIns");
        return builtIns;
    }

    public static final KotlinType getRepresentativeUpperBound(TypeParameterDescriptor typeParameterDescriptor) {
        Object obj;
        p.d(typeParameterDescriptor, "<this>");
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        p.b(upperBounds, "upperBounds");
        boolean isEmpty = upperBounds.isEmpty();
        if (!x.f38657a || (!isEmpty)) {
            List<KotlinType> upperBounds2 = typeParameterDescriptor.getUpperBounds();
            p.b(upperBounds2, "upperBounds");
            Iterator<T> it2 = upperBounds2.iterator();
            while (true) {
                obj = null;
                d dVar = null;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = ((KotlinType) next).getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor instanceof d) {
                    dVar = (d) declarationDescriptor;
                }
                if ((dVar == null || dVar.getKind() == e.INTERFACE || dVar.getKind() == e.ANNOTATION_CLASS) ? false : true) {
                    obj = next;
                    break;
                }
            }
            KotlinType kotlinType = (KotlinType) obj;
            if (kotlinType != null) {
                return kotlinType;
            }
            List<KotlinType> upperBounds3 = typeParameterDescriptor.getUpperBounds();
            p.b(upperBounds3, "upperBounds");
            Object e = n.e((List<? extends Object>) upperBounds3);
            p.b(e, "upperBounds.first()");
            return (KotlinType) e;
        }
        throw new AssertionError(p.a("Upper bounds should not be empty: ", (Object) typeParameterDescriptor));
    }

    public static final boolean isSubtypeOf(KotlinType kotlinType, KotlinType superType) {
        p.d(kotlinType, "<this>");
        p.d(superType, "superType");
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(kotlinType, superType);
    }

    public static final boolean isTypeAliasParameter(kotlin.reflect.jvm.internal.impl.descriptors.g gVar) {
        p.d(gVar, "<this>");
        return (gVar instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) gVar).getContainingDeclaration() instanceof ax);
    }

    public static final boolean isTypeParameter(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return TypeUtils.isTypeParameter(kotlinType);
    }

    public static final KotlinType makeNotNullable(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        p.b(makeNotNullable, "makeNotNullable(this)");
        return makeNotNullable;
    }

    public static final KotlinType makeNullable(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        KotlinType makeNullable = TypeUtils.makeNullable(kotlinType);
        p.b(makeNullable, "makeNullable(this)");
        return makeNullable;
    }

    public static final KotlinType replaceAnnotations(KotlinType kotlinType, kotlin.reflect.jvm.internal.impl.descriptors.a.g newAnnotations) {
        p.d(kotlinType, "<this>");
        p.d(newAnnotations, "newAnnotations");
        return (!kotlinType.getAnnotations().a() || !newAnnotations.a()) ? kotlinType.unwrap().replaceAnnotations(newAnnotations) : kotlinType;
    }

    public static final KotlinType replaceArgumentsWithStarProjections(KotlinType kotlinType) {
        SimpleType simpleType;
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            FlexibleType flexibleType = (FlexibleType) unwrap;
            SimpleType lowerBound = flexibleType.getLowerBound();
            SimpleType simpleType2 = lowerBound;
            if (!lowerBound.getConstructor().getParameters().isEmpty()) {
                if (lowerBound.getConstructor().getDeclarationDescriptor() == null) {
                    simpleType2 = lowerBound;
                } else {
                    List<TypeParameterDescriptor> parameters = lowerBound.getConstructor().getParameters();
                    p.b(parameters, "constructor.parameters");
                    List<TypeParameterDescriptor> list = parameters;
                    ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor : list) {
                        arrayList.add(new StarProjectionImpl(typeParameterDescriptor));
                    }
                    simpleType2 = TypeSubstitutionKt.replace$default(lowerBound, arrayList, null, 2, null);
                }
            }
            SimpleType upperBound = flexibleType.getUpperBound();
            SimpleType simpleType3 = upperBound;
            if (!upperBound.getConstructor().getParameters().isEmpty()) {
                if (upperBound.getConstructor().getDeclarationDescriptor() == null) {
                    simpleType3 = upperBound;
                } else {
                    List<TypeParameterDescriptor> parameters2 = upperBound.getConstructor().getParameters();
                    p.b(parameters2, "constructor.parameters");
                    List<TypeParameterDescriptor> list2 = parameters2;
                    ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor2 : list2) {
                        arrayList2.add(new StarProjectionImpl(typeParameterDescriptor2));
                    }
                    simpleType3 = TypeSubstitutionKt.replace$default(upperBound, arrayList2, null, 2, null);
                }
            }
            simpleType = KotlinTypeFactory.flexibleType(simpleType2, simpleType3);
        } else if (unwrap instanceof SimpleType) {
            SimpleType simpleType4 = (SimpleType) unwrap;
            SimpleType simpleType5 = simpleType4;
            if (!simpleType4.getConstructor().getParameters().isEmpty()) {
                if (simpleType4.getConstructor().getDeclarationDescriptor() == null) {
                    simpleType5 = simpleType4;
                } else {
                    List<TypeParameterDescriptor> parameters3 = simpleType4.getConstructor().getParameters();
                    p.b(parameters3, "constructor.parameters");
                    List<TypeParameterDescriptor> list3 = parameters3;
                    ArrayList arrayList3 = new ArrayList(n.a((Iterable) list3, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor3 : list3) {
                        arrayList3.add(new StarProjectionImpl(typeParameterDescriptor3));
                    }
                    simpleType5 = TypeSubstitutionKt.replace$default(simpleType4, arrayList3, null, 2, null);
                }
            }
            simpleType = simpleType5;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, unwrap);
    }

    public static final boolean requiresTypeAliasExpansion(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$requiresTypeAliasExpansion$1.INSTANCE);
    }

    public static final boolean shouldBeSubstituted(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$shouldBeSubstituted$1.INSTANCE);
    }
}
