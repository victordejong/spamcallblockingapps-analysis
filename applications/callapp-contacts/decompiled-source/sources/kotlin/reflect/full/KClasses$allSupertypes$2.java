package kotlin.reflect.full;

import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.utils.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"kotlin/reflect/full/KClasses$allSupertypes$2", "Lkotlin/reflect/jvm/internal/impl/utils/DFS$NodeHandlerWithListResult;", "Lkotlin/reflect/KType;", "beforeChildren", "", "current", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/KClasses$allSupertypes$2.class */
public final class KClasses$allSupertypes$2 extends b.e<KType, KType> {
    KClasses$allSupertypes$2() {
    }

    public final boolean beforeChildren(KType current) {
        p.d(current, "current");
        ((LinkedList) this.result).add(current);
        return true;
    }
}
