package com.facebook.ads.internal.ipc;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.facebook.ads.internal.api.AdsMessengerServiceApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/ipc/AdsMessengerService.class */
public class AdsMessengerService extends Service {
    public AdsMessengerServiceApi mAdsMessengerServiceApi;

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.mAdsMessengerServiceApi.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        this.mAdsMessengerServiceApi = DynamicLoaderFactory.makeLoader(this, false).createAdsMessengerServiceApi(this);
        this.mAdsMessengerServiceApi.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mAdsMessengerServiceApi.onDestroy();
    }
}
