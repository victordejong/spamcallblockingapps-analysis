package com.google.android.gms.iid;

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
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzt.class */
public final class zzt implements ServiceConnection {
    @GuardedBy("this")
    int state;
    final Messenger zzcc;
    zzy zzcd;
    @GuardedBy("this")
    final Queue<zzz<?>> zzce;
    @GuardedBy("this")
    final SparseArray<zzz<?>> zzcf;
    final /* synthetic */ zzr zzcg;

    private zzt(zzr zzrVar) {
        this.zzcg = zzrVar;
        this.state = 0;
        this.zzcc = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.iid.zzu
            private final zzt zzch;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzch = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzch.zzd(message);
            }
        }));
        this.zzce = new ArrayDeque();
        this.zzcf = new SparseArray<>();
    }

    private final void zzr() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.zzcg.zzbz;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.iid.zzw
            private final zzt zzch;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzch = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzt zztVar = this.zzch;
                while (true) {
                    synchronized (zztVar) {
                        if (zztVar.state == 2) {
                            if (zztVar.zzce.isEmpty()) {
                                zztVar.zzs();
                                return;
                            }
                            final zzz<?> poll = zztVar.zzce.poll();
                            zztVar.zzcf.put(poll.zzck, poll);
                            scheduledExecutorService2 = zztVar.zzcg.zzbz;
                            scheduledExecutorService2.schedule(new Runnable(zztVar, poll) { // from class: com.google.android.gms.iid.zzx
                                private final zzt zzch;
                                private final zzz zzci;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.zzch = zztVar;
                                    this.zzci = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzch.zzg(this.zzci.zzck);
                                }
                            }, 30L, TimeUnit.SECONDS);
                            if (Log.isLoggable("MessengerIpcClient", 3)) {
                                String valueOf = String.valueOf(poll);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                                sb.append("Sending ");
                                sb.append(valueOf);
                                Log.d("MessengerIpcClient", sb.toString());
                            }
                            context = zztVar.zzcg.zzk;
                            Messenger messenger = zztVar.zzcc;
                            Message obtain = Message.obtain();
                            obtain.what = poll.what;
                            obtain.arg1 = poll.zzck;
                            obtain.replyTo = messenger;
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("oneWay", poll.zzu());
                            bundle.putString("pkg", context.getPackageName());
                            bundle.putBundle("data", poll.zzcm);
                            obtain.setData(bundle);
                            try {
                                zzy zzyVar = zztVar.zzcd;
                                if (zzyVar.zzab == null) {
                                    if (zzyVar.zzcj == null) {
                                        throw new IllegalStateException("Both messengers are null");
                                        break;
                                    }
                                    zzyVar.zzcj.send(obtain);
                                } else {
                                    zzyVar.zzab.send(obtain);
                                }
                            } catch (RemoteException e) {
                                zztVar.zzd(2, e.getMessage());
                            }
                        } else {
                            return;
                        }
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service connected");
            }
            if (iBinder == null) {
                zzd(0, "Null service connection");
                return;
            }
            try {
                this.zzcd = new zzy(iBinder);
                this.state = 2;
                zzr();
            } catch (RemoteException e) {
                zzd(0, e.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service disconnected");
            }
            zzd(2, "Service disconnected");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            switch (this.state) {
                case 0:
                    throw new IllegalStateException();
                case 1:
                case 2:
                    if (Log.isLoggable("MessengerIpcClient", 2)) {
                        Log.v("MessengerIpcClient", "Unbinding service");
                    }
                    this.state = 4;
                    ConnectionTracker instance = ConnectionTracker.getInstance();
                    context = this.zzcg.zzk;
                    instance.unbindService(context, this);
                    zzaa zzaaVar = new zzaa(i, str);
                    for (zzz<?> zzzVar : this.zzce) {
                        zzzVar.zzd(zzaaVar);
                    }
                    this.zzce.clear();
                    for (int i2 = 0; i2 < this.zzcf.size(); i2++) {
                        this.zzcf.valueAt(i2).zzd(zzaaVar);
                    }
                    this.zzcf.clear();
                    return;
                case 3:
                    this.state = 4;
                    return;
                case 4:
                    return;
                default:
                    int i3 = this.state;
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("Unknown state: ");
                    sb.append(i3);
                    throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzz<?> zzzVar = this.zzcf.get(i);
            if (zzzVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzcf.remove(i);
            zzs();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzzVar.zzd(new zzaa(4, "Not supported by GmsCore"));
                return true;
            }
            zzzVar.zzh(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zze(zzz zzzVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            switch (this.state) {
                case 0:
                    this.zzce.add(zzzVar);
                    Preconditions.checkState(this.state == 0);
                    if (Log.isLoggable("MessengerIpcClient", 2)) {
                        Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                    }
                    this.state = 1;
                    Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                    intent.setPackage("com.google.android.gms");
                    ConnectionTracker instance = ConnectionTracker.getInstance();
                    context = this.zzcg.zzk;
                    if (!instance.bindService(context, intent, this, 1)) {
                        zzd(0, "Unable to bind to service");
                    } else {
                        scheduledExecutorService = this.zzcg.zzbz;
                        scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.iid.zzv
                            private final zzt zzch;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zzch = this;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzch.zzt();
                            }
                        }, 30L, TimeUnit.SECONDS);
                    }
                    return true;
                case 1:
                    this.zzce.add(zzzVar);
                    return true;
                case 2:
                    this.zzce.add(zzzVar);
                    zzr();
                    return true;
                case 3:
                case 4:
                    return false;
                default:
                    int i = this.state;
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("Unknown state: ");
                    sb.append(i);
                    throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg(int i) {
        synchronized (this) {
            zzz<?> zzzVar = this.zzcf.get(i);
            if (zzzVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.zzcf.remove(i);
                zzzVar.zzd(new zzaa(3, "Timed out waiting for response"));
                zzs();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs() {
        Context context;
        synchronized (this) {
            if (this.state == 2 && this.zzce.isEmpty() && this.zzcf.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.state = 3;
                ConnectionTracker instance = ConnectionTracker.getInstance();
                context = this.zzcg.zzk;
                instance.unbindService(context, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt() {
        synchronized (this) {
            if (this.state == 1) {
                zzd(1, "Timed out while binding");
            }
        }
    }
}
