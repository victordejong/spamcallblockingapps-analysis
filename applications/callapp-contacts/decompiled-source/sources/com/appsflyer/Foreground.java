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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.Foreground$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$5.class */
    public static final class AnonymousClass5 implements Application.ActivityLifecycleCallbacks {

        /* renamed from: ı  reason: contains not printable characters */
        boolean f154;

        /* renamed from: Ι  reason: contains not printable characters */
        final /* synthetic */ Listener f156;

        /* renamed from: ι  reason: contains not printable characters */
        boolean f157 = true;

        /* renamed from: ǃ  reason: contains not printable characters */
        private Executor f155 = Executors.newSingleThreadExecutor();

        AnonymousClass5(Listener listener) {
            this.f156 = listener;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(final Activity activity, Bundle bundle) {
            this.f155.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.4
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
            this.f155.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.3
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass5.this.f157 = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.Foreground.5.3.4
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                if (AnonymousClass5.this.f154 && AnonymousClass5.this.f157) {
                                    AnonymousClass5.this.f154 = false;
                                    try {
                                        AnonymousClass5.this.f156.onBecameBackground(applicationContext);
                                    } catch (Exception e) {
                                        AFLogger.afErrorLog("Listener threw exception! ", e);
                                    }
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
            this.f155.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (!AnonymousClass5.this.f154) {
                        try {
                            AnonymousClass5.this.f156.onBecameForeground(activity);
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e);
                        }
                    }
                    AnonymousClass5.this.f157 = false;
                    AnonymousClass5.this.f154 = true;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public static void m913(Context context, Listener listener2) {
        listener = listener2;
        AnonymousClass5 r0 = new AnonymousClass5(listener2);
        if (context instanceof Activity) {
            r0.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(r0);
    }
}
