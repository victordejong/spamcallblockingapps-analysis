package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition.class */
public interface ExternalOverridabilityCondition {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a.class */
    public enum a {
        CONFLICTS_ONLY,
        SUCCESS_ONLY,
        BOTH
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b.class */
    public enum b {
        OVERRIDABLE,
        CONFLICT,
        INCOMPATIBLE,
        UNKNOWN
    }

    a getContract();

    b isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, d dVar);
}
