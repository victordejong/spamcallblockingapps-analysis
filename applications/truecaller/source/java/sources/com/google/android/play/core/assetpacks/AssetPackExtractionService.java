package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import e.m.a.h.a.a.x;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackExtractionService.class */
public class AssetPackExtractionService extends Service {

    /* renamed from: a */
    public x f6994a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6994a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f6994a = (x) C26232y.m2335k2(getApplicationContext()).B.zza();
    }
}
