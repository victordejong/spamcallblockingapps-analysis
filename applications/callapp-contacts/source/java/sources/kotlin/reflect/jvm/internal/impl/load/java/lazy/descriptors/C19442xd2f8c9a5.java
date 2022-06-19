package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1 */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1.class */
final class C19442xd2f8c9a5 extends AbstractC18526r implements Function1<AbstractC19834h, Collection<? extends AbstractC19017an>> {
    final /* synthetic */ C18966e $name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19442xd2f8c9a5(C18966e c18966e) {
        super(1);
        this.$name = c18966e;
    }

    public final Collection<? extends AbstractC19017an> invoke(AbstractC19834h it2) {
        C18524p.m3840d(it2, "it");
        return it2.getContributedVariables(this.$name, EnumC18698d.WHEN_GET_SUPER_MEMBERS);
    }
}
