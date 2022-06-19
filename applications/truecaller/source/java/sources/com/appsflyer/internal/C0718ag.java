package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
/* renamed from: com.appsflyer.internal.ag */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag.class */
public final class C0718ag {
    public static AbstractC0724b valueOf;
    @VisibleForTesting
    public static long values = 500;

    /* renamed from: com.appsflyer.internal.ag$1 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$1.class */
    public final class C07191 implements Application.ActivityLifecycleCallbacks {
        public final /* synthetic */ AbstractC0724b AFInAppEventType;
        public boolean AFKeystoreWrapper;
        private /* synthetic */ Executor valueOf;
        public boolean values = true;

        public C07191(Executor executor, AbstractC0724b abstractC0724b) {
            this.valueOf = executor;
            this.AFInAppEventType = abstractC0724b;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(@NonNull final Activity activity, Bundle bundle) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.ag.1.5
                @Override // java.lang.Runnable
                public final void run() {
                    C0818i.values();
                    Intent intent = activity.getIntent();
                    if (C0818i.AFKeystoreWrapper(intent) == null || intent == C0818i.AFInAppEventParameterName) {
                        return;
                    }
                    C0818i.AFInAppEventParameterName = intent;
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(@NonNull final Activity activity) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.ag.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    C07191.this.values = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.internal.ag.1.1.2
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                C07191 c07191 = C07191.this;
                                if (!c07191.AFKeystoreWrapper || !c07191.values) {
                                    return;
                                }
                                c07191.AFKeystoreWrapper = false;
                                try {
                                    c07191.AFInAppEventType.valueOf(applicationContext);
                                } catch (Exception e) {
                                    AFLogger.valueOf("Listener threw exception! ", e);
                                }
                            }
                        }, C0718ag.values);
                    } catch (Throwable th) {
                        AFLogger.valueOf("Background task failed with a throwable: ", th);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.valueOf.execute(new Runnable() { // from class: com.appsflyer.internal.ag.1.3
                @Override // java.lang.Runnable
                public final void run() {
                    C07191 c07191 = C07191.this;
                    if (!c07191.AFKeystoreWrapper) {
                        try {
                            c07191.AFInAppEventType.AFKeystoreWrapper(activity);
                        } catch (Exception e) {
                            AFLogger.values("Listener thrown an exception: ", e);
                        }
                    }
                    C07191 c071912 = C07191.this;
                    c071912.values = false;
                    c071912.AFKeystoreWrapper = true;
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

    /* renamed from: com.appsflyer.internal.ag$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$b.class */
    public interface AbstractC0724b {
        void AFKeystoreWrapper(Activity activity);

        void valueOf(Context context);
    }

    public static void AFKeystoreWrapper(Context context, AbstractC0724b abstractC0724b, Executor executor) {
        valueOf = abstractC0724b;
        C07191 c07191 = new C07191(executor, abstractC0724b);
        if (context instanceof Activity) {
            c07191.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(c07191);
    }
}
