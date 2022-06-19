package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackExtractionService.class */
public class AssetPackExtractionService extends Service {

    /* renamed from: d */
    BinderC8362a0 f37650d;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f37650d;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C8392h1.m3735h(getApplicationContext()).mo3743b(this);
    }
}
