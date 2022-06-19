package io.reactivex.android.schedulers;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.reactivex.Scheduler;
import io.reactivex.android.plugins.RxAndroidPlugins;
import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/android/schedulers/AndroidSchedulers.class */
public final class AndroidSchedulers {
    private static final Scheduler MAIN_THREAD = RxAndroidPlugins.initMainThreadScheduler(new Callable<Scheduler>() { // from class: io.reactivex.android.schedulers.AndroidSchedulers.1
        @Override // java.util.concurrent.Callable
        public Scheduler call() throws Exception {
            return MainHolder.DEFAULT;
        }
    });

    /* loaded from: classes2-dex2jar.jar:io/reactivex/android/schedulers/AndroidSchedulers$MainHolder.class */
    public static final class MainHolder {
        static final Scheduler DEFAULT = new HandlerScheduler(new Handler(Looper.getMainLooper()), false);

        private MainHolder() {
        }
    }

    private AndroidSchedulers() {
        throw new AssertionError("No instances.");
    }

    public static Scheduler from(Looper looper) {
        return from(looper, false);
    }

    public static Scheduler from(Looper looper, boolean z) {
        boolean z2;
        Objects.requireNonNull(looper, "looper == null");
        if (Build.VERSION.SDK_INT < 16) {
            z2 = false;
        } else {
            z2 = z;
            if (z) {
                z2 = z;
                if (Build.VERSION.SDK_INT < 22) {
                    Message obtain = Message.obtain();
                    try {
                        obtain.setAsynchronous(true);
                    } catch (NoSuchMethodError e) {
                        z = false;
                    }
                    obtain.recycle();
                    z2 = z;
                }
            }
        }
        return new HandlerScheduler(new Handler(looper), z2);
    }

    public static Scheduler mainThread() {
        return RxAndroidPlugins.onMainThreadScheduler(MAIN_THREAD);
    }
}
