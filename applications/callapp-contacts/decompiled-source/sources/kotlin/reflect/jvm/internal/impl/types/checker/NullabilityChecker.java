package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.AbstractNullabilityChecker;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NullabilityChecker.class */
public final class NullabilityChecker {
    public static final NullabilityChecker INSTANCE = new NullabilityChecker();

    private NullabilityChecker() {
    }

    public final boolean isSubtypeOfAny(UnwrappedType type) {
        p.d(type, "type");
        return AbstractNullabilityChecker.INSTANCE.hasNotNullSupertype(SimpleClassicTypeSystemContext.INSTANCE.newBaseTypeCheckerContext(false, true), FlexibleTypesKt.lowerIfFlexible(type), AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE);
    }
}
