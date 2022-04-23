package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackExtractionService.class */
public class AssetPackExtractionService extends Service {

    /* renamed from: a  reason: collision with root package name */
    ab f31077a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f31077a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        bj.a(getApplicationContext()).a(this);
    }
}
