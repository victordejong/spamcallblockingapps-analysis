package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.o;
import kotlin.p;
import kotlinx.coroutines.internal.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\bH��\"\u0018\u0010��\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"classSimpleName", "", "", "getClassSimpleName", "(Ljava/lang/Object;)Ljava/lang/String;", "hexAddress", "getHexAddress", "toDebugString", "Lkotlin/coroutines/Continuation;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ap.class */
public final class ap {
    public static final String a(d<?> dVar) {
        Object obj;
        if (dVar instanceof e) {
            return dVar.toString();
        }
        try {
            o.a aVar = o.f36812a;
            obj = o.d(dVar + '@' + Integer.toHexString(System.identityHashCode(dVar)));
        } catch (Throwable th) {
            o.a aVar2 = o.f36812a;
            obj = o.d(p.a(th));
        }
        if (o.c(obj) != null) {
            obj = dVar.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(dVar));
        }
        return (String) obj;
    }
}
