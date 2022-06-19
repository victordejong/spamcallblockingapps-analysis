package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt.class */
public final class TypeSubstitutionKt {
    public static final SimpleType asSimpleType(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        SimpleType simpleType = unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
        if (simpleType != null) {
            return simpleType;
        }
        throw new IllegalStateException(C18524p.m3847a("This is should be simple type: ", (Object) kotlinType).toString());
    }

    public static final KotlinType replace(KotlinType kotlinType, List<? extends TypeProjection> newArguments, AbstractC18983g newAnnotations) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(newArguments, "newArguments");
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return replace$default(kotlinType, newArguments, newAnnotations, null, 4, null);
    }

    public static final KotlinType replace(KotlinType kotlinType, List<? extends TypeProjection> newArguments, AbstractC18983g newAnnotations, List<? extends TypeProjection> newArgumentsForUpperBound) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(newArguments, "newArguments");
        C18524p.m3840d(newAnnotations, "newAnnotations");
        C18524p.m3840d(newArgumentsForUpperBound, "newArgumentsForUpperBound");
        if ((newArguments.isEmpty() || newArguments == kotlinType.getArguments()) && newAnnotations == kotlinType.getAnnotations()) {
            return kotlinType;
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            FlexibleType flexibleType = (FlexibleType) unwrap;
            return KotlinTypeFactory.flexibleType(replace(flexibleType.getLowerBound(), newArguments, newAnnotations), replace(flexibleType.getUpperBound(), newArgumentsForUpperBound, newAnnotations));
        } else if (!(unwrap instanceof SimpleType)) {
            throw new NoWhenBranchMatchedException();
        } else {
            return replace((SimpleType) unwrap, newArguments, newAnnotations);
        }
    }

    public static final SimpleType replace(SimpleType simpleType, List<? extends TypeProjection> newArguments, AbstractC18983g newAnnotations) {
        C18524p.m3840d(simpleType, "<this>");
        C18524p.m3840d(newArguments, "newArguments");
        C18524p.m3840d(newAnnotations, "newAnnotations");
        if (!newArguments.isEmpty() || newAnnotations != simpleType.getAnnotations()) {
            if (newArguments.isEmpty()) {
                return simpleType.replaceAnnotations(newAnnotations);
            }
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.simpleType$default(newAnnotations, simpleType.getConstructor(), newArguments, simpleType.isMarkedNullable(), null, 16, null);
        }
        return simpleType;
    }

    public static /* synthetic */ KotlinType replace$default(KotlinType kotlinType, List list, AbstractC18983g abstractC18983g, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = kotlinType.getArguments();
        }
        if ((i & 2) != 0) {
            abstractC18983g = kotlinType.getAnnotations();
        }
        if ((i & 4) != 0) {
            list2 = list;
        }
        return replace(kotlinType, list, abstractC18983g, list2);
    }

    public static /* synthetic */ SimpleType replace$default(SimpleType simpleType, List list, AbstractC18983g abstractC18983g, int i, Object obj) {
        if ((i & 1) != 0) {
            list = simpleType.getArguments();
        }
        if ((i & 2) != 0) {
            abstractC18983g = simpleType.getAnnotations();
        }
        return replace(simpleType, (List<? extends TypeProjection>) list, abstractC18983g);
    }
}
