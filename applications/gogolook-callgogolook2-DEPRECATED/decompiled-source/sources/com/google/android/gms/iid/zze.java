package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.legacy.content.WakefulBroadcastReceiver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p081h.p203i.p204a.p224e.p258i.BinderC7156l;
import p081h.p203i.p204a.p224e.p258i.RunnableC7153i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/iid/zze.class */
public abstract class zze extends Service {

    /* renamed from: b */
    public Binder f6732b;

    /* renamed from: d */
    public int f6734d;
    @VisibleForTesting

    /* renamed from: a */
    public final ExecutorService f6731a = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    public final Object f6733c = new Object();

    /* renamed from: e */
    public int f6735e = 0;

    /* renamed from: a */
    public final void m31856a(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.f6733c) {
            this.f6735e--;
            if (this.f6735e == 0) {
                stopSelfResult(this.f6734d);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.f6732b == null) {
                this.f6732b = new BinderC7156l(this);
            }
            binder = this.f6732b;
        }
        return binder;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.f6733c) {
            this.f6734d = i2;
            this.f6735e++;
        }
        if (intent == null) {
            m31856a(intent);
            return 2;
        }
        this.f6731a.execute(new RunnableC7153i(this, intent, intent));
        return 3;
    }
}
