package com.bytedance.sdk.openadsdk.p164d;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bytedance.sdk.openadsdk.d.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l.class */
public class C4825l {

    /* renamed from: a */
    private static volatile C4825l f17713a;

    /* renamed from: b */
    private HandlerThread f17714b;

    /* renamed from: c */
    private final Handler f17715c;

    /* renamed from: d */
    private final Executor f17716d = Executors.newCachedThreadPool();

    /* renamed from: e */
    private C4828b f17717e = C4828b.m33800a();

    /* renamed from: f */
    private Map<String, Object> f17718f;

    /* renamed from: com.bytedance.sdk.openadsdk.d.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l$a.class */
    public static class RunnableC4827a implements Serializable, Runnable {

        /* renamed from: a */
        public final AtomicInteger f17720a = new AtomicInteger(0);

        /* renamed from: b */
        public final AtomicBoolean f17721b = new AtomicBoolean(false);

        /* renamed from: c */
        public C4557i f17722c;

        /* renamed from: d */
        public String f17723d;

        /* renamed from: e */
        public Map<String, Object> f17724e;

        public RunnableC4827a() {
        }

        public RunnableC4827a(C4557i c4557i, String str, Map<String, Object> map) {
            this.f17722c = c4557i;
            this.f17723d = str;
            this.f17724e = map;
        }

        /* renamed from: a */
        public static RunnableC4827a m33803a(C4557i c4557i, String str, Map<String, Object> map) {
            return new RunnableC4827a(c4557i, str, map);
        }

        /* renamed from: a */
        public int m33804a() {
            return this.f17720a.get();
        }

        /* renamed from: a */
        public RunnableC4827a m33802a(boolean z) {
            this.f17721b.set(z);
            return this;
        }

        /* renamed from: b */
        public void m33801b() {
            this.f17720a.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17722c == null || TextUtils.isEmpty(this.f17723d)) {
                C5478q.m32119a("materialMeta or eventTag is null, pls check");
            } else {
                C4811e.m33861f(C4600n.m34815a(), this.f17722c, this.f17723d, this.f17721b.get() ? "dpl_success" : "dpl_failed", this.f17724e);
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.d.l$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l$b.class */
    public static class C4828b {

        /* renamed from: a */
        public int f17725a = 500;

        /* renamed from: b */
        public int f17726b = 5000;

        /* renamed from: a */
        public static C4828b m33800a() {
            return new C4828b();
        }
    }

    private C4825l() {
        if (this.f17714b == null) {
            HandlerThread handlerThread = new HandlerThread("OpenAppSuccEvent_HandlerThread", 10);
            this.f17714b = handlerThread;
            handlerThread.start();
        }
        this.f17715c = new Handler(this.f17714b.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.d.l.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 100) {
                    RunnableC4827a runnableC4827a = null;
                    if (message.obj != null) {
                        runnableC4827a = null;
                        if (message.obj instanceof RunnableC4827a) {
                            runnableC4827a = (RunnableC4827a) message.obj;
                        }
                    }
                    if (runnableC4827a == null) {
                        return true;
                    }
                    C4825l.this.m33806b(runnableC4827a);
                    return true;
                }
                return true;
            }
        });
    }

    /* renamed from: a */
    public static C4825l m33810a() {
        if (f17713a == null) {
            synchronized (C4825l.class) {
                try {
                    if (f17713a == null) {
                        f17713a = new C4825l();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17713a;
    }

    /* renamed from: a */
    private void m33808a(RunnableC4827a runnableC4827a) {
        if (runnableC4827a == null) {
            return;
        }
        runnableC4827a.m33801b();
        if (runnableC4827a.m33804a() * this.f17717e.f17725a > this.f17717e.f17726b) {
            m33805c(runnableC4827a.m33802a(false));
            return;
        }
        Message obtainMessage = this.f17715c.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = runnableC4827a;
        this.f17715c.sendMessageDelayed(obtainMessage, this.f17717e.f17725a);
    }

    /* renamed from: b */
    public void m33806b(RunnableC4827a runnableC4827a) {
        if (runnableC4827a == null) {
            return;
        }
        Context m34815a = C4600n.m34815a();
        if (C5438af.m32286c(m34815a, m34815a.getPackageName())) {
            m33808a(runnableC4827a);
        } else {
            m33805c(runnableC4827a.m33802a(true));
        }
    }

    /* renamed from: c */
    private void m33805c(RunnableC4827a runnableC4827a) {
        if (runnableC4827a == null) {
            return;
        }
        this.f17716d.execute(runnableC4827a);
    }

    /* renamed from: a */
    public void m33809a(C4557i c4557i, String str) {
        Message obtainMessage = this.f17715c.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = RunnableC4827a.m33803a(c4557i, str, this.f17718f);
        obtainMessage.sendToTarget();
    }
}
