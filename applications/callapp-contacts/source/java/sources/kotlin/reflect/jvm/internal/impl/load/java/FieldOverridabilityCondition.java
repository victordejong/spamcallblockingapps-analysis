package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19448c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/FieldOverridabilityCondition.class */
public final class FieldOverridabilityCondition implements ExternalOverridabilityCondition {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.EnumC19736a getContract() {
        return ExternalOverridabilityCondition.EnumC19736a.BOTH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.EnumC19737b isOverridable(AbstractC18973a superDescriptor, AbstractC18973a subDescriptor, AbstractC19070d abstractC19070d) {
        C18524p.m3840d(superDescriptor, "superDescriptor");
        C18524p.m3840d(subDescriptor, "subDescriptor");
        if (!(subDescriptor instanceof AbstractC19017an) || !(superDescriptor instanceof AbstractC19017an)) {
            return ExternalOverridabilityCondition.EnumC19737b.UNKNOWN;
        }
        AbstractC19017an abstractC19017an = (AbstractC19017an) subDescriptor;
        C18966e name = abstractC19017an.getName();
        AbstractC19017an abstractC19017an2 = (AbstractC19017an) superDescriptor;
        return !C18524p.m3850a(name, abstractC19017an2.getName()) ? ExternalOverridabilityCondition.EnumC19737b.UNKNOWN : (!C19448c.m2142a(abstractC19017an) || !C19448c.m2142a(abstractC19017an2)) ? (C19448c.m2142a(abstractC19017an) || C19448c.m2142a(abstractC19017an2)) ? ExternalOverridabilityCondition.EnumC19737b.INCOMPATIBLE : ExternalOverridabilityCondition.EnumC19737b.UNKNOWN : ExternalOverridabilityCondition.EnumC19737b.OVERRIDABLE;
    }
}
