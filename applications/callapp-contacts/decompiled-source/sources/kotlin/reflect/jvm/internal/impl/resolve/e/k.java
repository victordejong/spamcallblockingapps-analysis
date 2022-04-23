package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/k.class */
public interface k {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/k$a.class */
    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Collection a(k kVar, d dVar, Function1 function1, int i) {
            if ((i & 1) != 0) {
                dVar = d.f38280d;
            }
            if ((i & 2) != 0) {
                h.a aVar = h.g;
                function1 = h.a.a();
            }
            return kVar.getContributedDescriptors(dVar, function1);
        }
    }

    g getContributedClassifier(e eVar, b bVar);

    Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(d dVar, Function1<? super e, Boolean> function1);

    Collection<? extends w> getContributedFunctions(e eVar, b bVar);

    void recordLookup(e eVar, b bVar);
}
