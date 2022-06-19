package com.mopub.common;

import android.app.Activity;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/LifecycleListener.class */
public interface LifecycleListener {
    void onBackPressed(Activity activity);

    void onCreate(Activity activity);

    void onDestroy(Activity activity);

    void onPause(Activity activity);

    void onRestart(Activity activity);

    void onResume(Activity activity);

    void onStart(Activity activity);

    void onStop(Activity activity);
}
