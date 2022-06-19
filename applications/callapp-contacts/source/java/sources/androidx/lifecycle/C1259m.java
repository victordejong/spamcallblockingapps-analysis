package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.m */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/m.class */
final class C1259m {

    /* renamed from: a */
    private static AtomicBoolean f4837a = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/m$a.class */
    public static final class C1260a extends C1248e {
        C1260a() {
        }

        @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            ReportFragment.m43325a(activity);
        }

        @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // androidx.lifecycle.C1248e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    private C1259m() {
    }

    /* renamed from: a */
    public static void m43295a(Context context) {
        if (f4837a.getAndSet(true)) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C1260a());
    }
}
