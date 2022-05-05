package com.facebook.ads.internal.api;

import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdsMessengerServiceApi.class */
public interface AdsMessengerServiceApi {
    IBinder onBind(Intent intent);

    void onCreate();

    void onDestroy();
}
