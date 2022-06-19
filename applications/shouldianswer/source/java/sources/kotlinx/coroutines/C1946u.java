package kotlinx.coroutines;

import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.u */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/u.class */
public final class C1946u {
    /* renamed from: a */
    public static final <T> Object m2519a(Object obj) {
        if (C1768j.m2986a(obj)) {
            C1771k.m2979a(obj);
        } else {
            Throwable m2983c = C1768j.m2983c(obj);
            if (m2983c == null) {
                C1694h.m3124a();
            }
            obj = new C1945t(m2983c);
        }
        return obj;
    }
}
