package p000;

import android.os.Looper;
/* renamed from: gi1 */
/* loaded from: classes3-dex2jar.jar:gi1.class */
public final class gi1 {
    /* renamed from: a */
    public static void m1659a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Must be invoked from the main thread.");
    }
}
