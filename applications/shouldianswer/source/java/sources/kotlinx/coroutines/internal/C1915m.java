package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1866bu;
/* renamed from: kotlinx.coroutines.internal.m */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/m.class */
public final class C1915m {
    /* renamed from: a */
    public static final AbstractC1866bu m2614a(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        C1916n c1916n;
        C1694h.m3117b(mainDispatcherFactory, "receiver$0");
        C1694h.m3117b(list, "factories");
        try {
            c1916n = mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            c1916n = new C1916n(th, mainDispatcherFactory.hintOnError());
        }
        return c1916n;
    }
}
