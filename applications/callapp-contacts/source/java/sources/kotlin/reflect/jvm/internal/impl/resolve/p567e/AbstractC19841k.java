package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/k.class */
public interface AbstractC19841k {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/k$a.class */
    public static final class C19842a {
        /* renamed from: a */
        public static /* synthetic */ Collection m1411a(AbstractC19841k abstractC19841k, C19825d c19825d, Function1 function1, int i) {
            if ((i & 1) != 0) {
                c19825d = C19825d.f65995d;
            }
            if ((i & 2) != 0) {
                AbstractC19834h.C19835a c19835a = AbstractC19834h.f66031g;
                function1 = AbstractC19834h.C19835a.m1414a();
            }
            return abstractC19841k.getContributedDescriptors(c19825d, function1);
        }
    }

    AbstractC19129g getContributedClassifier(C18966e c18966e, AbstractC18695b abstractC18695b);

    Collection<AbstractC19193k> getContributedDescriptors(C19825d c19825d, Function1<? super C18966e, Boolean> function1);

    Collection<? extends AbstractC19219w> getContributedFunctions(C18966e c18966e, AbstractC18695b abstractC18695b);

    void recordLookup(C18966e c18966e, AbstractC18695b abstractC18695b);
}
