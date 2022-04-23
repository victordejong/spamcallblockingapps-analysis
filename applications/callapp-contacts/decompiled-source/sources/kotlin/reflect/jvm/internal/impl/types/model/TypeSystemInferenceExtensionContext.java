package kotlin.reflect.jvm.internal.impl.types.model;

import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemInferenceExtensionContext.class */
public interface TypeSystemInferenceExtensionContext extends TypeSystemCommonSuperTypesContext, TypeSystemContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemInferenceExtensionContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static TypeArgumentMarker get(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, TypeArgumentListMarker typeArgumentListMarker, int i) {
            return TypeSystemContext.DefaultImpls.get(typeSystemInferenceExtensionContext, typeArgumentListMarker, i);
        }

        public static boolean isMarkedNullable(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemContext.DefaultImpls.isMarkedNullable(typeSystemInferenceExtensionContext, kotlinTypeMarker);
        }

        public static SimpleTypeMarker lowerBoundIfFlexible(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemContext.DefaultImpls.lowerBoundIfFlexible(typeSystemInferenceExtensionContext, kotlinTypeMarker);
        }

        public static int size(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, TypeArgumentListMarker typeArgumentListMarker) {
            return TypeSystemContext.DefaultImpls.size(typeSystemInferenceExtensionContext, typeArgumentListMarker);
        }

        public static TypeConstructorMarker typeConstructor(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemContext.DefaultImpls.typeConstructor(typeSystemInferenceExtensionContext, kotlinTypeMarker);
        }

        public static SimpleTypeMarker upperBoundIfFlexible(TypeSystemInferenceExtensionContext typeSystemInferenceExtensionContext, KotlinTypeMarker kotlinTypeMarker) {
            return TypeSystemContext.DefaultImpls.upperBoundIfFlexible(typeSystemInferenceExtensionContext, kotlinTypeMarker);
        }
    }
}
