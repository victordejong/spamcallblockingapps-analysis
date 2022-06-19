package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p134j4.BinderC3226l0;
/* loaded from: classes-dex2jar.jar:com/google/android/play/core/assetpacks/ExtractionForegroundService.class */
public class ExtractionForegroundService extends Service {

    /* renamed from: a */
    public final IBinder f6969a = new BinderC3226l0(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6969a;
    }
}
