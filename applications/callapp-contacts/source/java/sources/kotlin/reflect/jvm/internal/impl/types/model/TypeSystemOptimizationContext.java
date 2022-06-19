package kotlin.reflect.jvm.internal.impl.types.model;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext.class */
public interface TypeSystemOptimizationContext {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext$DefaultImpls.class */
    public static final class DefaultImpls {
        public static boolean identicalArguments(TypeSystemOptimizationContext typeSystemOptimizationContext, SimpleTypeMarker a, SimpleTypeMarker b) {
            C18524p.m3840d(typeSystemOptimizationContext, "this");
            C18524p.m3840d(a, "a");
            C18524p.m3840d(b, "b");
            return false;
        }
    }

    boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2);
}
