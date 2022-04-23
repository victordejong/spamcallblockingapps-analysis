package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.a.a.d;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1.class */
final class LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1 extends r implements Function1<h, Collection<? extends an>> {
    final /* synthetic */ e $name;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1(e eVar) {
        super(1);
        this.$name = eVar;
    }

    public final Collection<? extends an> invoke(h it2) {
        p.d(it2, "it");
        return it2.getContributedVariables(this.$name, d.WHEN_GET_SUPER_MEMBERS);
    }
}
