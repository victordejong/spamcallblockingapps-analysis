package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.e;
import kotlin.reflect.jvm.internal.impl.types.AbstractStubType;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.DynamicType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DynamicTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContextKt;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemInferenceExtensionContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext.class */
public interface ClassicTypeSystemContext extends TypeSystemCommonBackendContext, TypeSystemInferenceExtensionContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static boolean areEqualTypeConstructors(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker c1, TypeConstructorMarker c2) {
            p.d(classicTypeSystemContext, "this");
            p.d(c1, "c1");
            p.d(c2, "c2");
            if (!(c1 instanceof TypeConstructor)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c1 + ", " + ac.b(c1.getClass())).toString());
            } else if (c2 instanceof TypeConstructor) {
                return p.a(c1, c2);
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c2 + ", " + ac.b(c2.getClass())).toString());
            }
        }

        public static int argumentsCount(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeArgumentListMarker asArgumentList(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return (TypeArgumentListMarker) receiver;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static CapturedTypeMarker asCapturedType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof NewCapturedType ? (NewCapturedType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static DefinitelyNotNullTypeMarker asDefinitelyNotNullType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof DefinitelyNotNullType ? (DefinitelyNotNullType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static DynamicTypeMarker asDynamicType(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return receiver instanceof DynamicType ? (DynamicType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static FlexibleTypeMarker asFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                return unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker asSimpleType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                return unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeArgumentMarker asTypeArgument(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtilsKt.asTypeProjection((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker captureFromArguments(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker type, CaptureStatus status) {
            p.d(classicTypeSystemContext, "this");
            p.d(type, "type");
            p.d(status, "status");
            if (type instanceof SimpleType) {
                return NewCapturedTypeKt.captureFromArguments((SimpleType) type, status);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + ac.b(type.getClass())).toString());
        }

        public static KotlinTypeMarker createFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker lowerBound, SimpleTypeMarker upperBound) {
            p.d(classicTypeSystemContext, "this");
            p.d(lowerBound, "lowerBound");
            p.d(upperBound, "upperBound");
            if (!(lowerBound instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + ac.b(classicTypeSystemContext.getClass())).toString());
            } else if (upperBound instanceof SimpleType) {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                return KotlinTypeFactory.flexibleType((SimpleType) lowerBound, (SimpleType) upperBound);
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + ac.b(classicTypeSystemContext.getClass())).toString());
            }
        }

        public static TypeArgumentMarker get(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentListMarker typeArgumentListMarker, int i) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.get(classicTypeSystemContext, typeArgumentListMarker, i);
        }

        public static TypeArgumentMarker getArgument(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, int i) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().get(i);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static c getClassFqNameUnsafe(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return a.a((k) ((d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeParameterMarker getParameter(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver, int i) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                TypeParameterDescriptor typeParameterDescriptor = ((TypeConstructor) receiver).getParameters().get(i);
                p.b(typeParameterDescriptor, "this.parameters[index]");
                return typeParameterDescriptor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static h getPrimitiveArrayType(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return kotlin.reflect.jvm.internal.impl.builtins.g.d((k) ((d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static h getPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return kotlin.reflect.jvm.internal.impl.builtins.g.c((k) ((d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getRepresentativeUpperBound(ClassicTypeSystemContext classicTypeSystemContext, TypeParameterMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                return TypeUtilsKt.getRepresentativeUpperBound((TypeParameterDescriptor) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getSubstitutedUnderlyingType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return e.b((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getType(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).getType().unwrap();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeParameterMarker getTypeParameterClassifier(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                return declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                Variance projectionKind = ((TypeProjection) receiver).getProjectionKind();
                p.b(projectionKind, "this.projectionKind");
                return TypeSystemContextKt.convertVariance(projectionKind);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, TypeParameterMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                Variance variance = ((TypeParameterDescriptor) receiver).getVariance();
                p.b(variance, "this.variance");
                return TypeSystemContextKt.convertVariance(variance);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean hasAnnotation(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, b fqName) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            p.d(fqName, "fqName");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getAnnotations().b(fqName);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean identicalArguments(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker a2, SimpleTypeMarker b2) {
            p.d(classicTypeSystemContext, "this");
            p.d(a2, "a");
            p.d(b2, "b");
            if (!(a2 instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a2 + ", " + ac.b(a2.getClass())).toString());
            } else if (b2 instanceof SimpleType) {
                return ((SimpleType) a2).getArguments() == ((SimpleType) b2).getArguments();
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b2 + ", " + ac.b(b2.getClass())).toString());
            }
        }

        public static KotlinTypeMarker intersectTypes(ClassicTypeSystemContext classicTypeSystemContext, List<? extends KotlinTypeMarker> types) {
            p.d(classicTypeSystemContext, "this");
            p.d(types, "types");
            return IntersectionTypeKt.intersectTypes(types);
        }

        public static boolean isAnyConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.a((TypeConstructor) receiver, j.a.f37321b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isClassTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getDeclarationDescriptor() instanceof d;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isCommonFinalClassConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                d dVar = declarationDescriptor instanceof d ? (d) declarationDescriptor : null;
                return (dVar == null || !z.a(dVar) || dVar.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_ENTRY || dVar.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isDenotable(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).isDenotable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isError(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return KotlinTypeKt.isError((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isInlineClass(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Boolean bool = null;
                d dVar = declarationDescriptor instanceof d ? (d) declarationDescriptor : null;
                if (dVar != null) {
                    bool = Boolean.valueOf(e.a((k) dVar));
                }
                return p.a(bool, Boolean.TRUE);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isIntegerLiteralTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isIntersection(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntersectionTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.isMarkedNullable(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).isMarkedNullable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isNothingConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.a((TypeConstructor) receiver, j.a.f37322c);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isNullableType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtils.isNullableType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return kotlin.reflect.jvm.internal.impl.builtins.g.d((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isProjectionNotNull(ClassicTypeSystemContext classicTypeSystemContext, CapturedTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).isProjectionNotNull();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isSingleClassifierType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (!(receiver instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
            } else if (KotlinTypeKt.isError((KotlinType) receiver)) {
                return false;
            } else {
                SimpleType simpleType = (SimpleType) receiver;
                if (!(simpleType.getConstructor().getDeclarationDescriptor() instanceof ax)) {
                    return simpleType.getConstructor().getDeclarationDescriptor() != null || (receiver instanceof CapturedType) || (receiver instanceof NewCapturedType) || (receiver instanceof DefinitelyNotNullType) || (simpleType.getConstructor() instanceof IntegerLiteralTypeConstructor);
                }
                return false;
            }
        }

        public static boolean isStarProjection(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).isStarProjection();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isStubType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof AbstractStubType;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static boolean isUnderKotlinPackage(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                return p.a(declarationDescriptor == null ? null : Boolean.valueOf(kotlin.reflect.jvm.internal.impl.builtins.g.b(declarationDescriptor)), Boolean.TRUE);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker lowerBound(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getLowerBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker lowerBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.lowerBoundIfFlexible(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static KotlinTypeMarker lowerType(ClassicTypeSystemContext classicTypeSystemContext, CapturedTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).getLowerType();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker makeDefinitelyNotNullOrNotNull(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            UnwrappedType makeDefinitelyNotNullOrNotNullInternal;
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof UnwrappedType) {
                makeDefinitelyNotNullOrNotNullInternal = ClassicTypeSystemContextKt.makeDefinitelyNotNullOrNotNullInternal((UnwrappedType) receiver);
                return makeDefinitelyNotNullOrNotNullInternal;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker makeNullable(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemCommonBackendContext.DefaultImpls.makeNullable(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static AbstractTypeCheckerContext newBaseTypeCheckerContext(ClassicTypeSystemContext classicTypeSystemContext, boolean z, boolean z2) {
            p.d(classicTypeSystemContext, "this");
            return new ClassicTypeCheckerContext(z, z2, false, null, 12, null);
        }

        public static SimpleTypeMarker original(ClassicTypeSystemContext classicTypeSystemContext, DefinitelyNotNullTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof DefinitelyNotNullType) {
                return ((DefinitelyNotNullType) receiver).getOriginal();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static int parametersCount(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static Collection<KotlinTypeMarker> possibleIntegerTypes(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            TypeConstructorMarker typeConstructor = classicTypeSystemContext.typeConstructor(receiver);
            if (typeConstructor instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) typeConstructor).getPossibleTypes();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static int size(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentListMarker typeArgumentListMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.size(classicTypeSystemContext, typeArgumentListMarker);
        }

        public static Collection<KotlinTypeMarker> supertypes(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                Collection<KotlinType> supertypes = ((TypeConstructor) receiver).mo7371getSupertypes();
                p.b(supertypes, "this.supertypes");
                return supertypes;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static TypeConstructorMarker typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.typeConstructor(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static TypeConstructorMarker typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).getConstructor();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker upperBound(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getUpperBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker upperBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.upperBoundIfFlexible(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static KotlinTypeMarker withNullability(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, boolean z) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return classicTypeSystemContext.withNullability((SimpleTypeMarker) receiver, z);
            }
            if (receiver instanceof FlexibleTypeMarker) {
                FlexibleTypeMarker flexibleTypeMarker = (FlexibleTypeMarker) receiver;
                return classicTypeSystemContext.createFlexibleType(classicTypeSystemContext.withNullability(classicTypeSystemContext.lowerBound(flexibleTypeMarker), z), classicTypeSystemContext.withNullability(classicTypeSystemContext.upperBound(flexibleTypeMarker), z));
            }
            throw new IllegalStateException("sealed".toString());
        }

        public static SimpleTypeMarker withNullability(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver, boolean z) {
            p.d(classicTypeSystemContext, "this");
            p.d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).makeNullableAsSpecified(z);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + ac.b(receiver.getClass())).toString());
        }
    }

    @Override // 
    SimpleTypeMarker asSimpleType(KotlinTypeMarker kotlinTypeMarker);

    KotlinTypeMarker createFlexibleType(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);

    @Override // 
    SimpleTypeMarker lowerBound(FlexibleTypeMarker flexibleTypeMarker);

    @Override // 
    TypeConstructorMarker typeConstructor(SimpleTypeMarker simpleTypeMarker);

    @Override // 
    SimpleTypeMarker upperBound(FlexibleTypeMarker flexibleTypeMarker);

    @Override // 
    SimpleTypeMarker withNullability(SimpleTypeMarker simpleTypeMarker, boolean z);
}
