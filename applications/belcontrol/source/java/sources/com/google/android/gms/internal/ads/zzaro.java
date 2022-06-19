package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaro.class */
public interface zzaro extends IInterface {
    void onActivityResult(int i, int i2, Intent intent);

    void onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onPause();

    void onRestart();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();

    void onUserLeaveHint();

    void zzad(IObjectWrapper iObjectWrapper);

    void zzdp();

    boolean zzvw();
}
