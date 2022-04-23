package com.facebook.ads.internal.util.common;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener.class */
public class ANActivityLifecycleCallbacksListener implements Application.ActivityLifecycleCallbacks {
    public static ANActivityLifecycleCallbacksListener sANActivityLifecycleCallbacksListener;
    public final Deque<WeakReference<Activity>> mActivityStack = new ArrayDeque();

    public static ANActivityLifecycleCallbacksListener getANActivityLifecycleCallbacksListener() {
        ANActivityLifecycleCallbacksListener aNActivityLifecycleCallbacksListener;
        synchronized (ANActivityLifecycleCallbacksListener.class) {
            try {
                aNActivityLifecycleCallbacksListener = sANActivityLifecycleCallbacksListener;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aNActivityLifecycleCallbacksListener;
    }

    public static void registerActivityCallbacks(Context context) {
        Context applicationContext = context.getApplicationContext();
        synchronized (ANActivityLifecycleCallbacksListener.class) {
            try {
                if ((applicationContext instanceof Application) && sANActivityLifecycleCallbacksListener == null) {
                    ANActivityLifecycleCallbacksListener aNActivityLifecycleCallbacksListener = new ANActivityLifecycleCallbacksListener();
                    sANActivityLifecycleCallbacksListener = aNActivityLifecycleCallbacksListener;
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(aNActivityLifecycleCallbacksListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void unregisterActivityCallbacks(Context context) {
        Context applicationContext = context.getApplicationContext();
        synchronized (ANActivityLifecycleCallbacksListener.class) {
            try {
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(sANActivityLifecycleCallbacksListener);
                    sANActivityLifecycleCallbacksListener = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Deque<WeakReference<Activity>> getActivityStack() {
        return this.mActivityStack;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (!this.mActivityStack.isEmpty()) {
            this.mActivityStack.pop();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.mActivityStack.push(new WeakReference<>(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
