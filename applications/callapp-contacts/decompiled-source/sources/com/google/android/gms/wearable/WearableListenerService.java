package com.google.android.gms.wearable;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.ChannelClient;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.f;
import com.google.android.gms.wearable.internal.bk;
import com.google.android.gms.wearable.internal.l;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzaw;
import com.google.android.gms.wearable.internal.zzfe;
import com.google.android.gms.wearable.internal.zzfo;
import com.google.android.gms.wearable.internal.zzi;
import com.google.android.gms.wearable.internal.zzl;
import com.google.android.gms.wearable.k;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService.class */
public class WearableListenerService extends Service implements a.AbstractC0483a, f.a, k.a {

    /* renamed from: a  reason: collision with root package name */
    private ComponentName f30053a;

    /* renamed from: b  reason: collision with root package name */
    private c f30054b;

    /* renamed from: c  reason: collision with root package name */
    private IBinder f30055c;

    /* renamed from: d  reason: collision with root package name */
    private Intent f30056d;
    private Looper e;
    private boolean g;
    private final Object f = new Object();
    private l h = new l(new a());

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$a.class */
    final class a extends ChannelClient.a {
        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$b.class */
    public final class b implements ServiceConnection {
        private b(WearableListenerService wearableListenerService) {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$c.class */
    public final class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private boolean f30058a;

        /* renamed from: b  reason: collision with root package name */
        private final b f30059b;

        c(Looper looper) {
            super(looper);
            this.f30059b = new b();
        }

        private final void a() {
            synchronized (this) {
                if (!this.f30058a) {
                    if (Log.isLoggable("WearableLS", 2)) {
                        String valueOf = String.valueOf(WearableListenerService.this.f30053a);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
                        sb.append("bindService: ");
                        sb.append(valueOf);
                    }
                    WearableListenerService wearableListenerService = WearableListenerService.this;
                    wearableListenerService.bindService(wearableListenerService.f30056d, this.f30059b, 1);
                    this.f30058a = true;
                }
            }
        }

        final void a(String str) {
            synchronized (this) {
                if (this.f30058a) {
                    if (Log.isLoggable("WearableLS", 2)) {
                        String valueOf = String.valueOf(WearableListenerService.this.f30053a);
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(valueOf).length());
                        sb.append("unbindService: ");
                        sb.append(str);
                        sb.append(", ");
                        sb.append(valueOf);
                    }
                    try {
                        WearableListenerService.this.unbindService(this.f30059b);
                    } catch (RuntimeException e) {
                        Log.e("WearableLS", "Exception when unbinding from local service", e);
                    }
                    this.f30058a = false;
                }
            }
        }

        @Override // android.os.Handler
        public final void dispatchMessage(Message message) {
            a();
            try {
                super.dispatchMessage(message);
                if (!hasMessages(0)) {
                    a("dispatch");
                }
            } catch (Throwable th) {
                if (!hasMessages(0)) {
                    a("dispatch");
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$d.class */
    public final class d extends bk {

        /* renamed from: b  reason: collision with root package name */
        private volatile int f30062b;

        private d() {
            this.f30062b = -1;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00a3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean a(java.lang.Runnable r7, java.lang.String r8, java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.WearableListenerService.d.a(java.lang.Runnable, java.lang.String, java.lang.Object):boolean");
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(DataHolder dataHolder) {
            z zVar = new z(this, dataHolder);
            try {
                String valueOf = String.valueOf(dataHolder);
                int count = dataHolder.getCount();
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append(valueOf);
                sb.append(", rows=");
                sb.append(count);
                if (a(zVar, "onDataItemChanged", sb.toString())) {
                }
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzah zzahVar) {
            a(new ae(this, zzahVar), "onConnectedCapabilityChanged", zzahVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzaw zzawVar) {
            a(new ah(this, zzawVar), "onChannelEvent", zzawVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzfe zzfeVar) {
            a(new aa(this, zzfeVar), "onMessageReceived", zzfeVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzfo zzfoVar) {
            a(new ab(this, zzfoVar), "onPeerConnected", zzfoVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzi zziVar) {
            a(new ag(this, zziVar), "onEntityUpdate", zziVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(zzl zzlVar) {
            a(new af(this, zzlVar), "onNotificationReceived", zzlVar);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void a(List<zzfo> list) {
            a(new ad(this, list), "onConnectedNodes", list);
        }

        @Override // com.google.android.gms.wearable.internal.bj
        public final void b(zzfo zzfoVar) {
            a(new ac(this, zzfoVar), "onPeerDisconnected", zzfoVar);
        }
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel) {
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void a(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.a.AbstractC0483a
    public final void a(com.google.android.gms.wearable.c cVar) {
    }

    @Override // com.google.android.gms.wearable.k.a
    public final void a(m mVar) {
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void b(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.f.a
    public final void c(Channel channel, int i, int i2) {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if ("com.google.android.gms.wearable.BIND_LISTENER".equals(intent.getAction())) {
            return this.f30055c;
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f30053a = new ComponentName(this, getClass().getName());
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.f30053a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
            sb.append("onCreate: ");
            sb.append(valueOf);
        }
        if (this.e == null) {
            HandlerThread handlerThread = new HandlerThread("WearableListenerService");
            handlerThread.start();
            this.e = handlerThread.getLooper();
        }
        this.f30054b = new c(this.e);
        Intent intent = new Intent("com.google.android.gms.wearable.BIND_LISTENER");
        this.f30056d = intent;
        intent.setComponent(this.f30053a);
        this.f30055c = new d();
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.f30053a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 11);
            sb.append("onDestroy: ");
            sb.append(valueOf);
        }
        synchronized (this.f) {
            this.g = true;
            c cVar = this.f30054b;
            if (cVar != null) {
                cVar.getLooper().quit();
                cVar.a("quit");
            } else {
                String valueOf2 = String.valueOf(this.f30053a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 111);
                sb2.append("onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
        super.onDestroy();
    }
}
