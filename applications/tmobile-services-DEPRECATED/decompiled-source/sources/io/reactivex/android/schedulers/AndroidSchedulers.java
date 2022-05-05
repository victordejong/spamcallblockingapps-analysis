package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.reactivex.Scheduler;
import io.reactivex.android.plugins.RxAndroidPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/android/schedulers/AndroidSchedulers.class */
public final class AndroidSchedulers {

    /* renamed from: a */
    private static final Scheduler f15107a = RxAndroidPlugins.m4452d(new Callable<Scheduler>() { // from class: io.reactivex.android.schedulers.AndroidSchedulers.1
        /* renamed from: a */
        public Scheduler call() throws Exception {
            return MainHolder.f15108a;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/android/schedulers/AndroidSchedulers$MainHolder.class */
    public static final class MainHolder {

        /* renamed from: a */
        static final Scheduler f15108a = new HandlerScheduler(new Handler(Looper.getMainLooper()), false);

        private MainHolder() {
        }
    }

    private AndroidSchedulers() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: a */
    public static Scheduler m4450a(Looper looper) {
        return m4449b(looper, false);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public static Scheduler m4449b(Looper looper, boolean z) {
        if (looper != null) {
            int i = Build.VERSION.SDK_INT;
            if (i < 16) {
                z = false;
            } else {
                z = z;
                if (z) {
                    z = z;
                    if (i < 22) {
                        Message obtain = Message.obtain();
                        try {
                            obtain.setAsynchronous(true);
                        } catch (NoSuchMethodError e) {
                            z = false;
                        }
                        obtain.recycle();
                    }
                }
            }
            return new HandlerScheduler(new Handler(looper), z);
        }
        throw new NullPointerException("looper == null");
    }

    /* renamed from: c */
    public static Scheduler m4448c() {
        return RxAndroidPlugins.m4451e(f15107a);
    }
}
