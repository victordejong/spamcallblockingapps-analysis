package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/FieldOverridabilityCondition.class */
public final class FieldOverridabilityCondition implements ExternalOverridabilityCondition {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.a getContract() {
        return ExternalOverridabilityCondition.a.BOTH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.b isOverridable(a superDescriptor, a subDescriptor, d dVar) {
        p.d(superDescriptor, "superDescriptor");
        p.d(subDescriptor, "subDescriptor");
        if (!(subDescriptor instanceof an) || !(superDescriptor instanceof an)) {
            return ExternalOverridabilityCondition.b.UNKNOWN;
        }
        an anVar = (an) subDescriptor;
        e name = anVar.getName();
        an anVar2 = (an) superDescriptor;
        return !p.a(name, anVar2.getName()) ? ExternalOverridabilityCondition.b.UNKNOWN : (!c.a(anVar) || !c.a(anVar2)) ? (c.a(anVar) || c.a(anVar2)) ? ExternalOverridabilityCondition.b.INCOMPATIBLE : ExternalOverridabilityCondition.b.UNKNOWN : ExternalOverridabilityCondition.b.OVERRIDABLE;
    }
}
