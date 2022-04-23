package com.mopub.common;

import android.app.Activity;
import com.mopub.common.privacy.PersonalInfoManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubLifecycleManager.class */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: c */
    public static MoPubLifecycleManager f33767c;

    /* renamed from: a */
    public final Set<LifecycleListener> f33768a = new HashSet();

    /* renamed from: b */
    public final WeakReference<Activity> f33769b;

    public MoPubLifecycleManager(Activity activity) {
        this.f33769b = new WeakReference<>(activity);
    }

    public static MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            try {
                if (f33767c == null) {
                    f33767c = new MoPubLifecycleManager(activity);
                }
                moPubLifecycleManager = f33767c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener != null && this.f33768a.add(lifecycleListener) && (activity = this.f33769b.get()) != null) {
            lifecycleListener.onCreate(activity);
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onBackPressed(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(Activity activity) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33768a) {
            lifecycleListener.onStop(activity);
        }
    }
}
