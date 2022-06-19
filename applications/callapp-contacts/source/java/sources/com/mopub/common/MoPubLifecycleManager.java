package com.mopub.common;

import android.app.Activity;
import com.mopub.common.privacy.PersonalInfoManager;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/MoPubLifecycleManager.class */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: a */
    private static MoPubLifecycleManager f58778a;

    /* renamed from: b */
    private final Set<LifecycleListener> f58779b = new CopyOnWriteArraySet();

    /* renamed from: c */
    private final WeakReference<Activity> f58780c;

    private MoPubLifecycleManager(Activity activity) {
        this.f58780c = new WeakReference<>(activity);
    }

    public static MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            try {
                if (f58778a == null) {
                    f58778a = new MoPubLifecycleManager(activity);
                }
                moPubLifecycleManager = f58778a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener == null || !this.f58779b.add(lifecycleListener) || (activity = this.f58780c.get()) == null) {
            return;
        }
        lifecycleListener.onCreate(activity);
        lifecycleListener.onStart(activity);
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onBackPressed(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(Activity activity) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f58779b) {
            lifecycleListener.onStop(activity);
        }
    }
}
