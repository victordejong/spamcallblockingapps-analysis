package p000;

import android.app.Application;
import java.lang.ref.WeakReference;
/* renamed from: lm1 */
/* loaded from: classes3-dex2jar.jar:lm1.class */
public final class lm1 {

    /* renamed from: a */
    public static WeakReference<Application> f6959a;

    /* renamed from: a */
    public static Application m1292a() {
        WeakReference<Application> weakReference = f6959a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: b */
    public static void m1291b(Application application) {
        f6959a = new WeakReference<>(application);
    }
}
