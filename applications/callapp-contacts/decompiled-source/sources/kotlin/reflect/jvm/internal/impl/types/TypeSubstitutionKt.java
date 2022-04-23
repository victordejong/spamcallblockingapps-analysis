package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt.class */
public final class TypeSubstitutionKt {
    public static final SimpleType asSimpleType(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        SimpleType simpleType = unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
        if (simpleType != null) {
            return simpleType;
        }
        throw new IllegalStateException(p.a("This is should be simple type: ", (Object) kotlinType).toString());
    }

    public static final KotlinType replace(KotlinType kotlinType, List<? extends TypeProjection> newArguments, g newAnnotations) {
        p.d(kotlinType, "<this>");
        p.d(newArguments, "newArguments");
        p.d(newAnnotations, "newAnnotations");
        return replace$default(kotlinType, newArguments, newAnnotations, null, 4, null);
    }

    public static final KotlinType replace(KotlinType kotlinType, List<? extends TypeProjection> newArguments, g newAnnotations, List<? extends TypeProjection> newArgumentsForUpperBound) {
        p.d(kotlinType, "<this>");
        p.d(newArguments, "newArguments");
        p.d(newAnnotations, "newAnnotations");
        p.d(newArgumentsForUpperBound, "newArgumentsForUpperBound");
        if ((newArguments.isEmpty() || newArguments == kotlinType.getArguments()) && newAnnotations == kotlinType.getAnnotations()) {
            return kotlinType;
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            FlexibleType flexibleType = (FlexibleType) unwrap;
            return KotlinTypeFactory.flexibleType(replace(flexibleType.getLowerBound(), newArguments, newAnnotations), replace(flexibleType.getUpperBound(), newArgumentsForUpperBound, newAnnotations));
        } else if (unwrap instanceof SimpleType) {
            return replace((SimpleType) unwrap, newArguments, newAnnotations);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final SimpleType replace(SimpleType simpleType, List<? extends TypeProjection> newArguments, g newAnnotations) {
        p.d(simpleType, "<this>");
        p.d(newArguments, "newArguments");
        p.d(newAnnotations, "newAnnotations");
        if (newArguments.isEmpty() && newAnnotations == simpleType.getAnnotations()) {
            return simpleType;
        }
        if (newArguments.isEmpty()) {
            return simpleType.replaceAnnotations(newAnnotations);
        }
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleType$default(newAnnotations, simpleType.getConstructor(), newArguments, simpleType.isMarkedNullable(), null, 16, null);
    }

    public static /* synthetic */ KotlinType replace$default(KotlinType kotlinType, List list, g gVar, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = kotlinType.getArguments();
        }
        if ((i & 2) != 0) {
            gVar = kotlinType.getAnnotations();
        }
        if ((i & 4) != 0) {
            list2 = list;
        }
        return replace(kotlinType, list, gVar, list2);
    }

    public static /* synthetic */ SimpleType replace$default(SimpleType simpleType, List list, g gVar, int i, Object obj) {
        if ((i & 1) != 0) {
            list = simpleType.getArguments();
        }
        if ((i & 2) != 0) {
            gVar = simpleType.getAnnotations();
        }
        return replace(simpleType, (List<? extends TypeProjection>) list, gVar);
    }
}
