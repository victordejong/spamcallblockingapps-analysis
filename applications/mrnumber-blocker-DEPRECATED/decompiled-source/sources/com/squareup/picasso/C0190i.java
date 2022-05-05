package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.i */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i.class */
public class C0190i {

    /* renamed from: a */
    final HandlerThreadC0194c f356a;

    /* renamed from: b */
    final Context f357b;

    /* renamed from: c */
    final ExecutorService f358c;

    /* renamed from: d */
    final AbstractC0196j f359d;

    /* renamed from: i */
    final Handler f364i;

    /* renamed from: j */
    final Handler f365j;

    /* renamed from: k */
    final AbstractC0182d f366k;

    /* renamed from: l */
    final C0171a0 f367l;

    /* renamed from: n */
    final C0195d f369n;

    /* renamed from: o */
    final boolean f370o;

    /* renamed from: p */
    boolean f371p;

    /* renamed from: e */
    final Map<String, RunnableC0175c> f360e = new LinkedHashMap();

    /* renamed from: f */
    final Map<Object, AbstractC0169a> f361f = new WeakHashMap();

    /* renamed from: g */
    final Map<Object, AbstractC0169a> f362g = new WeakHashMap();

    /* renamed from: h */
    final Set<Object> f363h = new LinkedHashSet();

    /* renamed from: m */
    final List<RunnableC0175c> f368m = new ArrayList(4);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.i$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$a.class */
    public class RunnableC0191a implements Runnable {
        RunnableC0191a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0190i.this.f369n.m744b();
        }
    }

    /* renamed from: com.squareup.picasso.i$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b.class */
    private static class HandlerC0192b extends Handler {

        /* renamed from: a */
        private final C0190i f373a;

        /* renamed from: com.squareup.picasso.i$b$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$b$a.class */
        class RunnableC0193a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f374f;

            RunnableC0193a(HandlerC0192b bVar, Message message) {
                this.f374f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f374f.what);
            }
        }

        HandlerC0192b(Looper looper, C0190i iVar) {
            super(looper);
            this.f373a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    this.f373a.m748x((AbstractC0169a) message.obj);
                    return;
                case 2:
                    this.f373a.m755q((AbstractC0169a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    Picasso.HANDLER.post(new RunnableC0193a(this, message));
                    return;
                case 4:
                    this.f373a.m754r((RunnableC0175c) message.obj);
                    return;
                case 5:
                    this.f373a.m749w((RunnableC0175c) message.obj);
                    return;
                case 6:
                    this.f373a.m753s((RunnableC0175c) message.obj, false);
                    return;
                case 7:
                    this.f373a.m756p();
                    return;
                case 9:
                    this.f373a.m752t((NetworkInfo) message.obj);
                    return;
                case 10:
                    C0190i iVar = this.f373a;
                    if (message.arg1 == 1) {
                        z = true;
                    }
                    iVar.m757o(z);
                    return;
                case 11:
                    this.f373a.m751u(message.obj);
                    return;
                case 12:
                    this.f373a.m750v(message.obj);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.i$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$c.class */
    public static class HandlerThreadC0194c extends HandlerThread {
        HandlerThreadC0194c() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* renamed from: com.squareup.picasso.i$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/i$d.class */
    static class C0195d extends BroadcastReceiver {

        /* renamed from: a */
        private final C0190i f375a;

        C0195d(C0190i iVar) {
            this.f375a = iVar;
        }

        /* renamed from: a */
        void m745a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f375a.f370o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f375a.f357b.registerReceiver(this, intentFilter);
        }

        /* renamed from: b */
        void m744b() {
            this.f375a.f357b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        this.f375a.m770b(intent.getBooleanExtra("state", false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f375a.m766f(((ConnectivityManager) C0185f0.m780n(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0190i(Context context, ExecutorService executorService, Handler handler, AbstractC0196j jVar, AbstractC0182d dVar, C0171a0 a0Var) {
        HandlerThreadC0194c cVar = new HandlerThreadC0194c();
        this.f356a = cVar;
        cVar.start();
        C0185f0.m786h(cVar.getLooper());
        this.f357b = context;
        this.f358c = executorService;
        this.f364i = new HandlerC0192b(cVar.getLooper(), this);
        this.f359d = jVar;
        this.f365j = handler;
        this.f366k = dVar;
        this.f367l = a0Var;
        this.f371p = C0185f0.m778p(context);
        this.f370o = C0185f0.m779o(context, "android.permission.ACCESS_NETWORK_STATE");
        C0195d dVar2 = new C0195d(this);
        this.f369n = dVar2;
        dVar2.m745a();
    }

    /* renamed from: a */
    private void m771a(RunnableC0175c cVar) {
        if (!cVar.m806u()) {
            Bitmap bitmap = cVar.f338r;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            this.f368m.add(cVar);
            if (!this.f364i.hasMessages(7)) {
                this.f364i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    /* renamed from: k */
    private void m761k() {
        if (!this.f361f.isEmpty()) {
            Iterator<AbstractC0169a> it = this.f361f.values().iterator();
            while (it.hasNext()) {
                AbstractC0169a next = it.next();
                it.remove();
                if (next.m848g().loggingEnabled) {
                    C0185f0.m775s("Dispatcher", "replaying", next.m846i().m726d());
                }
                m747y(next, false);
            }
        }
    }

    /* renamed from: l */
    private void m760l(List<RunnableC0175c> list) {
        if (!(list == null || list.isEmpty() || !list.get(0).m810q().loggingEnabled)) {
            StringBuilder sb = new StringBuilder();
            for (RunnableC0175c cVar : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(C0185f0.m784j(cVar));
            }
            C0185f0.m775s("Dispatcher", "delivered", sb.toString());
        }
    }

    /* renamed from: m */
    private void m759m(AbstractC0169a aVar) {
        Object k = aVar.m844k();
        if (k != null) {
            aVar.f289k = true;
            this.f361f.put(k, aVar);
        }
    }

    /* renamed from: n */
    private void m758n(RunnableC0175c cVar) {
        AbstractC0169a h = cVar.m819h();
        if (h != null) {
            m759m(h);
        }
        List<AbstractC0169a> i = cVar.m818i();
        if (i != null) {
            int size = i.size();
            for (int i2 = 0; i2 < size; i2++) {
                m759m(i.get(i2));
            }
        }
    }

    /* renamed from: b */
    void m770b(boolean z) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m769c(AbstractC0169a aVar) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m768d(RunnableC0175c cVar) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m767e(RunnableC0175c cVar) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    /* renamed from: f */
    void m766f(NetworkInfo networkInfo) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m765g(Object obj) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(11, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m764h(Object obj) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(12, obj));
    }

    /* renamed from: i */
    void m763i(RunnableC0175c cVar) {
        Handler handler = this.f364i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m762j(AbstractC0169a aVar) {
        Handler handler = this.f364i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    /* renamed from: o */
    void m757o(boolean z) {
        this.f371p = z;
    }

    /* renamed from: p */
    void m756p() {
        ArrayList arrayList = new ArrayList(this.f368m);
        this.f368m.clear();
        Handler handler = this.f365j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        m760l(arrayList);
    }

    /* renamed from: q */
    void m755q(AbstractC0169a aVar) {
        String d = aVar.m851d();
        RunnableC0175c cVar = this.f360e.get(d);
        if (cVar != null) {
            cVar.m821f(aVar);
            if (cVar.m824c()) {
                this.f360e.remove(d);
                if (aVar.m848g().loggingEnabled) {
                    C0185f0.m775s("Dispatcher", "canceled", aVar.m846i().m726d());
                }
            }
        }
        if (this.f363h.contains(aVar.m845j())) {
            this.f362g.remove(aVar.m844k());
            if (aVar.m848g().loggingEnabled) {
                C0185f0.m774t("Dispatcher", "canceled", aVar.m846i().m726d(), "because paused request got canceled");
            }
        }
        AbstractC0169a remove = this.f361f.remove(aVar.m844k());
        if (remove != null && remove.m848g().loggingEnabled) {
            C0185f0.m774t("Dispatcher", "canceled", remove.m846i().m726d(), "from replaying");
        }
    }

    /* renamed from: r */
    void m754r(RunnableC0175c cVar) {
        if (EnumC0198p.shouldWriteToMemoryCache(cVar.m811p())) {
            this.f366k.m796b(cVar.m813n(), cVar.m808s());
        }
        this.f360e.remove(cVar.m813n());
        m771a(cVar);
        if (cVar.m810q().loggingEnabled) {
            C0185f0.m774t("Dispatcher", "batched", C0185f0.m784j(cVar), "for completion");
        }
    }

    /* renamed from: s */
    void m753s(RunnableC0175c cVar, boolean z) {
        if (cVar.m810q().loggingEnabled) {
            String j = C0185f0.m784j(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            C0185f0.m774t("Dispatcher", "batched", j, sb.toString());
        }
        this.f360e.remove(cVar.m813n());
        m771a(cVar);
    }

    /* renamed from: t */
    void m752t(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f358c;
        if (executorService instanceof C0201u) {
            ((C0201u) executorService).m732a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            m761k();
        }
    }

    /* renamed from: u */
    void m751u(Object obj) {
        if (this.f363h.add(obj)) {
            Iterator<RunnableC0175c> it = this.f360e.values().iterator();
            while (it.hasNext()) {
                RunnableC0175c next = it.next();
                boolean z = next.m810q().loggingEnabled;
                AbstractC0169a h = next.m819h();
                List<AbstractC0169a> i = next.m818i();
                boolean z2 = i != null && !i.isEmpty();
                if (h != null || z2) {
                    if (h != null && h.m845j().equals(obj)) {
                        next.m821f(h);
                        this.f362g.put(h.m844k(), h);
                        if (z) {
                            C0185f0.m774t("Dispatcher", "paused", h.f280b.m726d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = i.size() - 1; size >= 0; size--) {
                            AbstractC0169a aVar = i.get(size);
                            if (aVar.m845j().equals(obj)) {
                                next.m821f(aVar);
                                this.f362g.put(aVar.m844k(), aVar);
                                if (z) {
                                    C0185f0.m774t("Dispatcher", "paused", aVar.f280b.m726d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.m824c()) {
                        it.remove();
                        if (z) {
                            C0185f0.m774t("Dispatcher", "canceled", C0185f0.m784j(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    /* renamed from: v */
    void m750v(Object obj) {
        if (this.f363h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<AbstractC0169a> it = this.f362g.values().iterator();
            while (it.hasNext()) {
                AbstractC0169a next = it.next();
                if (next.m845j().equals(obj)) {
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(next);
                    it.remove();
                    arrayList = arrayList2;
                }
            }
            if (arrayList != null) {
                Handler handler = this.f365j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    /* renamed from: w */
    void m749w(RunnableC0175c cVar) {
        if (!cVar.m806u()) {
            if (this.f358c.isShutdown()) {
                m753s(cVar, false);
                return;
            }
            NetworkInfo networkInfo = null;
            if (this.f370o) {
                networkInfo = ((ConnectivityManager) C0185f0.m780n(this.f357b, "connectivity")).getActiveNetworkInfo();
            }
            if (cVar.m804w(this.f371p, networkInfo)) {
                if (cVar.m810q().loggingEnabled) {
                    C0185f0.m775s("Dispatcher", "retrying", C0185f0.m784j(cVar));
                }
                if (cVar.m816k() instanceof r$a) {
                    cVar.f334n |= EnumC0199q.NO_CACHE.index;
                }
                cVar.f339s = this.f358c.submit(cVar);
                return;
            }
            boolean z = false;
            if (this.f370o) {
                z = false;
                if (cVar.m803x()) {
                    z = true;
                }
            }
            m753s(cVar, z);
            if (z) {
                m758n(cVar);
            }
        }
    }

    /* renamed from: x */
    void m748x(AbstractC0169a aVar) {
        m747y(aVar, true);
    }

    /* renamed from: y */
    void m747y(AbstractC0169a aVar, boolean z) {
        if (this.f363h.contains(aVar.m845j())) {
            this.f362g.put(aVar.m844k(), aVar);
            if (aVar.m848g().loggingEnabled) {
                String d = aVar.f280b.m726d();
                C0185f0.m774t("Dispatcher", "paused", d, "because tag '" + aVar.m845j() + "' is paused");
                return;
            }
            return;
        }
        RunnableC0175c cVar = this.f360e.get(aVar.m851d());
        if (cVar != null) {
            cVar.m825b(aVar);
        } else if (!this.f358c.isShutdown()) {
            RunnableC0175c g = RunnableC0175c.m820g(aVar.m848g(), this, this.f366k, this.f367l, aVar);
            g.f339s = this.f358c.submit(g);
            this.f360e.put(aVar.m851d(), g);
            if (z) {
                this.f361f.remove(aVar.m844k());
            }
            if (aVar.m848g().loggingEnabled) {
                C0185f0.m775s("Dispatcher", "enqueued", aVar.f280b.m726d());
            }
        } else if (aVar.m848g().loggingEnabled) {
            C0185f0.m774t("Dispatcher", "ignored", aVar.f280b.m726d(), "because shut down");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public void m746z() {
        ExecutorService executorService = this.f358c;
        if (executorService instanceof C0201u) {
            executorService.shutdown();
        }
        this.f359d.shutdown();
        this.f356a.quit();
        Picasso.HANDLER.post(new RunnableC0191a());
    }
}
