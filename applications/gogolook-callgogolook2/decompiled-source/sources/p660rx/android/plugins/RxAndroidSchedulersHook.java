package p660rx.android.plugins;

import p660rx.Scheduler;
import p660rx.functions.Action0;
/* renamed from: rx.android.plugins.RxAndroidSchedulersHook */
/* loaded from: classes3-dex2jar.jar:rx/android/plugins/RxAndroidSchedulersHook.class */
public class RxAndroidSchedulersHook {
    public static final RxAndroidSchedulersHook DEFAULT_INSTANCE = new RxAndroidSchedulersHook();

    public static RxAndroidSchedulersHook getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public Scheduler getMainThreadScheduler() {
        return null;
    }

    public Action0 onSchedule(Action0 action0) {
        return action0;
    }
}
