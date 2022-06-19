package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.cloudmessaging.zze;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzf.class */
public final class zzf implements ServiceConnection {
    @GuardedBy("this")
    public int zza;
    public final Messenger zzb;
    public zzo zzc;
    @GuardedBy("this")
    public final Queue<zzq<?>> zzd;
    @GuardedBy("this")
    public final SparseArray<zzq<?>> zze;
    public final /* synthetic */ zze zzf;

    /* JADX INFO: Access modifiers changed from: private */
    public zzf(zze zzeVar) {
        this.zzf = zzeVar;
        this.zza = 0;
        this.zzb = new Messenger((Handler) new zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.cloudmessaging.zzi
            private final zzf zza;

            {
                this.zza = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zza.zza(message);
            }
        }));
        this.zzd = new ArrayDeque();
        this.zze = new SparseArray<>();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        scheduledExecutorService = this.zzf.zzc;
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.android.gms.cloudmessaging.zzk
            private final zzf zza;
            private final IBinder zzb;

            {
                this.zza = this;
                this.zzb = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzf zzfVar = this.zza;
                IBinder iBinder2 = this.zzb;
                synchronized (zzfVar) {
                    if (iBinder2 == null) {
                        zzfVar.zza(0, "Null service connection");
                        return;
                    }
                    try {
                        zzfVar.zzc = new zzo(iBinder2);
                        zzfVar.zza = 2;
                        zzfVar.zza();
                    } catch (RemoteException e) {
                        zzfVar.zza(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        ScheduledExecutorService scheduledExecutorService;
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        scheduledExecutorService = this.zzf.zzc;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzm
            private final zzf zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(2, "Service disconnected");
            }
        });
    }

    public final void zza() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.zzf.zzc;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzj
            private final zzf zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzq poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzf zzfVar = this.zza;
                while (true) {
                    synchronized (zzfVar) {
                        if (zzfVar.zza != 2) {
                            return;
                        }
                        if (zzfVar.zzd.isEmpty()) {
                            zzfVar.zzb();
                            return;
                        }
                        poll = zzfVar.zzd.poll();
                        zzfVar.zze.put(poll.zza, poll);
                        scheduledExecutorService2 = zzfVar.zzf.zzc;
                        scheduledExecutorService2.schedule(new Runnable(zzfVar, poll) { // from class: com.google.android.gms.cloudmessaging.zzl
                            private final zzf zza;
                            private final zzq zzb;

                            {
                                this.zza = zzfVar;
                                this.zzb = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zza(this.zzb.zza);
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String valueOf = String.valueOf(poll);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(valueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    context = zzfVar.zzf.zzb;
                    Messenger messenger = zzfVar.zzb;
                    Message obtain = Message.obtain();
                    obtain.what = poll.zzc;
                    obtain.arg1 = poll.zza;
                    obtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", poll.zza());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", poll.zzd);
                    obtain.setData(bundle);
                    try {
                        zzfVar.zzc.zza(obtain);
                    } catch (RemoteException e) {
                        zzfVar.zza(2, e.getMessage());
                    }
                }
            }
        });
    }

    public final void zza(int i) {
        synchronized (this) {
            zzq<?> zzqVar = this.zze.get(i);
            if (zzqVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.zze.remove(i);
                zzqVar.zza(new zzp(3, "Timed out waiting for response"));
                zzb();
            }
        }
    }

    public final void zza(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.zza;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        this.zza = 4;
                        return;
                    } else if (i2 == 4) {
                        return;
                    } else {
                        int i3 = this.zza;
                        StringBuilder sb = new StringBuilder(26);
                        sb.append("Unknown state: ");
                        sb.append(i3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.zza = 4;
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzf.zzb;
                connectionTracker.unbindService(context, this);
                zzp zzpVar = new zzp(i, str);
                for (zzq<?> zzqVar : this.zzd) {
                    zzqVar.zza(zzpVar);
                }
                this.zzd.clear();
                for (int i4 = 0; i4 < this.zze.size(); i4++) {
                    this.zze.valueAt(i4).zza(zzpVar);
                }
                this.zze.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final boolean zza(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzq<?> zzqVar = this.zze.get(i);
            if (zzqVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zze.remove(i);
            zzb();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzqVar.zza(new zzp(4, "Not supported by GmsCore"));
                return true;
            }
            zzqVar.zza(data);
            return true;
        }
    }

    public final boolean zza(zzq<?> zzqVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.zza;
            if (i == 0) {
                this.zzd.add(zzqVar);
                Preconditions.checkState(this.zza == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.zza = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzf.zzb;
                if (!connectionTracker.bindService(context, intent, this, 1)) {
                    zza(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.zzf.zzc;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzh
                        private final zzf zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzc();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.zzd.add(zzqVar);
                return true;
            } else if (i == 2) {
                this.zzd.add(zzqVar);
                zza();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.zza;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    public final void zzb() {
        Context context;
        synchronized (this) {
            if (this.zza == 2 && this.zzd.isEmpty() && this.zze.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.zza = 3;
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzf.zzb;
                connectionTracker.unbindService(context, this);
            }
        }
    }

    public final void zzc() {
        synchronized (this) {
            if (this.zza == 1) {
                zza(1, "Timed out while binding");
            }
        }
    }
}
