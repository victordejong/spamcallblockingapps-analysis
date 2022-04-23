package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext.class */
public interface TypeSystemContext extends TypeSystemOptimizationContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static List<SimpleTypeMarker> fastCorrespondingSupertypes(TypeSystemContext typeSystemContext, SimpleTypeMarker receiver, TypeConstructorMarker constructor) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            p.d(constructor, "constructor");
            return null;
        }

        public static TypeArgumentMarker get(TypeSystemContext typeSystemContext, TypeArgumentListMarker receiver, int i) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return typeSystemContext.getArgument((KotlinTypeMarker) receiver, i);
            }
            if (receiver instanceof ArgumentList) {
                TypeArgumentMarker typeArgumentMarker = ((ArgumentList) receiver).get(i);
                p.b(typeArgumentMarker, "get(index)");
                return typeArgumentMarker;
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeArgumentMarker getArgumentOrNull(TypeSystemContext typeSystemContext, SimpleTypeMarker receiver, int i) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            boolean z = false;
            if (i >= 0) {
                z = false;
                if (i < typeSystemContext.argumentsCount(receiver)) {
                    z = true;
                }
            }
            if (z) {
                return typeSystemContext.getArgument(receiver, i);
            }
            return null;
        }

        public static boolean hasFlexibleNullability(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            return typeSystemContext.isMarkedNullable(typeSystemContext.lowerBoundIfFlexible(receiver)) != typeSystemContext.isMarkedNullable(typeSystemContext.upperBoundIfFlexible(receiver));
        }

        public static boolean identicalArguments(TypeSystemContext typeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
            return TypeSystemOptimizationContext.DefaultImpls.identicalArguments(typeSystemContext, simpleTypeMarker, simpleTypeMarker2);
        }

        public static boolean isClassType(TypeSystemContext typeSystemContext, SimpleTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            return typeSystemContext.isClassTypeConstructor(typeSystemContext.typeConstructor(receiver));
        }

        public static boolean isDefinitelyNotNullType(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            return (asSimpleType == null ? null : typeSystemContext.asDefinitelyNotNullType(asSimpleType)) != null;
        }

        public static boolean isDynamic(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            return (asFlexibleType == null ? null : typeSystemContext.asDynamicType(asFlexibleType)) != null;
        }

        public static boolean isIntegerLiteralType(TypeSystemContext typeSystemContext, SimpleTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            return typeSystemContext.isIntegerLiteralTypeConstructor(typeSystemContext.typeConstructor(receiver));
        }

        public static boolean isMarkedNullable(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            return (receiver instanceof SimpleTypeMarker) && typeSystemContext.isMarkedNullable((SimpleTypeMarker) receiver);
        }

        public static boolean isNothing(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            return typeSystemContext.isNothingConstructor(typeSystemContext.typeConstructor(receiver)) && !typeSystemContext.isNullableType(receiver);
        }

        public static SimpleTypeMarker lowerBoundIfFlexible(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            if (asFlexibleType != null) {
                return typeSystemContext.lowerBound(asFlexibleType);
            }
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            p.a(asSimpleType);
            return asSimpleType;
        }

        public static int size(TypeSystemContext typeSystemContext, TypeArgumentListMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return typeSystemContext.argumentsCount((KotlinTypeMarker) receiver);
            }
            if (receiver instanceof ArgumentList) {
                return ((ArgumentList) receiver).size();
            }
            throw new IllegalStateException(("unknown type argument list type: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeConstructorMarker typeConstructor(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            SimpleTypeMarker simpleTypeMarker = asSimpleType;
            if (asSimpleType == null) {
                simpleTypeMarker = typeSystemContext.lowerBoundIfFlexible(receiver);
            }
            return typeSystemContext.typeConstructor(simpleTypeMarker);
        }

        public static SimpleTypeMarker upperBoundIfFlexible(TypeSystemContext typeSystemContext, KotlinTypeMarker receiver) {
            p.d(typeSystemContext, "this");
            p.d(receiver, "receiver");
            FlexibleTypeMarker asFlexibleType = typeSystemContext.asFlexibleType(receiver);
            if (asFlexibleType != null) {
                return typeSystemContext.upperBound(asFlexibleType);
            }
            SimpleTypeMarker asSimpleType = typeSystemContext.asSimpleType(receiver);
            p.a(asSimpleType);
            return asSimpleType;
        }
    }

    boolean areEqualTypeConstructors(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2);

    int argumentsCount(KotlinTypeMarker kotlinTypeMarker);

    TypeArgumentListMarker asArgumentList(SimpleTypeMarker simpleTypeMarker);

    CapturedTypeMarker asCapturedType(SimpleTypeMarker simpleTypeMarker);

    DefinitelyNotNullTypeMarker asDefinitelyNotNullType(SimpleTypeMarker simpleTypeMarker);

    DynamicTypeMarker asDynamicType(FlexibleTypeMarker flexibleTypeMarker);

    FlexibleTypeMarker asFlexibleType(KotlinTypeMarker kotlinTypeMarker);

    SimpleTypeMarker asSimpleType(KotlinTypeMarker kotlinTypeMarker);

    TypeArgumentMarker asTypeArgument(KotlinTypeMarker kotlinTypeMarker);

    SimpleTypeMarker captureFromArguments(SimpleTypeMarker simpleTypeMarker, CaptureStatus captureStatus);

    TypeArgumentMarker get(TypeArgumentListMarker typeArgumentListMarker, int i);

    TypeArgumentMarker getArgument(KotlinTypeMarker kotlinTypeMarker, int i);

    TypeParameterMarker getParameter(TypeConstructorMarker typeConstructorMarker, int i);

    KotlinTypeMarker getType(TypeArgumentMarker typeArgumentMarker);

    TypeVariance getVariance(TypeArgumentMarker typeArgumentMarker);

    TypeVariance getVariance(TypeParameterMarker typeParameterMarker);

    KotlinTypeMarker intersectTypes(List<? extends KotlinTypeMarker> list);

    boolean isAnyConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isClassTypeConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isCommonFinalClassConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isDenotable(TypeConstructorMarker typeConstructorMarker);

    boolean isError(KotlinTypeMarker kotlinTypeMarker);

    boolean isIntegerLiteralTypeConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isIntersection(TypeConstructorMarker typeConstructorMarker);

    boolean isMarkedNullable(KotlinTypeMarker kotlinTypeMarker);

    boolean isMarkedNullable(SimpleTypeMarker simpleTypeMarker);

    boolean isNothingConstructor(TypeConstructorMarker typeConstructorMarker);

    boolean isNullableType(KotlinTypeMarker kotlinTypeMarker);

    boolean isPrimitiveType(SimpleTypeMarker simpleTypeMarker);

    boolean isProjectionNotNull(CapturedTypeMarker capturedTypeMarker);

    boolean isSingleClassifierType(SimpleTypeMarker simpleTypeMarker);

    boolean isStarProjection(TypeArgumentMarker typeArgumentMarker);

    boolean isStubType(SimpleTypeMarker simpleTypeMarker);

    SimpleTypeMarker lowerBound(FlexibleTypeMarker flexibleTypeMarker);

    SimpleTypeMarker lowerBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker);

    KotlinTypeMarker lowerType(CapturedTypeMarker capturedTypeMarker);

    KotlinTypeMarker makeDefinitelyNotNullOrNotNull(KotlinTypeMarker kotlinTypeMarker);

    SimpleTypeMarker original(DefinitelyNotNullTypeMarker definitelyNotNullTypeMarker);

    int parametersCount(TypeConstructorMarker typeConstructorMarker);

    Collection<KotlinTypeMarker> possibleIntegerTypes(SimpleTypeMarker simpleTypeMarker);

    int size(TypeArgumentListMarker typeArgumentListMarker);

    Collection<KotlinTypeMarker> supertypes(TypeConstructorMarker typeConstructorMarker);

    TypeConstructorMarker typeConstructor(KotlinTypeMarker kotlinTypeMarker);

    TypeConstructorMarker typeConstructor(SimpleTypeMarker simpleTypeMarker);

    SimpleTypeMarker upperBound(FlexibleTypeMarker flexibleTypeMarker);

    SimpleTypeMarker upperBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker);

    KotlinTypeMarker withNullability(KotlinTypeMarker kotlinTypeMarker, boolean z);

    SimpleTypeMarker withNullability(SimpleTypeMarker simpleTypeMarker, boolean z);
}
