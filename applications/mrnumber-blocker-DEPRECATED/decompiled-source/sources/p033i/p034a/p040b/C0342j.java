package p033i.p034a.p040b;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.logging.Logger;
/* renamed from: i.a.b.j */
/* loaded from: classes2-dex2jar.jar:i/a/b/j.class */
final class C0342j {

    /* renamed from: a */
    private static final List<Function<? super AbstractC0340h, ? extends AbstractC0340h>> f861a = new ArrayList();

    /* renamed from: b */
    private static final Object f862b = new Object();

    static {
        Logger.getLogger(C0342j.class.getName());
    }

    private C0342j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<Function<? super AbstractC0340h, ? extends AbstractC0340h>> m361a() {
        List<Function<? super AbstractC0340h, ? extends AbstractC0340h>> list;
        synchronized (f862b) {
            list = f861a;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m360b() {
        synchronized (f862b) {
        }
    }
}
