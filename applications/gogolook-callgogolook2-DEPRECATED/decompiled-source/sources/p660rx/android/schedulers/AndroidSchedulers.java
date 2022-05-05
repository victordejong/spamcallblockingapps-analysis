package p660rx.android.schedulers;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.Scheduler;
import p660rx.android.plugins.RxAndroidPlugins;
/* renamed from: rx.android.schedulers.AndroidSchedulers */
/* loaded from: classes3-dex2jar.jar:rx/android/schedulers/AndroidSchedulers.class */
public final class AndroidSchedulers {
    public static final AtomicReference<AndroidSchedulers> INSTANCE = new AtomicReference<>();
    public final Scheduler mainThreadScheduler;

    public AndroidSchedulers() {
        Scheduler mainThreadScheduler = RxAndroidPlugins.getInstance().getSchedulersHook().getMainThreadScheduler();
        if (mainThreadScheduler != null) {
            this.mainThreadScheduler = mainThreadScheduler;
        } else {
            this.mainThreadScheduler = new LooperScheduler(Looper.getMainLooper());
        }
    }

    public static AndroidSchedulers getInstance() {
        AndroidSchedulers androidSchedulers;
        do {
            AndroidSchedulers androidSchedulers2 = INSTANCE.get();
            if (androidSchedulers2 != null) {
                return androidSchedulers2;
            }
            androidSchedulers = new AndroidSchedulers();
        } while (!INSTANCE.compareAndSet(null, androidSchedulers));
        return androidSchedulers;
    }

    public static Scheduler mainThread() {
        return getInstance().mainThreadScheduler;
    }
}
