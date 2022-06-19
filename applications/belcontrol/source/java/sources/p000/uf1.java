package p000;

import android.util.Log;
/* renamed from: uf1 */
/* loaded from: classes3-dex2jar.jar:uf1.class */
public final class uf1 {
    /* renamed from: a */
    public static void m397a(Exception exc) {
        if (ue1.f8318a.booleanValue()) {
            Log.e("[Moat Exception]", Log.getStackTraceString(exc));
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            if (exc.getCause() != null && (exc.getCause() instanceof RuntimeException)) {
                throw ((RuntimeException) exc.getCause());
            }
            throw new RuntimeException(exc);
        }
    }
}
