package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution.class */
public final class RawSubstitution extends TypeSubstitution {
    public static final RawSubstitution INSTANCE = new RawSubstitution();
    private static final JavaTypeAttributes lowerTypeAttr = JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
    private static final JavaTypeAttributes upperTypeAttr = JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[JavaTypeFlexibility.values().length];
            iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
            iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
            iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private RawSubstitution() {
    }

    public static /* synthetic */ TypeProjection computeProjection$default(RawSubstitution rawSubstitution, TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes, KotlinType kotlinType, int i, Object obj) {
        if ((i & 4) != 0) {
            kotlinType = JavaTypeResolverKt.getErasedUpperBound$default(typeParameterDescriptor, null, null, 3, null);
        }
        return rawSubstitution.computeProjection(typeParameterDescriptor, javaTypeAttributes, kotlinType);
    }

    public final C18538n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor(SimpleType simpleType, AbstractC19070d abstractC19070d, JavaTypeAttributes javaTypeAttributes) {
        if (simpleType.getConstructor().getParameters().isEmpty()) {
            return C20126t.m1103a(simpleType, Boolean.FALSE);
        }
        SimpleType simpleType2 = simpleType;
        if (AbstractC18940g.m2815b(simpleType2)) {
            TypeProjection typeProjection = simpleType.getArguments().get(0);
            Variance projectionKind = typeProjection.getProjectionKind();
            KotlinType type = typeProjection.getType();
            C18524p.m3843b(type, "componentTypeProjection.type");
            List a = C18282n.m4176a(new TypeProjectionImpl(projectionKind, eraseType(type)));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return C20126t.m1103a(KotlinTypeFactory.simpleType$default(simpleType.getAnnotations(), simpleType.getConstructor(), a, simpleType.isMarkedNullable(), null, 16, null), Boolean.FALSE);
        } else if (KotlinTypeKt.isError(simpleType2)) {
            SimpleType createErrorType = ErrorUtils.createErrorType(C18524p.m3847a("Raw error type: ", (Object) simpleType.getConstructor()));
            C18524p.m3843b(createErrorType, "createErrorType(\"Raw error type: ${type.constructor}\")");
            return C20126t.m1103a(createErrorType, Boolean.FALSE);
        } else {
            AbstractC19834h memberScope = abstractC19070d.getMemberScope(this);
            C18524p.m3843b(memberScope, "declaration.getMemberScope(RawSubstitution)");
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            AbstractC18983g annotations = simpleType.getAnnotations();
            TypeConstructor typeConstructor = abstractC19070d.getTypeConstructor();
            C18524p.m3843b(typeConstructor, "declaration.typeConstructor");
            List<TypeParameterDescriptor> parameters = abstractC19070d.getTypeConstructor().getParameters();
            C18524p.m3843b(parameters, "declaration.typeConstructor.parameters");
            List<TypeParameterDescriptor> list = parameters;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (TypeParameterDescriptor parameter : list) {
                C18524p.m3843b(parameter, "parameter");
                arrayList.add(computeProjection$default(this, parameter, javaTypeAttributes, null, 4, null));
            }
            return C20126t.m1103a(KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(annotations, typeConstructor, arrayList, simpleType.isMarkedNullable(), memberScope, new RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(abstractC19070d, this, simpleType, javaTypeAttributes)), Boolean.TRUE);
        }
    }

    private final KotlinType eraseType(KotlinType kotlinType) {
        AbstractC19129g declarationDescriptor;
        UnwrappedType unwrappedType;
        while (true) {
            declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (!(declarationDescriptor instanceof TypeParameterDescriptor)) {
                break;
            }
            kotlinType = JavaTypeResolverKt.getErasedUpperBound$default((TypeParameterDescriptor) declarationDescriptor, null, null, 3, null);
        }
        if (declarationDescriptor instanceof AbstractC19070d) {
            AbstractC19129g declarationDescriptor2 = FlexibleTypesKt.upperIfFlexible(kotlinType).getConstructor().getDeclarationDescriptor();
            if (!(declarationDescriptor2 instanceof AbstractC19070d)) {
                throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + declarationDescriptor2 + "\" while for lower it's \"" + declarationDescriptor + '\"').toString());
            }
            C18538n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.lowerIfFlexible(kotlinType), (AbstractC19070d) declarationDescriptor, lowerTypeAttr);
            SimpleType simpleType = eraseInflexibleBasedOnClassDescriptor.f63624a;
            boolean booleanValue = eraseInflexibleBasedOnClassDescriptor.f63625b.booleanValue();
            C18538n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor2 = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.upperIfFlexible(kotlinType), (AbstractC19070d) declarationDescriptor2, upperTypeAttr);
            SimpleType simpleType2 = eraseInflexibleBasedOnClassDescriptor2.f63624a;
            boolean booleanValue2 = eraseInflexibleBasedOnClassDescriptor2.f63625b.booleanValue();
            if (booleanValue || booleanValue2) {
                unwrappedType = new RawTypeImpl(simpleType, simpleType2);
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                unwrappedType = KotlinTypeFactory.flexibleType(simpleType, simpleType2);
            }
            return unwrappedType;
        }
        throw new IllegalStateException(C18524p.m3847a("Unexpected declaration kind: ", (Object) declarationDescriptor).toString());
    }

    public final TypeProjection computeProjection(TypeParameterDescriptor parameter, JavaTypeAttributes attr, KotlinType erasedUpperBound) {
        C18524p.m3840d(parameter, "parameter");
        C18524p.m3840d(attr, "attr");
        C18524p.m3840d(erasedUpperBound, "erasedUpperBound");
        int i = WhenMappings.$EnumSwitchMapping$0[attr.getFlexibility().ordinal()];
        if (i != 1) {
            if (i != 2 && i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            if (!parameter.getVariance().getAllowsOutPosition()) {
                return new TypeProjectionImpl(Variance.INVARIANT, C19756a.m1526d(parameter).m2800f());
            }
            List<TypeParameterDescriptor> parameters = erasedUpperBound.getConstructor().getParameters();
            C18524p.m3843b(parameters, "erasedUpperBound.constructor.parameters");
            return parameters.isEmpty() ^ true ? new TypeProjectionImpl(Variance.OUT_VARIANCE, erasedUpperBound) : JavaTypeResolverKt.makeStarProjection(parameter, attr);
        }
        return new TypeProjectionImpl(Variance.INVARIANT, erasedUpperBound);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjectionImpl get(KotlinType key) {
        C18524p.m3840d(key, "key");
        return new TypeProjectionImpl(eraseType(key));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean isEmpty() {
        return false;
    }
}
