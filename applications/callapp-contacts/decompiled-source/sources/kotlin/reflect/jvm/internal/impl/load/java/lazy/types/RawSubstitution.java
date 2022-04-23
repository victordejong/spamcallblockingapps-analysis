package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.a.k;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
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
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution.class */
public final class RawSubstitution extends TypeSubstitution {
    public static final RawSubstitution INSTANCE = new RawSubstitution();
    private static final JavaTypeAttributes lowerTypeAttr = JavaTypeResolverKt.toAttributes$default(k.COMMON, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
    private static final JavaTypeAttributes upperTypeAttr = JavaTypeResolverKt.toAttributes$default(k.COMMON, false, null, 3, null).withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);

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

    /* JADX INFO: Access modifiers changed from: private */
    public final n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor(SimpleType simpleType, d dVar, JavaTypeAttributes javaTypeAttributes) {
        if (simpleType.getConstructor().getParameters().isEmpty()) {
            return t.a(simpleType, Boolean.FALSE);
        }
        SimpleType simpleType2 = simpleType;
        if (g.b(simpleType2)) {
            TypeProjection typeProjection = simpleType.getArguments().get(0);
            Variance projectionKind = typeProjection.getProjectionKind();
            KotlinType type = typeProjection.getType();
            p.b(type, "componentTypeProjection.type");
            List a2 = kotlin.a.n.a(new TypeProjectionImpl(projectionKind, eraseType(type)));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return t.a(KotlinTypeFactory.simpleType$default(simpleType.getAnnotations(), simpleType.getConstructor(), a2, simpleType.isMarkedNullable(), null, 16, null), Boolean.FALSE);
        } else if (KotlinTypeKt.isError(simpleType2)) {
            SimpleType createErrorType = ErrorUtils.createErrorType(p.a("Raw error type: ", (Object) simpleType.getConstructor()));
            p.b(createErrorType, "createErrorType(\"Raw error type: ${type.constructor}\")");
            return t.a(createErrorType, Boolean.FALSE);
        } else {
            h memberScope = dVar.getMemberScope(this);
            p.b(memberScope, "declaration.getMemberScope(RawSubstitution)");
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = simpleType.getAnnotations();
            TypeConstructor typeConstructor = dVar.getTypeConstructor();
            p.b(typeConstructor, "declaration.typeConstructor");
            List<TypeParameterDescriptor> parameters = dVar.getTypeConstructor().getParameters();
            p.b(parameters, "declaration.typeConstructor.parameters");
            List<TypeParameterDescriptor> list = parameters;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
            for (TypeParameterDescriptor parameter : list) {
                p.b(parameter, "parameter");
                arrayList.add(computeProjection$default(this, parameter, javaTypeAttributes, null, 4, null));
            }
            return t.a(KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(annotations, typeConstructor, arrayList, simpleType.isMarkedNullable(), memberScope, new RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(dVar, this, simpleType, javaTypeAttributes)), Boolean.TRUE);
        }
    }

    private final KotlinType eraseType(KotlinType kotlinType) {
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor;
        RawTypeImpl rawTypeImpl;
        while (true) {
            declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (!(declarationDescriptor instanceof TypeParameterDescriptor)) {
                break;
            }
            kotlinType = JavaTypeResolverKt.getErasedUpperBound$default((TypeParameterDescriptor) declarationDescriptor, null, null, 3, null);
        }
        if (declarationDescriptor instanceof d) {
            kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor2 = FlexibleTypesKt.upperIfFlexible(kotlinType).getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor2 instanceof d) {
                n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.lowerIfFlexible(kotlinType), (d) declarationDescriptor, lowerTypeAttr);
                SimpleType simpleType = eraseInflexibleBasedOnClassDescriptor.f36810a;
                boolean booleanValue = eraseInflexibleBasedOnClassDescriptor.f36811b.booleanValue();
                n<SimpleType, Boolean> eraseInflexibleBasedOnClassDescriptor2 = eraseInflexibleBasedOnClassDescriptor(FlexibleTypesKt.upperIfFlexible(kotlinType), (d) declarationDescriptor2, upperTypeAttr);
                SimpleType simpleType2 = eraseInflexibleBasedOnClassDescriptor2.f36810a;
                boolean booleanValue2 = eraseInflexibleBasedOnClassDescriptor2.f36811b.booleanValue();
                if (booleanValue || booleanValue2) {
                    rawTypeImpl = new RawTypeImpl(simpleType, simpleType2);
                } else {
                    KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                    rawTypeImpl = KotlinTypeFactory.flexibleType(simpleType, simpleType2);
                }
                return rawTypeImpl;
            }
            throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + declarationDescriptor2 + "\" while for lower it's \"" + declarationDescriptor + '\"').toString());
        }
        throw new IllegalStateException(p.a("Unexpected declaration kind: ", (Object) declarationDescriptor).toString());
    }

    public final TypeProjection computeProjection(TypeParameterDescriptor parameter, JavaTypeAttributes attr, KotlinType erasedUpperBound) {
        p.d(parameter, "parameter");
        p.d(attr, "attr");
        p.d(erasedUpperBound, "erasedUpperBound");
        int i = WhenMappings.$EnumSwitchMapping$0[attr.getFlexibility().ordinal()];
        if (i == 1) {
            return new TypeProjectionImpl(Variance.INVARIANT, erasedUpperBound);
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        } else if (!parameter.getVariance().getAllowsOutPosition()) {
            return new TypeProjectionImpl(Variance.INVARIANT, a.d(parameter).f());
        } else {
            List<TypeParameterDescriptor> parameters = erasedUpperBound.getConstructor().getParameters();
            p.b(parameters, "erasedUpperBound.constructor.parameters");
            return parameters.isEmpty() ^ true ? new TypeProjectionImpl(Variance.OUT_VARIANCE, erasedUpperBound) : JavaTypeResolverKt.makeStarProjection(parameter, attr);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjectionImpl get(KotlinType key) {
        p.d(key, "key");
        return new TypeProjectionImpl(eraseType(key));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean isEmpty() {
        return false;
    }
}
