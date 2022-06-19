package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/LifecycleDelegate.class */
public interface LifecycleDelegate {
    @KeepForSdk
    /* renamed from: d */
    void m38749d();

    @KeepForSdk
    /* renamed from: e */
    void m38748e(Activity activity, Bundle bundle, Bundle bundle2);

    @KeepForSdk
    /* renamed from: f */
    View m38747f(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle);

    @KeepForSdk
    void onCreate(Bundle bundle);

    @KeepForSdk
    void onDestroy();

    @KeepForSdk
    void onLowMemory();

    @KeepForSdk
    void onPause();

    @KeepForSdk
    void onResume();

    @KeepForSdk
    void onSaveInstanceState(Bundle bundle);

    @KeepForSdk
    void onStart();

    @KeepForSdk
    void onStop();
}
