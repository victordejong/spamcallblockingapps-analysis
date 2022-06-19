package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.e */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/e.class */
class C0358e {

    /* renamed from: a */
    private static AtomicBoolean f2056a = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m12985a(Context context) {
        if (f2056a.getAndSet(true)) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
    }
}
