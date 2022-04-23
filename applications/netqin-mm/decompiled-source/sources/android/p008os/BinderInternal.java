package android.p008os;

import java.lang.ref.WeakReference;
/* renamed from: android.os.BinderInternal */
/* loaded from: classes-dex2jar.jar:android/os/BinderInternal.class */
public class BinderInternal {
    public static WeakReference<GcWatcher> mGcWatcher = new WeakReference<>(new GcWatcher());
    public static long mLastGcTime;

    /* renamed from: android.os.BinderInternal$GcWatcher */
    /* loaded from: classes-dex2jar.jar:android/os/BinderInternal$GcWatcher.class */
    public static final class GcWatcher {
        public void finalize() throws Throwable {
            BinderInternal.handleGc();
            BinderInternal.mLastGcTime = SystemClock.uptimeMillis();
            BinderInternal.mGcWatcher = new WeakReference<>(new GcWatcher());
        }
    }

    public static void forceBinderGc() {
        forceGc("Binder");
    }

    public static void forceGc(String str) {
        Runtime.getRuntime().gc();
    }

    public static final native IBinder getContextObject();

    public static long getLastGcTime() {
        return mLastGcTime;
    }

    public static final native void handleGc();

    public static final native void joinThreadPool();
}
