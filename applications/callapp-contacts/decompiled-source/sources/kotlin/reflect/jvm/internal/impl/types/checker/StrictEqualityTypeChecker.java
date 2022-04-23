package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.AbstractStrictEqualityTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/StrictEqualityTypeChecker.class */
public final class StrictEqualityTypeChecker {
    public static final StrictEqualityTypeChecker INSTANCE = new StrictEqualityTypeChecker();

    private StrictEqualityTypeChecker() {
    }

    public final boolean strictEqualTypes(UnwrappedType a2, UnwrappedType b2) {
        p.d(a2, "a");
        p.d(b2, "b");
        return AbstractStrictEqualityTypeChecker.INSTANCE.strictEqualTypes(SimpleClassicTypeSystemContext.INSTANCE, a2, b2);
    }
}
