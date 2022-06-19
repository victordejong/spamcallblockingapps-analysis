package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.e */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/e.class */
class C0793e {

    /* renamed from: a */
    private static AtomicBoolean f3702a = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/e$a.class */
    public static class C0794a extends C0790b {
        C0794a() {
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            ReportFragment.m32419g(activity);
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // androidx.lifecycle.C0790b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    public static void m32399a(Context context) {
        if (f3702a.getAndSet(true)) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C0794a());
    }
}
