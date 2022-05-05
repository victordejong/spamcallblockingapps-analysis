package com.google.android.gms.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.firebase.iid.MessengerIpcClient;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzt.class */
final class zzt implements ServiceConnection {
    @GuardedBy

    /* renamed from: a */
    int f7798a;

    /* renamed from: b */
    final Messenger f7799b;

    /* renamed from: c */
    zzy f7800c;
    @GuardedBy

    /* renamed from: d */
    final Queue<zzz<?>> f7801d;
    @GuardedBy

    /* renamed from: e */
    final SparseArray<zzz<?>> f7802e;

    /* renamed from: f */
    final /* synthetic */ zzr f7803f;

    /* renamed from: d */
    private final void m14129d() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.f7803f.f7797b;
        scheduledExecutorService.execute(new Runnable(this) { // from class: com.google.android.gms.iid.zzw

            /* renamed from: f */
            private final zzt f7806f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7806f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ScheduledExecutorService scheduledExecutorService2;
                Context context;
                final zzt zztVar = this.f7806f;
                while (true) {
                    synchronized (zztVar) {
                        if (zztVar.f7798a == 2) {
                            if (zztVar.f7801d.isEmpty()) {
                                zztVar.m14128e();
                                return;
                            }
                            final zzz<?> poll = zztVar.f7801d.poll();
                            zztVar.f7802e.put(poll.f7811a, poll);
                            scheduledExecutorService2 = zztVar.f7803f.f7797b;
                            scheduledExecutorService2.schedule(new Runnable(zztVar, poll) { // from class: com.google.android.gms.iid.zzx

                                /* renamed from: f */
                                private final zzt f7807f;

                                /* renamed from: g */
                                private final zzz f7808g;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f7807f = zztVar;
                                    this.f7808g = poll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f7807f.m14130c(this.f7808g.f7811a);
                                }
                            }, 30L, TimeUnit.SECONDS);
                            if (Log.isLoggable("MessengerIpcClient", 3)) {
                                String valueOf = String.valueOf(poll);
                                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
                                sb.append("Sending ");
                                sb.append(valueOf);
                                Log.d("MessengerIpcClient", sb.toString());
                            }
                            context = zztVar.f7803f.f7796a;
                            Messenger messenger = zztVar.f7799b;
                            Message obtain = Message.obtain();
                            obtain.what = poll.f7813c;
                            obtain.arg1 = poll.f7811a;
                            obtain.replyTo = messenger;
                            Bundle bundle = new Bundle();
                            bundle.putBoolean(MessengerIpcClient.KEY_ONE_WAY, poll.mo14124c());
                            bundle.putString(MessengerIpcClient.KEY_PACKAGE, context.getPackageName());
                            bundle.putBundle("data", poll.f7814d);
                            obtain.setData(bundle);
                            try {
                                zzy zzyVar = zztVar.f7800c;
                                if (zzyVar.f7809a == null) {
                                    if (zzyVar.f7810b == null) {
                                        throw new IllegalStateException("Both messengers are null");
                                        break;
                                    }
                                    zzyVar.f7810b.m14157b(obtain);
                                } else {
                                    zzyVar.f7809a.send(obtain);
                                }
                            } catch (RemoteException e) {
                                zztVar.m14132a(2, e.getMessage());
                            }
                        } else {
                            return;
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m14132a(int i, String str) {
        Context context;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.f7798a;
            if (i2 == 0) {
                throw new IllegalStateException();
            } else if (i2 == 1 || i2 == 2) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.f7798a = 4;
                ConnectionTracker b = ConnectionTracker.m14372b();
                context = this.f7803f.f7796a;
                b.m14371c(context, this);
                zzaa zzaaVar = new zzaa(i, str);
                for (zzz<?> zzzVar : this.f7801d) {
                    zzzVar.m14126a(zzaaVar);
                }
                this.f7801d.clear();
                for (int i3 = 0; i3 < this.f7802e.size(); i3++) {
                    this.f7802e.valueAt(i3).m14126a(zzaaVar);
                }
                this.f7802e.clear();
            } else if (i2 == 3) {
                this.f7798a = 4;
            } else if (i2 != 4) {
                int i4 = this.f7798a;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m14131b(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzz<?> zzzVar = this.f7802e.get(i);
            if (zzzVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.f7802e.remove(i);
            m14128e();
            Bundle data = message.getData();
            if (data.getBoolean(MessengerIpcClient.KEY_UNSUPPORTED, false)) {
                zzzVar.m14126a(new zzaa(4, "Not supported by GmsCore"));
                return true;
            }
            zzzVar.mo14125b(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m14130c(int i) {
        synchronized (this) {
            zzz<?> zzzVar = this.f7802e.get(i);
            if (zzzVar != null) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Timing out request: ");
                sb.append(i);
                Log.w("MessengerIpcClient", sb.toString());
                this.f7802e.remove(i);
                zzzVar.m14126a(new zzaa(3, "Timed out waiting for response"));
                m14128e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m14128e() {
        Context context;
        synchronized (this) {
            if (this.f7798a == 2 && this.f7801d.isEmpty() && this.f7802e.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.f7798a = 3;
                ConnectionTracker b = ConnectionTracker.m14372b();
                context = this.f7803f.f7796a;
                b.m14371c(context, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m14127f() {
        synchronized (this) {
            if (this.f7798a == 1) {
                m14132a(1, "Timed out while binding");
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service connected");
            }
            if (iBinder == null) {
                m14132a(0, "Null service connection");
                return;
            }
            try {
                this.f7800c = new zzy(iBinder);
                this.f7798a = 2;
                m14129d();
            } catch (RemoteException e) {
                m14132a(0, e.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service disconnected");
            }
            m14132a(2, "Service disconnected");
        }
    }
}
