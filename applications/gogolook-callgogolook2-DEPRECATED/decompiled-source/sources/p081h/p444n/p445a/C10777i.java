package p081h.p444n.p445a;

import android.annotation.SuppressLint;
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
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import p081h.p444n.p445a.C10794s;
/* renamed from: h.n.a.i */
/* loaded from: classes2-dex2jar.jar:h/n/a/i.class */
public class C10777i {

    /* renamed from: b */
    public final Context f24600b;

    /* renamed from: c */
    public final ExecutorService f24601c;

    /* renamed from: d */
    public final AbstractC10782j f24602d;

    /* renamed from: j */
    public final Handler f24608j;

    /* renamed from: k */
    public final AbstractC10766d f24609k;

    /* renamed from: l */
    public final C10755b0 f24610l;

    /* renamed from: o */
    public final boolean f24613o;

    /* renamed from: p */
    public boolean f24614p;

    /* renamed from: a */
    public final HandlerThreadC10780b f24599a = new HandlerThreadC10780b();

    /* renamed from: e */
    public final Map<String, RunnableC10758c> f24603e = new LinkedHashMap();

    /* renamed from: f */
    public final Map<Object, AbstractC10751a> f24604f = new WeakHashMap();

    /* renamed from: g */
    public final Map<Object, AbstractC10751a> f24605g = new WeakHashMap();

    /* renamed from: h */
    public final Set<Object> f24606h = new LinkedHashSet();

    /* renamed from: i */
    public final Handler f24607i = new HandlerC10778a(this.f24599a.getLooper(), this);

    /* renamed from: m */
    public final List<RunnableC10758c> f24611m = new ArrayList(4);

    /* renamed from: n */
    public final C10781c f24612n = new C10781c(this);

    /* renamed from: h.n.a.i$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/i$a.class */
    public static class HandlerC10778a extends Handler {

        /* renamed from: a */
        public final C10777i f24615a;

        /* renamed from: h.n.a.i$a$a */
        /* loaded from: classes2-dex2jar.jar:h/n/a/i$a$a.class */
        public class RunnableC10779a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Message f24616a;

            public RunnableC10779a(HandlerC10778a aVar, Message message) {
                this.f24616a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f24616a.what);
            }
        }

        public HandlerC10778a(Looper looper, C10777i iVar) {
            super(looper);
            this.f24615a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z = false;
            switch (message.what) {
                case 1:
                    this.f24615a.m10639e((AbstractC10751a) message.obj);
                    return;
                case 2:
                    this.f24615a.m10641d((AbstractC10751a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    C10798u.f24653p.post(new RunnableC10779a(this, message));
                    return;
                case 4:
                    this.f24615a.m10637f((RunnableC10758c) message.obj);
                    return;
                case 5:
                    this.f24615a.m10636g((RunnableC10758c) message.obj);
                    return;
                case 6:
                    this.f24615a.m10653a((RunnableC10758c) message.obj, false);
                    return;
                case 7:
                    this.f24615a.m10649b();
                    return;
                case 9:
                    this.f24615a.m10648b((NetworkInfo) message.obj);
                    return;
                case 10:
                    C10777i iVar = this.f24615a;
                    if (message.arg1 == 1) {
                        z = true;
                    }
                    iVar.m10644b(z);
                    return;
                case 11:
                    this.f24615a.m10652a(message.obj);
                    return;
                case 12:
                    this.f24615a.m10645b(message.obj);
                    return;
            }
        }
    }

    /* renamed from: h.n.a.i$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/i$b.class */
    public static class HandlerThreadC10780b extends HandlerThread {
        public HandlerThreadC10780b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* renamed from: h.n.a.i$c */
    /* loaded from: classes2-dex2jar.jar:h/n/a/i$c.class */
    public static class C10781c extends BroadcastReceiver {

        /* renamed from: a */
        public final C10777i f24617a;

        public C10781c(C10777i iVar) {
            this.f24617a = iVar;
        }

        /* renamed from: a */
        public void m10635a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f24617a.f24613o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f24617a.f24600b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"MissingPermission"})
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra(IapProductRealmObject.STATE)) {
                        this.f24617a.m10650a(intent.getBooleanExtra(IapProductRealmObject.STATE, false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f24617a.m10657a(((ConnectivityManager) C10770e0.m10678a(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }

    public C10777i(Context context, ExecutorService executorService, Handler handler, AbstractC10782j jVar, AbstractC10766d dVar, C10755b0 b0Var) {
        this.f24599a.start();
        C10770e0.m10675a(this.f24599a.getLooper());
        this.f24600b = context;
        this.f24601c = executorService;
        this.f24602d = jVar;
        this.f24608j = handler;
        this.f24609k = dVar;
        this.f24610l = b0Var;
        this.f24614p = C10770e0.m10662c(this.f24600b);
        this.f24613o = C10770e0.m10663b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.f24612n.m10635a();
    }

    /* renamed from: a */
    public final void m10658a() {
        if (!this.f24604f.isEmpty()) {
            Iterator<AbstractC10751a> it = this.f24604f.values().iterator();
            while (it.hasNext()) {
                AbstractC10751a next = it.next();
                it.remove();
                if (next.m10732e().f24667n) {
                    C10770e0.m10668a("Dispatcher", "replaying", next.m10730g().m10586d());
                }
                m10655a(next, false);
            }
        }
    }

    /* renamed from: a */
    public void m10657a(NetworkInfo networkInfo) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    /* renamed from: a */
    public void m10656a(AbstractC10751a aVar) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    /* renamed from: a */
    public void m10655a(AbstractC10751a aVar, boolean z) {
        if (this.f24606h.contains(aVar.m10729h())) {
            this.f24605g.put(aVar.mo10634i(), aVar);
            if (aVar.m10732e().f24667n) {
                String d = aVar.f24515b.m10586d();
                C10770e0.m10667a("Dispatcher", "paused", d, "because tag '" + aVar.m10729h() + "' is paused");
                return;
            }
            return;
        }
        RunnableC10758c cVar = this.f24603e.get(aVar.m10735b());
        if (cVar != null) {
            cVar.m10709a(aVar);
        } else if (!this.f24601c.isShutdown()) {
            RunnableC10758c a = RunnableC10758c.m10708a(aVar.m10732e(), this, this.f24609k, this.f24610l, aVar);
            a.f24565n = this.f24601c.submit(a);
            this.f24603e.put(aVar.m10735b(), a);
            if (z) {
                this.f24604f.remove(aVar.mo10634i());
            }
            if (aVar.m10732e().f24667n) {
                C10770e0.m10668a("Dispatcher", "enqueued", aVar.f24515b.m10586d());
            }
        } else if (aVar.m10732e().f24667n) {
            C10770e0.m10667a("Dispatcher", "ignored", aVar.f24515b.m10586d(), "because shut down");
        }
    }

    /* renamed from: a */
    public final void m10654a(RunnableC10758c cVar) {
        if (!cVar.m10687n()) {
            Bitmap bitmap = cVar.f24564m;
            if (bitmap != null) {
                bitmap.prepareToDraw();
            }
            this.f24611m.add(cVar);
            if (!this.f24607i.hasMessages(7)) {
                this.f24607i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    /* renamed from: a */
    public void m10653a(RunnableC10758c cVar, boolean z) {
        if (cVar.m10691j().f24667n) {
            String a = C10770e0.m10674a(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            C10770e0.m10667a("Dispatcher", "batched", a, sb.toString());
        }
        this.f24603e.remove(cVar.m10694g());
        m10654a(cVar);
    }

    /* renamed from: a */
    public void m10652a(Object obj) {
        if (this.f24606h.add(obj)) {
            Iterator<RunnableC10758c> it = this.f24603e.values().iterator();
            while (it.hasNext()) {
                RunnableC10758c next = it.next();
                boolean z = next.m10691j().f24667n;
                AbstractC10751a c = next.m10698c();
                List<AbstractC10751a> d = next.m10697d();
                boolean z2 = d != null && !d.isEmpty();
                if (c != null || z2) {
                    if (c != null && c.m10729h().equals(obj)) {
                        next.m10699b(c);
                        this.f24605g.put(c.mo10634i(), c);
                        if (z) {
                            C10770e0.m10667a("Dispatcher", "paused", c.f24515b.m10586d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = d.size() - 1; size >= 0; size--) {
                            AbstractC10751a aVar = d.get(size);
                            if (aVar.m10729h().equals(obj)) {
                                next.m10699b(aVar);
                                this.f24605g.put(aVar.mo10634i(), aVar);
                                if (z) {
                                    C10770e0.m10667a("Dispatcher", "paused", aVar.f24515b.m10586d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.m10711a()) {
                        it.remove();
                        if (z) {
                            C10770e0.m10667a("Dispatcher", "canceled", C10770e0.m10674a(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m10651a(List<RunnableC10758c> list) {
        if (!(list == null || list.isEmpty() || !list.get(0).m10691j().f24667n)) {
            StringBuilder sb = new StringBuilder();
            for (RunnableC10758c cVar : list) {
                if (sb.length() > 0) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(C10770e0.m10674a(cVar));
            }
            C10770e0.m10668a("Dispatcher", "delivered", sb.toString());
        }
    }

    /* renamed from: a */
    public void m10650a(boolean z) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    /* renamed from: b */
    public void m10649b() {
        ArrayList arrayList = new ArrayList(this.f24611m);
        this.f24611m.clear();
        Handler handler = this.f24608j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        m10651a((List<RunnableC10758c>) arrayList);
    }

    /* renamed from: b */
    public void m10648b(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f24601c;
        if (executorService instanceof C10809w) {
            ((C10809w) executorService).m10591a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            m10658a();
        }
    }

    /* renamed from: b */
    public void m10647b(AbstractC10751a aVar) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    /* renamed from: b */
    public void m10646b(RunnableC10758c cVar) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    /* renamed from: b */
    public void m10645b(Object obj) {
        if (this.f24606h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<AbstractC10751a> it = this.f24605g.values().iterator();
            while (it.hasNext()) {
                AbstractC10751a next = it.next();
                if (next.m10729h().equals(obj)) {
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
                Handler handler = this.f24608j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    /* renamed from: b */
    public void m10644b(boolean z) {
        this.f24614p = z;
    }

    /* renamed from: c */
    public final void m10643c(AbstractC10751a aVar) {
        Object i = aVar.mo10634i();
        if (i != null) {
            aVar.f24524k = true;
            this.f24604f.put(i, aVar);
        }
    }

    /* renamed from: c */
    public void m10642c(RunnableC10758c cVar) {
        Handler handler = this.f24607i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    /* renamed from: d */
    public void m10641d(AbstractC10751a aVar) {
        String b = aVar.m10735b();
        RunnableC10758c cVar = this.f24603e.get(b);
        if (cVar != null) {
            cVar.m10699b(aVar);
            if (cVar.m10711a()) {
                this.f24603e.remove(b);
                if (aVar.m10732e().f24667n) {
                    C10770e0.m10668a("Dispatcher", "canceled", aVar.m10730g().m10586d());
                }
            }
        }
        if (this.f24606h.contains(aVar.m10729h())) {
            this.f24605g.remove(aVar.mo10634i());
            if (aVar.m10732e().f24667n) {
                C10770e0.m10667a("Dispatcher", "canceled", aVar.m10730g().m10586d(), "because paused request got canceled");
            }
        }
        AbstractC10751a remove = this.f24604f.remove(aVar.mo10634i());
        if (remove != null && remove.m10732e().f24667n) {
            C10770e0.m10667a("Dispatcher", "canceled", remove.m10730g().m10586d(), "from replaying");
        }
    }

    /* renamed from: d */
    public void m10640d(RunnableC10758c cVar) {
        Handler handler = this.f24607i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    /* renamed from: e */
    public void m10639e(AbstractC10751a aVar) {
        m10655a(aVar, true);
    }

    /* renamed from: e */
    public final void m10638e(RunnableC10758c cVar) {
        AbstractC10751a c = cVar.m10698c();
        if (c != null) {
            m10643c(c);
        }
        List<AbstractC10751a> d = cVar.m10697d();
        if (d != null) {
            int size = d.size();
            for (int i = 0; i < size; i++) {
                m10643c(d.get(i));
            }
        }
    }

    /* renamed from: f */
    public void m10637f(RunnableC10758c cVar) {
        if (EnumC10792q.m10618b(cVar.m10692i())) {
            this.f24609k.mo10628a(cVar.m10694g(), cVar.m10689l());
        }
        this.f24603e.remove(cVar.m10694g());
        m10654a(cVar);
        if (cVar.m10691j().f24667n) {
            C10770e0.m10667a("Dispatcher", "batched", C10770e0.m10674a(cVar), "for completion");
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: g */
    public void m10636g(RunnableC10758c cVar) {
        if (!cVar.m10687n()) {
            if (this.f24601c.isShutdown()) {
                m10653a(cVar, false);
                return;
            }
            NetworkInfo networkInfo = null;
            if (this.f24613o) {
                networkInfo = ((ConnectivityManager) C10770e0.m10678a(this.f24600b, "connectivity")).getActiveNetworkInfo();
            }
            if (cVar.m10702a(this.f24614p, networkInfo)) {
                if (cVar.m10691j().f24667n) {
                    C10770e0.m10668a("Dispatcher", "retrying", C10770e0.m10674a(cVar));
                }
                if (cVar.m10695f() instanceof C10794s.C10795a) {
                    cVar.f24560i |= EnumC10793r.NO_CACHE.f24647a;
                }
                cVar.f24565n = this.f24601c.submit(cVar);
                return;
            }
            boolean z = false;
            if (this.f24613o) {
                z = false;
                if (cVar.m10686o()) {
                    z = true;
                }
            }
            m10653a(cVar, z);
            if (z) {
                m10638e(cVar);
            }
        }
    }
}
