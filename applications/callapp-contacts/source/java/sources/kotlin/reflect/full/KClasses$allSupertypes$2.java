package kotlin.reflect.full;

import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, m4298d2 = {"kotlin/reflect/full/KClasses$allSupertypes$2", "Lkotlin/reflect/jvm/internal/impl/utils/DFS$NodeHandlerWithListResult;", "Lkotlin/reflect/KType;", "beforeChildren", "", "current", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/KClasses$allSupertypes$2.class */
public final class KClasses$allSupertypes$2 extends C20000b.AbstractC20006e<KType, KType> {
    KClasses$allSupertypes$2() {
    }

    public final boolean beforeChildren(KType current) {
        C18524p.m3840d(current, "current");
        ((LinkedList) this.result).add(current);
        return true;
    }
}
