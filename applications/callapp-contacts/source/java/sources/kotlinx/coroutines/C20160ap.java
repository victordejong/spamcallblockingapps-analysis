package kotlinx.coroutines;

import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlinx.coroutines.internal.C20269e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\bH��\"\u0018\u0010��\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\t"}, m4298d2 = {"classSimpleName", "", "", "getClassSimpleName", "(Ljava/lang/Object;)Ljava/lang/String;", "hexAddress", "getHexAddress", "toDebugString", "Lkotlin/coroutines/Continuation;", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ap */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ap.class */
public final class C20160ap {
    /* renamed from: a */
    public static final String m1079a(AbstractC18332d<?> abstractC18332d) {
        String str;
        if (abstractC18332d instanceof C20269e) {
            return abstractC18332d.toString();
        }
        try {
            C18539o.C18540a c18540a = C18539o.f63626a;
            str = C18539o.m3836d(abstractC18332d + '@' + Integer.toHexString(System.identityHashCode(abstractC18332d)));
        } catch (Throwable th) {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            str = C18539o.m3836d(C18542p.m3834a(th));
        }
        if (C18539o.m3837c(str) != null) {
            str = abstractC18332d.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(abstractC18332d));
        }
        return (String) str;
    }
}
