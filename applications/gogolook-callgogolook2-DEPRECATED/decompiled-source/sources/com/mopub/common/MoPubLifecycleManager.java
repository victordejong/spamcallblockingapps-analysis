package com.mopub.common;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.privacy.PersonalInfoManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubLifecycleManager.class */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: c */
    public static MoPubLifecycleManager f8128c;
    @NonNull

    /* renamed from: a */
    public final Set<LifecycleListener> f8129a = new HashSet();
    @NonNull

    /* renamed from: b */
    public final WeakReference<Activity> f8130b;

    public MoPubLifecycleManager(Activity activity) {
        this.f8130b = new WeakReference<>(activity);
    }

    @NonNull
    public static MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            try {
                if (f8128c == null) {
                    f8128c = new MoPubLifecycleManager(activity);
                }
                moPubLifecycleManager = f8128c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(@Nullable LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener != null && this.f8129a.add(lifecycleListener) && (activity = this.f8130b.get()) != null) {
            lifecycleListener.onCreate(activity);
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onBackPressed(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(@NonNull Activity activity) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager != null) {
            personalInformationManager.requestSync(false);
        }
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(@NonNull Activity activity) {
        for (LifecycleListener lifecycleListener : this.f8129a) {
            lifecycleListener.onStop(activity);
        }
    }
}
