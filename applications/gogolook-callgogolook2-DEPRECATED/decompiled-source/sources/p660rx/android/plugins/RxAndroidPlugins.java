package p660rx.android.plugins;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: rx.android.plugins.RxAndroidPlugins */
/* loaded from: classes3-dex2jar.jar:rx/android/plugins/RxAndroidPlugins.class */
public final class RxAndroidPlugins {
    public static final RxAndroidPlugins INSTANCE = new RxAndroidPlugins();
    public final AtomicReference<RxAndroidSchedulersHook> schedulersHook = new AtomicReference<>();

    public static RxAndroidPlugins getInstance() {
        return INSTANCE;
    }

    public RxAndroidSchedulersHook getSchedulersHook() {
        if (this.schedulersHook.get() == null) {
            this.schedulersHook.compareAndSet(null, RxAndroidSchedulersHook.getDefaultInstance());
        }
        return this.schedulersHook.get();
    }
}
