package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.h */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/h.class */
class C0899h {

    /* renamed from: a */
    private static AtomicBoolean f2848a = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/h$a.class */
    public static class C0900a extends C0892c {
        C0900a() {
        }

        @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            FragmentC0917t.m5074a(activity);
        }

        @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // androidx.lifecycle.C0892c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    public static void m5113a(Context context) {
        if (f2848a.getAndSet(true)) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0900a());
    }
}
