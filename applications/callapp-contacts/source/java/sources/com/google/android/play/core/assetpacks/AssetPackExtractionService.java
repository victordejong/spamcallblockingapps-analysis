package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackExtractionService.class */
public class AssetPackExtractionService extends Service {

    /* renamed from: a */
    BinderC14901ab f54365a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f54365a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        C14936bj.m9747a(getApplicationContext()).mo9699a(this);
    }
}
