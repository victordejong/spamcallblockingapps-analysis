package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition.class */
public interface ExternalOverridabilityCondition {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a.class */
    public enum EnumC19736a {
        CONFLICTS_ONLY,
        SUCCESS_ONLY,
        BOTH
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b.class */
    public enum EnumC19737b {
        OVERRIDABLE,
        CONFLICT,
        INCOMPATIBLE,
        UNKNOWN
    }

    EnumC19736a getContract();

    EnumC19737b isOverridable(AbstractC18973a abstractC18973a, AbstractC18973a abstractC18973a2, AbstractC19070d abstractC19070d);
}
