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
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14226f;
import com.google.android.gms.wearable.AbstractC14355k;
import com.google.android.gms.wearable.ChannelClient;
import com.google.android.gms.wearable.internal.AbstractBinderC14269bk;
import com.google.android.gms.wearable.internal.C14339l;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzaw;
import com.google.android.gms.wearable.internal.zzfe;
import com.google.android.gms.wearable.internal.zzfo;
import com.google.android.gms.wearable.internal.zzi;
import com.google.android.gms.wearable.internal.zzl;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService.class */
public class WearableListenerService extends Service implements AbstractC14209a.AbstractC14210a, AbstractC14226f.AbstractC14227a, AbstractC14355k.AbstractC14356a {

    /* renamed from: a */
    private ComponentName f52185a;

    /* renamed from: b */
    private HandlerC14207c f52186b;

    /* renamed from: c */
    private IBinder f52187c;

    /* renamed from: d */
    private Intent f52188d;

    /* renamed from: e */
    private Looper f52189e;

    /* renamed from: g */
    private boolean f52191g;

    /* renamed from: f */
    private final Object f52190f = new Object();

    /* renamed from: h */
    private C14339l f52192h = new C14339l(new C14205a());

    /* renamed from: com.google.android.gms.wearable.WearableListenerService$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$a.class */
    final class C14205a extends ChannelClient.C14204a {
        private C14205a() {
            WearableListenerService.this = r4;
        }
    }

    /* renamed from: com.google.android.gms.wearable.WearableListenerService$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$b.class */
    public final class ServiceConnectionC14206b implements ServiceConnection {
        private ServiceConnectionC14206b(WearableListenerService wearableListenerService) {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.google.android.gms.wearable.WearableListenerService$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$c.class */
    public final class HandlerC14207c extends Handler {

        /* renamed from: a */
        private boolean f52194a;

        /* renamed from: b */
        private final ServiceConnectionC14206b f52195b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        HandlerC14207c(Looper looper) {
            super(looper);
            WearableListenerService.this = r7;
            this.f52195b = new ServiceConnectionC14206b();
        }

        /* renamed from: a */
        private final void m11446a() {
            synchronized (this) {
                if (this.f52194a) {
                    return;
                }
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.f52185a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
                    sb.append("bindService: ");
                    sb.append(valueOf);
                }
                WearableListenerService wearableListenerService = WearableListenerService.this;
                wearableListenerService.bindService(wearableListenerService.f52188d, this.f52195b, 1);
                this.f52194a = true;
            }
        }

        /* renamed from: a */
        final void m11445a(String str) {
            synchronized (this) {
                if (!this.f52194a) {
                    return;
                }
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.f52185a);
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(valueOf).length());
                    sb.append("unbindService: ");
                    sb.append(str);
                    sb.append(", ");
                    sb.append(valueOf);
                }
                try {
                    WearableListenerService.this.unbindService(this.f52195b);
                } catch (RuntimeException e) {
                    Log.e("WearableLS", "Exception when unbinding from local service", e);
                }
                this.f52194a = false;
            }
        }

        @Override // android.os.Handler
        public final void dispatchMessage(Message message) {
            m11446a();
            try {
                super.dispatchMessage(message);
                if (hasMessages(0)) {
                    return;
                }
                m11445a("dispatch");
            } catch (Throwable th) {
                if (!hasMessages(0)) {
                    m11445a("dispatch");
                }
                throw th;
            }
        }
    }

    /* renamed from: com.google.android.gms.wearable.WearableListenerService$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/WearableListenerService$d.class */
    public final class BinderC14208d extends AbstractBinderC14269bk {

        /* renamed from: b */
        private volatile int f52198b;

        private BinderC14208d() {
            WearableListenerService.this = r4;
            this.f52198b = -1;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00a3  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean m11444a(java.lang.Runnable r7, java.lang.String r8, java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 208
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.WearableListenerService.BinderC14208d.m11444a(java.lang.Runnable, java.lang.String, java.lang.Object):boolean");
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11384a(DataHolder dataHolder) {
            RunnableC14375z runnableC14375z = new RunnableC14375z(this, dataHolder);
            try {
                String valueOf = String.valueOf(dataHolder);
                int count = dataHolder.getCount();
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append(valueOf);
                sb.append(", rows=");
                sb.append(count);
                if (m11444a(runnableC14375z, "onDataItemChanged", sb.toString())) {
                }
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11383a(zzah zzahVar) {
            m11444a(new RunnableC14216ae(this, zzahVar), "onConnectedCapabilityChanged", zzahVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11382a(zzaw zzawVar) {
            m11444a(new RunnableC14219ah(this, zzawVar), "onChannelEvent", zzawVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11381a(zzfe zzfeVar) {
            m11444a(new RunnableC14212aa(this, zzfeVar), "onMessageReceived", zzfeVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11380a(zzfo zzfoVar) {
            m11444a(new RunnableC14213ab(this, zzfoVar), "onPeerConnected", zzfoVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11379a(zzi zziVar) {
            m11444a(new RunnableC14218ag(this, zziVar), "onEntityUpdate", zziVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11378a(zzl zzlVar) {
            m11444a(new RunnableC14217af(this, zzlVar), "onNotificationReceived", zzlVar);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: a */
        public final void mo11377a(List<zzfo> list) {
            m11444a(new RunnableC14215ad(this, list), "onConnectedNodes", list);
        }

        @Override // com.google.android.gms.wearable.internal.AbstractC14268bj
        /* renamed from: b */
        public final void mo11375b(zzfo zzfoVar) {
            m11444a(new RunnableC14214ac(this, zzfoVar), "onPeerDisconnected", zzfoVar);
        }
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11359a(Channel channel) {
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: a */
    public final void mo11358a(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.AbstractC14209a.AbstractC14210a
    /* renamed from: a */
    public final void mo11363a(AbstractC14223c abstractC14223c) {
    }

    @Override // com.google.android.gms.wearable.AbstractC14355k.AbstractC14356a
    /* renamed from: a */
    public final void mo11348a(AbstractC14360m abstractC14360m) {
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: b */
    public final void mo11357b(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.AbstractC14226f.AbstractC14227a
    /* renamed from: c */
    public final void mo11356c(Channel channel, int i, int i2) {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if ("com.google.android.gms.wearable.BIND_LISTENER".equals(intent.getAction())) {
            return this.f52187c;
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f52185a = new ComponentName(this, getClass().getName());
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.f52185a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
            sb.append("onCreate: ");
            sb.append(valueOf);
        }
        if (this.f52189e == null) {
            HandlerThread handlerThread = new HandlerThread("WearableListenerService");
            handlerThread.start();
            this.f52189e = handlerThread.getLooper();
        }
        this.f52186b = new HandlerC14207c(this.f52189e);
        Intent intent = new Intent("com.google.android.gms.wearable.BIND_LISTENER");
        this.f52188d = intent;
        intent.setComponent(this.f52185a);
        this.f52187c = new BinderC14208d();
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.f52185a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 11);
            sb.append("onDestroy: ");
            sb.append(valueOf);
        }
        synchronized (this.f52190f) {
            this.f52191g = true;
            HandlerC14207c handlerC14207c = this.f52186b;
            if (handlerC14207c == null) {
                String valueOf2 = String.valueOf(this.f52185a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 111);
                sb2.append("onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
            handlerC14207c.getLooper().quit();
            handlerC14207c.m11445a("quit");
        }
        super.onDestroy();
    }
}
