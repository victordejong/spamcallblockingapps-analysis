package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.gcm.zzg;
import com.google.android.gms.stats.GCoreWakefulBroadcastReceiver;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zze.class */
public abstract class zze extends Service {
    private Binder zzbc;
    private int zzbd;
    final ExecutorService zzbb = zzg.zzaa().zzd(new NamedThreadFactory("EnhancedIntentService"), 9);
    private final Object lock = new Object();
    private int zzbe = 0;

    public final void zzf(Intent intent) {
        if (intent != null) {
            GCoreWakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            this.zzbe--;
            if (this.zzbe == 0) {
                stopSelfResult(this.zzbd);
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
            if (this.zzbc == null) {
                this.zzbc = new zzi(this);
            }
            binder = this.zzbc;
        }
        return binder;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.zzbd = i2;
            this.zzbe++;
        }
        if (intent == null) {
            zzf(intent);
            return 2;
        }
        this.zzbb.execute(new zzf(this, intent, intent));
        return 3;
    }
}
