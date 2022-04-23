package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/m.class */
final class m {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicBoolean f2584a = new AtomicBoolean(false);

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/m$a.class */
    static final class a extends e {
        a() {
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            ReportFragment.a(activity);
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        if (!f2584a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
        }
    }
}
