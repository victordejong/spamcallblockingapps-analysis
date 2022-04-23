package kotlin.reflect.jvm.internal.impl.types.model;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext.class */
public interface TypeSystemOptimizationContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static boolean identicalArguments(TypeSystemOptimizationContext typeSystemOptimizationContext, SimpleTypeMarker a2, SimpleTypeMarker b2) {
            p.d(typeSystemOptimizationContext, "this");
            p.d(a2, "a");
            p.d(b2, "b");
            return false;
        }
    }

    boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);
}
