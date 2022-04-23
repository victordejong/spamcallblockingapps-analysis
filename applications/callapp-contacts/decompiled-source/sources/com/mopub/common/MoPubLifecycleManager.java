package com.mopub.common;

import android.app.Activity;
import com.mopub.common.privacy.PersonalInfoManager;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubLifecycleManager.class */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    private static MoPubLifecycleManager f33852a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<LifecycleListener> f33853b = new CopyOnWriteArraySet();

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<Activity> f33854c;

    private MoPubLifecycleManager(Activity activity) {
        this.f33854c = new WeakReference<>(activity);
    }

    public static MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            try {
                if (f33852a == null) {
                    f33852a = new MoPubLifecycleManager(activity);
                }
                moPubLifecycleManager = f33852a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener != null && this.f33853b.add(lifecycleListener) && (activity = this.f33854c.get()) != null) {
            lifecycleListener.onCreate(activity);
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onBackPressed(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(Activity activity) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f33853b) {
            lifecycleListener.onStop(activity);
        }
    }
}
