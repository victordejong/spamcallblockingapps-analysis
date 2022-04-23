package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzb.class */
public abstract class zzb extends Service {
    private final Object lock;
    @VisibleForTesting
    final ExecutorService zzi;
    private Binder zzj;
    private int zzk;
    private int zzl;

    public zzb() {
        String valueOf = String.valueOf(getClass().getSimpleName());
        this.zzi = Executors.newSingleThreadExecutor(new NamedThreadFactory(valueOf.length() != 0 ? "Firebase-".concat(valueOf) : new String("Firebase-")));
        this.lock = new Object();
        this.zzl = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            this.zzl--;
            if (this.zzl == 0) {
                stopSelfResult(this.zzk);
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.zzj == null) {
                this.zzj = new zzf(this);
            }
            binder = this.zzj;
        }
        return binder;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.zzk = i2;
            this.zzl++;
        }
        Intent zzb = zzb(intent);
        if (zzb == null) {
            zza(intent);
            return 2;
        } else if (zzc(zzb)) {
            zza(intent);
            return 2;
        } else {
            this.zzi.execute(new zzc(this, zzb, intent));
            return 3;
        }
    }

    protected Intent zzb(Intent intent) {
        return intent;
    }

    public boolean zzc(Intent intent) {
        return false;
    }

    public abstract void zzd(Intent intent);
}
