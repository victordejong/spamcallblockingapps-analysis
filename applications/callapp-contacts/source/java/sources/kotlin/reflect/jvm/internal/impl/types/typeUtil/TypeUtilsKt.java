package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
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
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt.class */
public final class TypeUtilsKt {
    public static final TypeProjection asTypeProjection(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return new TypeProjectionImpl(kotlinType);
    }

    public static final boolean contains(KotlinType kotlinType, Function1<? super UnwrappedType, Boolean> predicate) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(predicate, "predicate");
        return TypeUtils.contains(kotlinType, predicate);
    }

    public static final boolean containsTypeAliasParameters(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$containsTypeAliasParameters$1.INSTANCE);
    }

    public static final TypeProjection createProjection(KotlinType type, Variance projectionKind, TypeParameterDescriptor typeParameterDescriptor) {
        C18524p.m3840d(type, "type");
        C18524p.m3840d(projectionKind, "projectionKind");
        Variance variance = typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance();
        Variance variance2 = projectionKind;
        if (variance == projectionKind) {
            variance2 = Variance.INVARIANT;
        }
        return new TypeProjectionImpl(variance2, type);
    }

    public static final AbstractC18940g getBuiltIns(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC18940g builtIns = kotlinType.getConstructor().getBuiltIns();
        C18524p.m3843b(builtIns, "constructor.builtIns");
        return builtIns;
    }

    public static final KotlinType getRepresentativeUpperBound(TypeParameterDescriptor typeParameterDescriptor) {
        Object obj;
        C18524p.m3840d(typeParameterDescriptor, "<this>");
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        C18524p.m3843b(upperBounds, "upperBounds");
        boolean isEmpty = upperBounds.isEmpty();
        if (!C20130x.f66532a || (!isEmpty)) {
            List<KotlinType> upperBounds2 = typeParameterDescriptor.getUpperBounds();
            C18524p.m3843b(upperBounds2, "upperBounds");
            Iterator<T> it2 = upperBounds2.iterator();
            while (true) {
                obj = null;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                AbstractC19129g declarationDescriptor = ((KotlinType) next).getConstructor().getDeclarationDescriptor();
                AbstractC19070d abstractC19070d = null;
                if (declarationDescriptor instanceof AbstractC19070d) {
                    abstractC19070d = (AbstractC19070d) declarationDescriptor;
                }
                if ((abstractC19070d == null || abstractC19070d.getKind() == EnumC19127e.INTERFACE || abstractC19070d.getKind() == EnumC19127e.ANNOTATION_CLASS) ? false : true) {
                    obj = next;
                    break;
                }
            }
            KotlinType kotlinType = (KotlinType) obj;
            if (kotlinType != null) {
                return kotlinType;
            }
            List<KotlinType> upperBounds3 = typeParameterDescriptor.getUpperBounds();
            C18524p.m3843b(upperBounds3, "upperBounds");
            Object e = C18282n.m4123e((List<? extends Object>) upperBounds3);
            C18524p.m3843b(e, "upperBounds.first()");
            return (KotlinType) e;
        }
        throw new AssertionError(C18524p.m3847a("Upper bounds should not be empty: ", (Object) typeParameterDescriptor));
    }

    public static final boolean isSubtypeOf(KotlinType kotlinType, KotlinType superType) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(superType, "superType");
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(kotlinType, superType);
    }

    public static final boolean isTypeAliasParameter(AbstractC19129g abstractC19129g) {
        C18524p.m3840d(abstractC19129g, "<this>");
        return (abstractC19129g instanceof TypeParameterDescriptor) && (((TypeParameterDescriptor) abstractC19129g).getContainingDeclaration() instanceof AbstractC19033ax);
    }

    public static final boolean isTypeParameter(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return TypeUtils.isTypeParameter(kotlinType);
    }

    public static final KotlinType makeNotNullable(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        C18524p.m3843b(makeNotNullable, "makeNotNullable(this)");
        return makeNotNullable;
    }

    public static final KotlinType makeNullable(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        KotlinType makeNullable = TypeUtils.makeNullable(kotlinType);
        C18524p.m3843b(makeNullable, "makeNullable(this)");
        return makeNullable;
    }

    public static final KotlinType replaceAnnotations(KotlinType kotlinType, AbstractC18983g newAnnotations) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return (!kotlinType.getAnnotations().mo1275a() || !newAnnotations.mo1275a()) ? kotlinType.unwrap().replaceAnnotations(newAnnotations) : kotlinType;
    }

    public static final KotlinType replaceArgumentsWithStarProjections(KotlinType kotlinType) {
        SimpleType simpleType;
        C18524p.m3840d(kotlinType, "<this>");
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
                    C18524p.m3843b(parameters, "constructor.parameters");
                    List<TypeParameterDescriptor> list = parameters;
                    ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
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
                    C18524p.m3843b(parameters2, "constructor.parameters");
                    List<TypeParameterDescriptor> list2 = parameters2;
                    ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor2 : list2) {
                        arrayList2.add(new StarProjectionImpl(typeParameterDescriptor2));
                    }
                    simpleType3 = TypeSubstitutionKt.replace$default(upperBound, arrayList2, null, 2, null);
                }
            }
            simpleType = KotlinTypeFactory.flexibleType(simpleType2, simpleType3);
        } else if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        } else {
            SimpleType simpleType4 = (SimpleType) unwrap;
            SimpleType simpleType5 = simpleType4;
            if (!simpleType4.getConstructor().getParameters().isEmpty()) {
                if (simpleType4.getConstructor().getDeclarationDescriptor() == null) {
                    simpleType5 = simpleType4;
                } else {
                    List<TypeParameterDescriptor> parameters3 = simpleType4.getConstructor().getParameters();
                    C18524p.m3843b(parameters3, "constructor.parameters");
                    List<TypeParameterDescriptor> list3 = parameters3;
                    ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list3, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor3 : list3) {
                        arrayList3.add(new StarProjectionImpl(typeParameterDescriptor3));
                    }
                    simpleType5 = TypeSubstitutionKt.replace$default(simpleType4, arrayList3, null, 2, null);
                }
            }
            simpleType = simpleType5;
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, unwrap);
    }

    public static final boolean requiresTypeAliasExpansion(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$requiresTypeAliasExpansion$1.INSTANCE);
    }

    public static final boolean shouldBeSubstituted(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return contains(kotlinType, TypeUtilsKt$shouldBeSubstituted$1.INSTANCE);
    }
}
