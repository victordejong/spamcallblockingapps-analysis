package com.google.firebase.iid;

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
import com.google.android.gms.internal.firebase_messaging.zze;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzw.class */
public final class zzw implements ServiceConnection {
    int zza;
    final Messenger zzb;
    zzaf zzc;
    final Queue<zzah<?>> zzd;
    final SparseArray<zzah<?>> zze;
    final /* synthetic */ zzv zzf;

    /* JADX INFO: Access modifiers changed from: private */
    public zzw(zzv zzvVar) {
        this.zzf = zzvVar;
        this.zza = 0;
        this.zzb = new Messenger(new zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.zzz
            private final zzw zza;

            /* JADX INFO: Access modifiers changed from: package-private */
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
        scheduledExecutorService.execute(new Runnable(this, iBinder) { // from class: com.google.firebase.iid.zzab
            private final zzw zza;
            private final IBinder zzb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzw zzwVar = this.zza;
                IBinder iBinder2 = this.zzb;
                synchronized (zzwVar) {
                    if (iBinder2 == null) {
                        zzwVar.zza(0, "Null service connection");
                        return;
                    }
                    try {
                        zzwVar.zzc = new zzaf(iBinder2);
                        zzwVar.zza = 2;
                        zzwVar.zza();
                    } catch (RemoteException e) {
                        zzwVar.zza(0, e.getMessage());
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
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzad
            private final zzw zza;

            /* JADX INFO: Access modifiers changed from: package-private */
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
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzaa
            private final zzw zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzah poll;
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzw zzwVar = this.zza;
                while (true) {
                    synchronized (zzwVar) {
                        if (zzwVar.zza != 2) {
                            return;
                        }
                        if (zzwVar.zzd.isEmpty()) {
                            zzwVar.zzb();
                            return;
                        }
                        poll = zzwVar.zzd.poll();
                        zzwVar.zze.put(poll.zza, poll);
                        scheduledExecutorService2 = zzwVar.zzf.zzc;
                        scheduledExecutorService2.schedule(new Runnable(zzwVar, poll) { // from class: com.google.firebase.iid.zzac
                            private final zzw zza;
                            private final zzah zzb;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zza = zzwVar;
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
                    context = zzwVar.zzf.zzb;
                    Messenger messenger = zzwVar.zzb;
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
                        zzwVar.zzc.zza(obtain);
                    } catch (RemoteException e) {
                        zzwVar.zza(2, e.getMessage());
                    }
                }
            }
        });
    }

    public final void zza(int i) {
        synchronized (this) {
            zzah<?> zzahVar = this.zze.get(i);
            if (zzahVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.zze.remove(i);
                zzahVar.zza(new zzag(3, "Timed out waiting for response"));
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
                zzag zzagVar = new zzag(i, str);
                for (zzah<?> zzahVar : this.zzd) {
                    zzahVar.zza(zzagVar);
                }
                this.zzd.clear();
                for (int i4 = 0; i4 < this.zze.size(); i4++) {
                    this.zze.valueAt(i4).zza(zzagVar);
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
            zzah<?> zzahVar = this.zze.get(i);
            if (zzahVar == null) {
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
                zzahVar.zza(new zzag(4, "Not supported by GmsCore"));
                return true;
            }
            zzahVar.zza(data);
            return true;
        }
    }

    public final boolean zza(zzah<?> zzahVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.zza;
            if (i == 0) {
                this.zzd.add(zzahVar);
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
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.firebase.iid.zzy
                        private final zzw zza;

                        /* JADX INFO: Access modifiers changed from: package-private */
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
                this.zzd.add(zzahVar);
                return true;
            } else if (i == 2) {
                this.zzd.add(zzahVar);
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
