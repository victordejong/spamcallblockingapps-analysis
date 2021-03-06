package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/IntersectionTypeKt.class */
public final class IntersectionTypeKt {
    public static final UnwrappedType intersectTypes(List<? extends UnwrappedType> types) {
        SimpleType simpleType;
        C18524p.m3840d(types, "types");
        int size = types.size();
        if (size != 0) {
            if (size == 1) {
                return (UnwrappedType) C18282n.m4115i((List<? extends Object>) types);
            }
            List<? extends UnwrappedType> list = types;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            boolean z = false;
            boolean z2 = false;
            for (UnwrappedType unwrappedType : list) {
                z = z || KotlinTypeKt.isError(unwrappedType);
                if (unwrappedType instanceof SimpleType) {
                    simpleType = (SimpleType) unwrappedType;
                } else if (!(unwrappedType instanceof FlexibleType)) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    if (DynamicTypesKt.isDynamic(unwrappedType)) {
                        return unwrappedType;
                    }
                    simpleType = ((FlexibleType) unwrappedType).getLowerBound();
                    z2 = true;
                }
                arrayList.add(simpleType);
            }
            ArrayList arrayList2 = arrayList;
            if (z) {
                SimpleType createErrorType = ErrorUtils.createErrorType(C18524p.m3847a("Intersection of error types: ", (Object) types));
                C18524p.m3843b(createErrorType, "createErrorType(\"Intersection of error types: $types\")");
                return createErrorType;
            } else if (!z2) {
                return TypeIntersector.INSTANCE.intersectTypes$descriptors(arrayList2);
            } else {
                ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list, 10));
                for (UnwrappedType unwrappedType2 : list) {
                    arrayList3.add(FlexibleTypesKt.upperIfFlexible(unwrappedType2));
                }
                ArrayList arrayList4 = arrayList3;
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                return KotlinTypeFactory.flexibleType(TypeIntersector.INSTANCE.intersectTypes$descriptors(arrayList2), TypeIntersector.INSTANCE.intersectTypes$descriptors(arrayList4));
            }
        }
        throw new IllegalStateException("Expected some types".toString());
    }
}
