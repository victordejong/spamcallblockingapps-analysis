package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ab.class */
public interface ab extends k {
    g getBuiltIns();

    <T> T getCapability(aa<T> aaVar);

    List<ab> getExpectedByModules();

    aj getPackage(b bVar);

    Collection<b> getSubPackagesOf(b bVar, Function1<? super e, Boolean> function1);

    boolean shouldSeeInternalsOf(ab abVar);
}
