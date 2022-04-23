package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext.class */
public interface TypeSystemCommonBackendContext extends TypeSystemContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static KotlinTypeMarker makeNullable(TypeSystemCommonBackendContext typeSystemCommonBackendContext, KotlinTypeMarker receiver) {
            p.d(typeSystemCommonBackendContext, "this");
            p.d(receiver, "receiver");
            SimpleTypeMarker asSimpleType = typeSystemCommonBackendContext.asSimpleType(receiver);
            return asSimpleType == null ? receiver : typeSystemCommonBackendContext.withNullability(asSimpleType, true);
        }
    }

    c getClassFqNameUnsafe(TypeConstructorMarker typeConstructorMarker);

    h getPrimitiveArrayType(TypeConstructorMarker typeConstructorMarker);

    h getPrimitiveType(TypeConstructorMarker typeConstructorMarker);

    KotlinTypeMarker getRepresentativeUpperBound(TypeParameterMarker typeParameterMarker);

    KotlinTypeMarker getSubstitutedUnderlyingType(KotlinTypeMarker kotlinTypeMarker);

    TypeParameterMarker getTypeParameterClassifier(TypeConstructorMarker typeConstructorMarker);

    boolean hasAnnotation(KotlinTypeMarker kotlinTypeMarker, b bVar);

    boolean isInlineClass(TypeConstructorMarker typeConstructorMarker);

    boolean isUnderKotlinPackage(TypeConstructorMarker typeConstructorMarker);

    KotlinTypeMarker makeNullable(KotlinTypeMarker kotlinTypeMarker);
}
