package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.C19224z;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
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
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(c1, "c1");
            C18524p.m3840d(c2, "c2");
            if (!(c1 instanceof TypeConstructor)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c1 + ", " + C18496ac.m3882b(c1.getClass())).toString());
            } else if (c2 instanceof TypeConstructor) {
                return C18524p.m3850a(c1, c2);
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c2 + ", " + C18496ac.m3882b(c2.getClass())).toString());
            }
        }

        public static int argumentsCount(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeArgumentListMarker asArgumentList(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return (TypeArgumentListMarker) receiver;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static CapturedTypeMarker asCapturedType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof NewCapturedType ? (NewCapturedType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static DefinitelyNotNullTypeMarker asDefinitelyNotNullType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof DefinitelyNotNullType ? (DefinitelyNotNullType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static DynamicTypeMarker asDynamicType(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return receiver instanceof DynamicType ? (DynamicType) receiver : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static FlexibleTypeMarker asFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                return unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker asSimpleType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                UnwrappedType unwrap = ((KotlinType) receiver).unwrap();
                return unwrap instanceof SimpleType ? (SimpleType) unwrap : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeArgumentMarker asTypeArgument(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtilsKt.asTypeProjection((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker captureFromArguments(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker type, CaptureStatus status) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(type, "type");
            C18524p.m3840d(status, "status");
            if (type instanceof SimpleType) {
                return NewCapturedTypeKt.captureFromArguments((SimpleType) type, status);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + C18496ac.m3882b(type.getClass())).toString());
        }

        public static KotlinTypeMarker createFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker lowerBound, SimpleTypeMarker upperBound) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(lowerBound, "lowerBound");
            C18524p.m3840d(upperBound, "upperBound");
            if (!(lowerBound instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + C18496ac.m3882b(classicTypeSystemContext.getClass())).toString());
            } else if (upperBound instanceof SimpleType) {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                return KotlinTypeFactory.flexibleType((SimpleType) lowerBound, (SimpleType) upperBound);
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + classicTypeSystemContext + ", " + C18496ac.m3882b(classicTypeSystemContext.getClass())).toString());
            }
        }

        public static TypeArgumentMarker get(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentListMarker typeArgumentListMarker, int i) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.get(classicTypeSystemContext, typeArgumentListMarker, i);
        }

        public static TypeArgumentMarker getArgument(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, int i) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getArguments().get(i);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static C18962c getClassFqNameUnsafe(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return C19756a.m1531a((AbstractC19193k) ((AbstractC19070d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeParameterMarker getParameter(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver, int i) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                TypeParameterDescriptor typeParameterDescriptor = ((TypeConstructor) receiver).getParameters().get(i);
                C18524p.m3843b(typeParameterDescriptor, "this.parameters[index]");
                return typeParameterDescriptor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static EnumC18946h getPrimitiveArrayType(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return AbstractC18940g.m2806d((AbstractC19193k) ((AbstractC19070d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static EnumC18946h getPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return AbstractC18940g.m2811c((AbstractC19193k) ((AbstractC19070d) declarationDescriptor));
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getRepresentativeUpperBound(ClassicTypeSystemContext classicTypeSystemContext, TypeParameterMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                return TypeUtilsKt.getRepresentativeUpperBound((TypeParameterDescriptor) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getSubstitutedUnderlyingType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return C19810e.m1442b((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker getType(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).getType().unwrap();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeParameterMarker getTypeParameterClassifier(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                return declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                Variance projectionKind = ((TypeProjection) receiver).getProjectionKind();
                C18524p.m3843b(projectionKind, "this.projectionKind");
                return TypeSystemContextKt.convertVariance(projectionKind);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, TypeParameterMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeParameterDescriptor) {
                Variance variance = ((TypeParameterDescriptor) receiver).getVariance();
                C18524p.m3843b(variance, "this.variance");
                return TypeSystemContextKt.convertVariance(variance);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean hasAnnotation(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, C18961b fqName) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            C18524p.m3840d(fqName, "fqName");
            if (receiver instanceof KotlinType) {
                return ((KotlinType) receiver).getAnnotations().mo1338b(fqName);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean identicalArguments(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker a, SimpleTypeMarker b) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(a, "a");
            C18524p.m3840d(b, "b");
            if (!(a instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a + ", " + C18496ac.m3882b(a.getClass())).toString());
            } else if (b instanceof SimpleType) {
                return ((SimpleType) a).getArguments() == ((SimpleType) b).getArguments();
            } else {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b + ", " + C18496ac.m3882b(b.getClass())).toString());
            }
        }

        public static KotlinTypeMarker intersectTypes(ClassicTypeSystemContext classicTypeSystemContext, List<? extends KotlinTypeMarker> types) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(types, "types");
            return IntersectionTypeKt.intersectTypes(types);
        }

        public static boolean isAnyConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return AbstractC18940g.m2824a((TypeConstructor) receiver, C18954j.C18955a.f64647b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isClassTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getDeclarationDescriptor() instanceof AbstractC19070d;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isCommonFinalClassConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                AbstractC19070d abstractC19070d = declarationDescriptor instanceof AbstractC19070d ? (AbstractC19070d) declarationDescriptor : null;
                return (abstractC19070d == null || !C19224z.m2495a(abstractC19070d) || abstractC19070d.getKind() == EnumC19127e.ENUM_ENTRY || abstractC19070d.getKind() == EnumC19127e.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isDenotable(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).isDenotable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isError(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return KotlinTypeKt.isError((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isInlineClass(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                AbstractC19070d abstractC19070d = declarationDescriptor instanceof AbstractC19070d ? (AbstractC19070d) declarationDescriptor : null;
                return C18524p.m3850a(abstractC19070d == null ? null : Boolean.valueOf(C19810e.m1444a((AbstractC19193k) abstractC19070d)), Boolean.TRUE);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isIntegerLiteralTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isIntersection(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return receiver instanceof IntersectionTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.isMarkedNullable(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).isMarkedNullable();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isNothingConstructor(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return AbstractC18940g.m2824a((TypeConstructor) receiver, C18954j.C18955a.f64648c);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isNullableType(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return TypeUtils.isNullableType((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof KotlinType) {
                return AbstractC18940g.m2805d((KotlinType) receiver);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isProjectionNotNull(ClassicTypeSystemContext classicTypeSystemContext, CapturedTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).isProjectionNotNull();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isSingleClassifierType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (!(receiver instanceof SimpleType)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
            } else if (KotlinTypeKt.isError((KotlinType) receiver)) {
                return false;
            } else {
                SimpleType simpleType = (SimpleType) receiver;
                if (simpleType.getConstructor().getDeclarationDescriptor() instanceof AbstractC19033ax) {
                    return false;
                }
                return simpleType.getConstructor().getDeclarationDescriptor() != null || (receiver instanceof CapturedType) || (receiver instanceof NewCapturedType) || (receiver instanceof DefinitelyNotNullType) || (simpleType.getConstructor() instanceof IntegerLiteralTypeConstructor);
            }
        }

        public static boolean isStarProjection(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeProjection) {
                return ((TypeProjection) receiver).isStarProjection();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isStubType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return receiver instanceof AbstractStubType;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static boolean isUnderKotlinPackage(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                AbstractC19129g declarationDescriptor = ((TypeConstructor) receiver).getDeclarationDescriptor();
                return C18524p.m3850a(declarationDescriptor == null ? null : Boolean.valueOf(AbstractC18940g.m2816b(declarationDescriptor)), Boolean.TRUE);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker lowerBound(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getLowerBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker lowerBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.lowerBoundIfFlexible(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static KotlinTypeMarker lowerType(ClassicTypeSystemContext classicTypeSystemContext, CapturedTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof NewCapturedType) {
                return ((NewCapturedType) receiver).getLowerType();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker makeDefinitelyNotNullOrNotNull(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver) {
            UnwrappedType makeDefinitelyNotNullOrNotNullInternal;
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof UnwrappedType) {
                makeDefinitelyNotNullOrNotNullInternal = ClassicTypeSystemContextKt.makeDefinitelyNotNullOrNotNullInternal((UnwrappedType) receiver);
                return makeDefinitelyNotNullOrNotNullInternal;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static KotlinTypeMarker makeNullable(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemCommonBackendContext.DefaultImpls.makeNullable(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static AbstractTypeCheckerContext newBaseTypeCheckerContext(ClassicTypeSystemContext classicTypeSystemContext, boolean z, boolean z2) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            return new ClassicTypeCheckerContext(z, z2, false, null, 12, null);
        }

        public static SimpleTypeMarker original(ClassicTypeSystemContext classicTypeSystemContext, DefinitelyNotNullTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof DefinitelyNotNullType) {
                return ((DefinitelyNotNullType) receiver).getOriginal();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static int parametersCount(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                return ((TypeConstructor) receiver).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static Collection<KotlinTypeMarker> possibleIntegerTypes(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            TypeConstructorMarker typeConstructor = classicTypeSystemContext.typeConstructor(receiver);
            if (typeConstructor instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) typeConstructor).getPossibleTypes();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static int size(ClassicTypeSystemContext classicTypeSystemContext, TypeArgumentListMarker typeArgumentListMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.size(classicTypeSystemContext, typeArgumentListMarker);
        }

        public static Collection<KotlinTypeMarker> supertypes(ClassicTypeSystemContext classicTypeSystemContext, TypeConstructorMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof TypeConstructor) {
                Collection<KotlinType> mo53752getSupertypes = ((TypeConstructor) receiver).mo53752getSupertypes();
                C18524p.m3843b(mo53752getSupertypes, "this.supertypes");
                return mo53752getSupertypes;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static TypeConstructorMarker typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.typeConstructor(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static TypeConstructorMarker typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).getConstructor();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker upperBound(ClassicTypeSystemContext classicTypeSystemContext, FlexibleTypeMarker receiver) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof FlexibleType) {
                return ((FlexibleType) receiver).getUpperBound();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
        }

        public static SimpleTypeMarker upperBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemInferenceExtensionContext.DefaultImpls.upperBoundIfFlexible(classicTypeSystemContext, kotlinTypeMarker);
        }

        public static KotlinTypeMarker withNullability(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker receiver, boolean z) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleTypeMarker) {
                return classicTypeSystemContext.withNullability((SimpleTypeMarker) receiver, z);
            }
            if (!(receiver instanceof FlexibleTypeMarker)) {
                throw new IllegalStateException("sealed".toString());
            }
            FlexibleTypeMarker flexibleTypeMarker = (FlexibleTypeMarker) receiver;
            return classicTypeSystemContext.createFlexibleType(classicTypeSystemContext.withNullability(classicTypeSystemContext.lowerBound(flexibleTypeMarker), z), classicTypeSystemContext.withNullability(classicTypeSystemContext.upperBound(flexibleTypeMarker), z));
        }

        public static SimpleTypeMarker withNullability(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker receiver, boolean z) {
            C18524p.m3840d(classicTypeSystemContext, "this");
            C18524p.m3840d(receiver, "receiver");
            if (receiver instanceof SimpleType) {
                return ((SimpleType) receiver).makeNullableAsSpecified(z);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + receiver + ", " + C18496ac.m3882b(receiver.getClass())).toString());
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
