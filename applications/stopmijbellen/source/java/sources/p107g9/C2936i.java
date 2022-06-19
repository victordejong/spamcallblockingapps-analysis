package p107g9;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import p237t.C4350g;
/* renamed from: g9.i */
/* loaded from: classes2-dex2jar.jar:g9/i.class */
public class C2936i {

    /* renamed from: a */
    public final Context f9886a;

    /* renamed from: b */
    public final ExecutorService f9887b;

    /* renamed from: c */
    public final AbstractC2941j f9888c;

    /* renamed from: h */
    public final Handler f9893h;

    /* renamed from: i */
    public final Handler f9894i;

    /* renamed from: j */
    public final AbstractC2928d f9895j;

    /* renamed from: k */
    public final C2971z f9896k;

    /* renamed from: m */
    public final boolean f9898m;

    /* renamed from: n */
    public boolean f9899n;

    /* renamed from: d */
    public final Map<String, RunnableC2920c> f9889d = new LinkedHashMap();

    /* renamed from: e */
    public final Map<Object, AbstractC2915a> f9890e = new WeakHashMap();

    /* renamed from: f */
    public final Map<Object, AbstractC2915a> f9891f = new WeakHashMap();

    /* renamed from: g */
    public final Set<Object> f9892g = new LinkedHashSet();

    /* renamed from: l */
    public final List<RunnableC2920c> f9897l = new ArrayList(4);

    /* renamed from: g9.i$a */
    /* loaded from: classes2-dex2jar.jar:g9/i$a.class */
    public static class HandlerC2937a extends Handler {

        /* renamed from: a */
        public final C2936i f9900a;

        /* renamed from: g9.i$a$a */
        /* loaded from: classes2-dex2jar.jar:g9/i$a$a.class */
        public class RunnableC2938a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Message f9901a;

            public RunnableC2938a(HandlerC2937a handlerC2937a, Message message) {
                this.f9901a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m8752j = C0082b.m8752j("Unknown handler message received: ");
                m8752j.append(this.f9901a.what);
                throw new AssertionError(m8752j.toString());
            }
        }

        public HandlerC2937a(Looper looper, C2936i c2936i) {
            super(looper);
            this.f9900a = c2936i;
        }

        /* JADX WARN: Removed duplicated region for block: B:152:0x05d7  */
        /* JADX WARN: Removed duplicated region for block: B:244:? A[RETURN, SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r8) {
            /*
                Method dump skipped, instructions count: 2030
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p107g9.C2936i.HandlerC2937a.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: g9.i$b */
    /* loaded from: classes2-dex2jar.jar:g9/i$b.class */
    public static class HandlerThreadC2939b extends HandlerThread {
        public HandlerThreadC2939b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* renamed from: g9.i$c */
    /* loaded from: classes2-dex2jar.jar:g9/i$c.class */
    public static class C2940c extends BroadcastReceiver {

        /* renamed from: a */
        public final C2936i f9902a;

        public C2940c(C2936i c2936i) {
            this.f9902a = c2936i;
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"MissingPermission"})
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (!intent.hasExtra("state")) {
                    return;
                }
                C2936i c2936i = this.f9902a;
                boolean booleanExtra = intent.getBooleanExtra("state", false);
                Handler handler = c2936i.f9893h;
                handler.sendMessage(handler.obtainMessage(10, booleanExtra ? 1 : 0, 0));
            } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            } else {
                StringBuilder sb = C2929d0.f9877a;
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                C2936i c2936i2 = this.f9902a;
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                Handler handler2 = c2936i2.f9893h;
                handler2.sendMessage(handler2.obtainMessage(9, activeNetworkInfo));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2936i(android.content.Context r7, java.util.concurrent.ExecutorService r8, android.os.Handler r9, p107g9.AbstractC2941j r10, p107g9.AbstractC2928d r11, p107g9.C2971z r12) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.C2936i.<init>(android.content.Context, java.util.concurrent.ExecutorService, android.os.Handler, g9.j, g9.d, g9.z):void");
    }

    /* renamed from: a */
    public final void m2835a(RunnableC2920c runnableC2920c) {
        Future<?> future = runnableC2920c.f9866n;
        if (future != null && future.isCancelled()) {
            return;
        }
        Bitmap bitmap = runnableC2920c.f9865m;
        if (bitmap != null) {
            bitmap.prepareToDraw();
        }
        this.f9897l.add(runnableC2920c);
        if (this.f9893h.hasMessages(7)) {
            return;
        }
        this.f9893h.sendEmptyMessageDelayed(7, 200L);
    }

    /* renamed from: b */
    public void m2834b(RunnableC2920c runnableC2920c) {
        Handler handler = this.f9893h;
        handler.sendMessage(handler.obtainMessage(4, runnableC2920c));
    }

    /* renamed from: c */
    public void m2833c(RunnableC2920c runnableC2920c) {
        Handler handler = this.f9893h;
        handler.sendMessage(handler.obtainMessage(6, runnableC2920c));
    }

    /* renamed from: d */
    public void m2832d(RunnableC2920c runnableC2920c, boolean z) {
        if (runnableC2920c.f9854b.f9934m) {
            String m2840c = C2929d0.m2840c(runnableC2920c);
            StringBuilder m8752j = C0082b.m8752j("for error");
            m8752j.append(z ? " (will replay)" : "");
            C2929d0.m2838e("Dispatcher", "batched", m2840c, m8752j.toString());
        }
        this.f9889d.remove(runnableC2920c.f9858f);
        m2835a(runnableC2920c);
    }

    /* renamed from: e */
    public void m2831e(AbstractC2915a abstractC2915a, boolean z) {
        RunnableC2920c runnableC2920c;
        if (this.f9892g.contains(abstractC2915a.f9828j)) {
            this.f9891f.put(abstractC2915a.m2852d(), abstractC2915a);
            if (!abstractC2915a.f9819a.f9934m) {
                return;
            }
            String m2813b = abstractC2915a.f9820b.m2813b();
            StringBuilder m8752j = C0082b.m8752j("because tag '");
            m8752j.append(abstractC2915a.f9828j);
            m8752j.append("' is paused");
            C2929d0.m2838e("Dispatcher", "paused", m2813b, m8752j.toString());
            return;
        }
        RunnableC2920c runnableC2920c2 = this.f9889d.get(abstractC2915a.f9827i);
        if (runnableC2920c2 != null) {
            boolean z2 = runnableC2920c2.f9854b.f9934m;
            C2964v c2964v = abstractC2915a.f9820b;
            if (runnableC2920c2.f9863k == null) {
                runnableC2920c2.f9863k = abstractC2915a;
                if (!z2) {
                    return;
                }
                List<AbstractC2915a> list = runnableC2920c2.f9864l;
                if (list == null || list.isEmpty()) {
                    C2929d0.m2838e("Hunter", "joined", c2964v.m2813b(), "to empty hunter");
                    return;
                } else {
                    C2929d0.m2838e("Hunter", "joined", c2964v.m2813b(), C2929d0.m2839d(runnableC2920c2, "to "));
                    return;
                }
            }
            if (runnableC2920c2.f9864l == null) {
                runnableC2920c2.f9864l = new ArrayList(3);
            }
            runnableC2920c2.f9864l.add(abstractC2915a);
            if (z2) {
                C2929d0.m2838e("Hunter", "joined", c2964v.m2813b(), C2929d0.m2839d(runnableC2920c2, "to "));
            }
            int i = abstractC2915a.f9820b.f9971r;
            if (C4350g.m1021c(i) <= C4350g.m1021c(runnableC2920c2.f9871s)) {
                return;
            }
            runnableC2920c2.f9871s = i;
        } else if (this.f9887b.isShutdown()) {
            if (!abstractC2915a.f9819a.f9934m) {
                return;
            }
            C2929d0.m2838e("Dispatcher", "ignored", abstractC2915a.f9820b.m2813b(), "because shut down");
        } else {
            C2953s c2953s = abstractC2915a.f9819a;
            AbstractC2928d abstractC2928d = this.f9895j;
            C2971z c2971z = this.f9896k;
            Object obj = RunnableC2920c.f9849t;
            C2964v c2964v2 = abstractC2915a.f9820b;
            List<AbstractC2968x> list2 = c2953s.f9924c;
            int i2 = 0;
            int size = list2.size();
            while (true) {
                if (i2 >= size) {
                    runnableC2920c = new RunnableC2920c(c2953s, this, abstractC2928d, c2971z, abstractC2915a, RunnableC2920c.f9852w);
                    break;
                }
                AbstractC2968x abstractC2968x = list2.get(i2);
                if (abstractC2968x.mo2800c(c2964v2)) {
                    runnableC2920c = new RunnableC2920c(c2953s, this, abstractC2928d, c2971z, abstractC2915a, abstractC2968x);
                    break;
                }
                i2++;
            }
            runnableC2920c.f9866n = this.f9887b.submit(runnableC2920c);
            this.f9889d.put(abstractC2915a.f9827i, runnableC2920c);
            if (z) {
                this.f9890e.remove(abstractC2915a.m2852d());
            }
            if (!abstractC2915a.f9819a.f9934m) {
                return;
            }
            C2929d0.m2838e("Dispatcher", "enqueued", abstractC2915a.f9820b.m2813b(), "");
        }
    }
}
