package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.g */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/g.class */
public class C0520g {

    /* renamed from: a */
    public static AtomicBoolean f2036a = new AtomicBoolean(false);

    /* renamed from: androidx.lifecycle.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/g$a.class */
    public static class C0521a extends C0511c {
        @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            FragmentC0538t.m7975c(activity);
        }

        @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // androidx.lifecycle.C0511c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }
}
