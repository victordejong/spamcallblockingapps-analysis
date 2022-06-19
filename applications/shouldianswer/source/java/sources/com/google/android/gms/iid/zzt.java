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
import com.google.android.gms.internal.gcm.zzj;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzt.class */
public final class zzt implements ServiceConnection {
    int state;
    final Messenger zzch;
    zzy zzci;
    final Queue<zzz<?>> zzcj;
    final SparseArray<zzz<?>> zzck;
    final /* synthetic */ zzr zzcl;

    /* JADX INFO: Access modifiers changed from: private */
    public zzt(zzr zzrVar) {
        this.zzcl = zzrVar;
        this.state = 0;
        this.zzch = new Messenger(new zzj(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.iid.zzu
            private final zzt zzcm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcm = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzcm.zzd(message);
            }
        }));
        this.zzcj = new ArrayDeque();
        this.zzck = new SparseArray<>();
    }

    private final void zzt() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.zzcl.zzce;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.iid.zzw
            private final zzt zzcm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcm = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzt zztVar = this.zzcm;
                while (true) {
                    synchronized (zztVar) {
                        if (zztVar.state != 2) {
                            return;
                        }
                        if (zztVar.zzcj.isEmpty()) {
                            zztVar.zzu();
                            return;
                        }
                        final zzz poll = zztVar.zzcj.poll();
                        zztVar.zzck.put(poll.zzcp, poll);
                        scheduledExecutorService2 = zztVar.zzcl.zzce;
                        scheduledExecutorService2.schedule(new Runnable(zztVar, poll) { // from class: com.google.android.gms.iid.zzx
                            private final zzt zzcm;
                            private final zzz zzcn;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zzcm = zztVar;
                                this.zzcn = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzcm.zzg(this.zzcn.zzcp);
                            }
                        }, 30L, TimeUnit.SECONDS);
                        if (Log.isLoggable("MessengerIpcClient", 3)) {
                            String valueOf = String.valueOf(poll);
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                            sb.append("Sending ");
                            sb.append(valueOf);
                            Log.d("MessengerIpcClient", sb.toString());
                        }
                        context = zztVar.zzcl.zzl;
                        Messenger messenger = zztVar.zzch;
                        Message obtain = Message.obtain();
                        obtain.what = poll.what;
                        obtain.arg1 = poll.zzcp;
                        obtain.replyTo = messenger;
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("oneWay", poll.zzw());
                        bundle.putString("pkg", context.getPackageName());
                        bundle.putBundle("data", poll.zzcr);
                        obtain.setData(bundle);
                        try {
                            zzy zzyVar = zztVar.zzci;
                            if (zzyVar.zzad == null) {
                                if (zzyVar.zzco == null) {
                                    throw new IllegalStateException("Both messengers are null");
                                    break;
                                }
                                zzyVar.zzco.send(obtain);
                            } else {
                                zzyVar.zzad.send(obtain);
                            }
                        } catch (RemoteException e) {
                            zztVar.zzd(2, e.getMessage());
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
                this.zzci = new zzy(iBinder);
                this.state = 2;
                zzt();
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

    public final void zzd(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.state;
            if (i2 != 0) {
                if (i2 != 1 && i2 != 2) {
                    if (i2 == 3) {
                        this.state = 4;
                        return;
                    } else if (i2 == 4) {
                        return;
                    } else {
                        int i3 = this.state;
                        StringBuilder sb = new StringBuilder(26);
                        sb.append("Unknown state: ");
                        sb.append(i3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.state = 4;
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzcl.zzl;
                connectionTracker.unbindService(context, this);
                zzaa zzaaVar = new zzaa(i, str);
                for (zzz<?> zzzVar : this.zzcj) {
                    zzzVar.zzd(zzaaVar);
                }
                this.zzcj.clear();
                for (int i4 = 0; i4 < this.zzck.size(); i4++) {
                    this.zzck.valueAt(i4).zzd(zzaaVar);
                }
                this.zzck.clear();
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final boolean zzd(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzz<?> zzzVar = this.zzck.get(i);
            if (zzzVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzck.remove(i);
            zzu();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzzVar.zzd(new zzaa(4, "Not supported by GmsCore"));
                return true;
            }
            zzzVar.zzh(data);
            return true;
        }
    }

    public final boolean zze(zzz zzzVar) {
        Context context;
        ScheduledExecutorService scheduledExecutorService;
        synchronized (this) {
            int i = this.state;
            if (i == 0) {
                this.zzcj.add(zzzVar);
                Preconditions.checkState(this.state == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.state = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzcl.zzl;
                if (!connectionTracker.bindService(context, intent, this, 1)) {
                    zzd(0, "Unable to bind to service");
                } else {
                    scheduledExecutorService = this.zzcl.zzce;
                    scheduledExecutorService.schedule(new Runnable(this) { // from class: com.google.android.gms.iid.zzv
                        private final zzt zzcm;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzcm = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzcm.zzv();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            } else if (i == 1) {
                this.zzcj.add(zzzVar);
                return true;
            } else if (i == 2) {
                this.zzcj.add(zzzVar);
                zzt();
                return true;
            } else if (i == 3 || i == 4) {
                return false;
            } else {
                int i2 = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    public final void zzg(int i) {
        synchronized (this) {
            zzz<?> zzzVar = this.zzck.get(i);
            if (zzzVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.zzck.remove(i);
                zzzVar.zzd(new zzaa(3, "Timed out waiting for response"));
                zzu();
            }
        }
    }

    public final void zzu() {
        Context context;
        synchronized (this) {
            if (this.state == 2 && this.zzcj.isEmpty() && this.zzck.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.state = 3;
                ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                context = this.zzcl.zzl;
                connectionTracker.unbindService(context, this);
            }
        }
    }

    public final void zzv() {
        synchronized (this) {
            if (this.state == 1) {
                zzd(1, "Timed out while binding");
            }
        }
    }
}
