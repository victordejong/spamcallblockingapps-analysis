package com.mopub.common;

import android.app.Activity;
import com.mopub.common.privacy.PersonalInfoManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/MoPubLifecycleManager.class */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: c */
    public static MoPubLifecycleManager f4284c;

    /* renamed from: a */
    public final Set<LifecycleListener> f4285a = new HashSet();

    /* renamed from: b */
    public final WeakReference<Activity> f4286b;

    public MoPubLifecycleManager(Activity activity) {
        this.f4286b = new WeakReference<>(activity);
    }

    public static MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            try {
                if (f4284c == null) {
                    f4284c = new MoPubLifecycleManager(activity);
                }
                moPubLifecycleManager = f4284c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener == null || !this.f4285a.add(lifecycleListener) || (activity = this.f4286b.get()) == null) {
            return;
        }
        lifecycleListener.onCreate(activity);
        lifecycleListener.onStart(activity);
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onBackPressed(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(Activity activity) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(Activity activity) {
        for (LifecycleListener lifecycleListener : this.f4285a) {
            lifecycleListener.onStop(activity);
        }
    }
}
