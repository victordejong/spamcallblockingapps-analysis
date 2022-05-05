package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.gcm.zzg;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zze.class */
public abstract class zze extends Service {

    /* renamed from: g */
    private Binder f7772g;

    /* renamed from: i */
    private int f7774i;
    @VisibleForTesting

    /* renamed from: f */
    final ExecutorService f7771f = zzg.m14067a().mo14065b(new NamedThreadFactory("EnhancedIntentService"), 9);

    /* renamed from: h */
    private final Object f7773h = new Object();

    /* renamed from: j */
    private int f7775j = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final void m14145b(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.m18267b(intent);
        }
        synchronized (this.f7773h) {
            int i = this.f7775j - 1;
            this.f7775j = i;
            if (i == 0) {
                stopSelfResult(this.f7774i);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.f7772g == null) {
                this.f7772g = new zzi(this);
            }
            binder = this.f7772g;
        }
        return binder;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.f7773h) {
            this.f7774i = i2;
            this.f7775j++;
        }
        if (intent == null) {
            m14145b(intent);
            return 2;
        }
        this.f7771f.execute(new zzf(this, intent, intent));
        return 3;
    }
}
