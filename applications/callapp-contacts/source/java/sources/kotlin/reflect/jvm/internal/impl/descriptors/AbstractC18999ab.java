package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ab */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ab.class */
public interface AbstractC18999ab extends AbstractC19193k {
    AbstractC18940g getBuiltIns();

    <T> T getCapability(C18998aa<T> c18998aa);

    List<AbstractC18999ab> getExpectedByModules();

    AbstractC19013aj getPackage(C18961b c18961b);

    Collection<C18961b> getSubPackagesOf(C18961b c18961b, Function1<? super C18966e, Boolean> function1);

    boolean shouldSeeInternalsOf(AbstractC18999ab abstractC18999ab);
}
