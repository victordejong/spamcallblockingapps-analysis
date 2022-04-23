package p131c.p161d.p266c.p275i.p276a;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: c.d.c.i.a.t */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/t.class */
public final class C5119t {
    /* renamed from: a */
    public static <V> V m24495a(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }
}
