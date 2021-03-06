package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker.class */
public final class AbstractStrictEqualityTypeChecker {
    public static final AbstractStrictEqualityTypeChecker INSTANCE = new AbstractStrictEqualityTypeChecker();

    private AbstractStrictEqualityTypeChecker() {
    }

    private final boolean strictEqualSimpleTypes(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        int argumentsCount;
        SimpleTypeMarker simpleTypeMarker3 = simpleTypeMarker;
        int argumentsCount2 = typeSystemContext.argumentsCount(simpleTypeMarker3);
        SimpleTypeMarker simpleTypeMarker4 = simpleTypeMarker2;
        if (argumentsCount2 == typeSystemContext.argumentsCount(simpleTypeMarker4) && typeSystemContext.isMarkedNullable(simpleTypeMarker) == typeSystemContext.isMarkedNullable(simpleTypeMarker2)) {
            if ((typeSystemContext.asDefinitelyNotNullType(simpleTypeMarker) == null) != (typeSystemContext.asDefinitelyNotNullType(simpleTypeMarker2) == null) || !typeSystemContext.areEqualTypeConstructors(typeSystemContext.typeConstructor(simpleTypeMarker), typeSystemContext.typeConstructor(simpleTypeMarker2))) {
                return false;
            }
            if (typeSystemContext.identicalArguments(simpleTypeMarker, simpleTypeMarker2) || (argumentsCount = typeSystemContext.argumentsCount(simpleTypeMarker3)) <= 0) {
                return true;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                int i3 = i2 + 1;
                TypeArgumentMarker argument = typeSystemContext.getArgument(simpleTypeMarker3, i2);
                TypeArgumentMarker argument2 = typeSystemContext.getArgument(simpleTypeMarker4, i2);
                if (typeSystemContext.isStarProjection(argument) != typeSystemContext.isStarProjection(argument2)) {
                    return false;
                }
                if (!typeSystemContext.isStarProjection(argument) && (typeSystemContext.getVariance(argument) != typeSystemContext.getVariance(argument2) || !strictEqualTypesInternal(typeSystemContext, typeSystemContext.getType(argument), typeSystemContext.getType(argument2)))) {
                    return false;
                }
                if (i3 >= argumentsCount) {
                    return true;
                }
                i = i3;
            }
        } else {
            return false;
        }
    }

    private final boolean strictEqualTypesInternal(TypeSystemContext typeSystemContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2) {
        if (kotlinTypeMarker == kotlinTypeMarker2) {
            return true;
        }
        SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(kotlinTypeMarker);
        SimpleTypeMarker asSimpleType2 = typeSystemContext.asSimpleType(kotlinTypeMarker2);
        if (asSimpleType != null && asSimpleType2 != null) {
            return strictEqualSimpleTypes(typeSystemContext, asSimpleType, asSimpleType2);
        }
        FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(kotlinTypeMarker);
        FlexibleTypeMarker asFlexibleType2 = typeSystemContext.asFlexibleType(kotlinTypeMarker2);
        return asFlexibleType != null && asFlexibleType2 != null && strictEqualSimpleTypes(typeSystemContext, typeSystemContext.lowerBound(asFlexibleType), typeSystemContext.lowerBound(asFlexibleType2)) && strictEqualSimpleTypes(typeSystemContext, typeSystemContext.upperBound(asFlexibleType), typeSystemContext.upperBound(asFlexibleType2));
    }

    public final boolean strictEqualTypes(TypeSystemContext context, KotlinTypeMarker a, KotlinTypeMarker b) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(a, "a");
        C18524p.m3840d(b, "b");
        return strictEqualTypesInternal(context, a, b);
    }
}
