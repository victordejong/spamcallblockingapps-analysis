package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import p134j4.BinderC3247s;
import p134j4.C3214i0;
import p134j4.C3220j2;
import p134j4.C3260w0;
/* loaded from: classes-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackExtractionService.class */
public class AssetPackExtractionService extends Service {

    /* renamed from: a */
    public BinderC3247s f6968a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f6968a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        C3214i0 c3214i0;
        super.onCreate();
        Context applicationContext = getApplicationContext();
        synchronized (C3260w0.class) {
            try {
                if (C3260w0.f11020a == null) {
                    Context applicationContext2 = applicationContext.getApplicationContext();
                    if (applicationContext2 != null) {
                        applicationContext = applicationContext2;
                    }
                    C3260w0.f11020a = new C3214i0(new C3220j2(applicationContext));
                }
                c3214i0 = C3260w0.f11020a;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f6968a = (BinderC3247s) c3214i0.f10836m.zza();
    }
}
