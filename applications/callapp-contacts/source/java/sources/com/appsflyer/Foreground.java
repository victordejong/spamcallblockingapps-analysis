package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground.class */
public class Foreground {
    public static long CHECK_DELAY = 500;
    public static Listener listener;

    /* renamed from: com.appsflyer.Foreground$5 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$5.class */
    public static final class C33905 implements Application.ActivityLifecycleCallbacks {

        /* renamed from: ı */
        boolean f12830;

        /* renamed from: Ι */
        final /* synthetic */ Listener f12832;

        /* renamed from: ι */
        boolean f12833 = true;

        /* renamed from: ǃ */
        private Executor f12831 = Executors.newSingleThreadExecutor();

        C33905(Listener listener) {
            this.f12832 = listener;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(final Activity activity, Bundle bundle) {
            this.f12831.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.4
                @Override // java.lang.Runnable
                public final void run() {
                    AFDeepLinkManager.getInstance().collectIntentsFromActivities(activity.getIntent());
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(final Activity activity) {
            this.f12831.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.3
                @Override // java.lang.Runnable
                public final void run() {
                    C33905.this.f12833 = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.Foreground.5.3.4
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                if (!C33905.this.f12830 || !C33905.this.f12833) {
                                    return;
                                }
                                C33905.this.f12830 = false;
                                try {
                                    C33905.this.f12832.onBecameBackground(applicationContext);
                                } catch (Exception e) {
                                    AFLogger.afErrorLog("Listener threw exception! ", e);
                                }
                            }
                        }, Foreground.CHECK_DELAY);
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Background task failed with a throwable: ", th);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.f12831.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (!C33905.this.f12830) {
                        try {
                            C33905.this.f12832.onBecameForeground(activity);
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e);
                        }
                    }
                    C33905.this.f12833 = false;
                    C33905.this.f12830 = true;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$Listener.class */
    public interface Listener {
        void onBecameBackground(Context context);

        void onBecameForeground(Activity activity);
    }

    /* renamed from: Ι */
    public static void m38042(Context context, Listener listener2) {
        listener = listener2;
        C33905 c33905 = new C33905(listener2);
        if (context instanceof Activity) {
            c33905.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(c33905);
    }
}
