package com.bytedance.sdk.openadsdk.d;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static volatile l f9423a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f9424b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f9425c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f9426d = Executors.newCachedThreadPool();
    private b e = b.a();
    private Map<String, Object> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l$a.class */
    public static class a implements Serializable, Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final AtomicInteger f9428a = new AtomicInteger(0);

        /* renamed from: b  reason: collision with root package name */
        public final AtomicBoolean f9429b = new AtomicBoolean(false);

        /* renamed from: c  reason: collision with root package name */
        public i f9430c;

        /* renamed from: d  reason: collision with root package name */
        public String f9431d;
        public Map<String, Object> e;

        public a() {
        }

        public a(i iVar, String str, Map<String, Object> map) {
            this.f9430c = iVar;
            this.f9431d = str;
            this.e = map;
        }

        public static a a(i iVar, String str, Map<String, Object> map) {
            return new a(iVar, str, map);
        }

        public int a() {
            return this.f9428a.get();
        }

        public a a(boolean z) {
            this.f9429b.set(z);
            return this;
        }

        public void b() {
            this.f9428a.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9430c == null || TextUtils.isEmpty(this.f9431d)) {
                q.a("materialMeta or eventTag is null, pls check");
            } else {
                e.f(n.a(), this.f9430c, this.f9431d, this.f9429b.get() ? "dpl_success" : "dpl_failed", this.e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/l$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f9432a = 500;

        /* renamed from: b  reason: collision with root package name */
        public int f9433b = 5000;

        public static b a() {
            return new b();
        }
    }

    private l() {
        if (this.f9424b == null) {
            HandlerThread handlerThread = new HandlerThread("OpenAppSuccEvent_HandlerThread", 10);
            this.f9424b = handlerThread;
            handlerThread.start();
        }
        this.f9425c = new Handler(this.f9424b.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.d.l.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != 100) {
                    return true;
                }
                a aVar = null;
                if (message.obj != null) {
                    aVar = null;
                    if (message.obj instanceof a) {
                        aVar = (a) message.obj;
                    }
                }
                if (aVar == null) {
                    return true;
                }
                l.this.b(aVar);
                return true;
            }
        });
    }

    public static l a() {
        if (f9423a == null) {
            synchronized (l.class) {
                try {
                    if (f9423a == null) {
                        f9423a = new l();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9423a;
    }

    private void a(a aVar) {
        if (aVar != null) {
            aVar.b();
            if (aVar.a() * this.e.f9432a > this.e.f9433b) {
                c(aVar.a(false));
                return;
            }
            Message obtainMessage = this.f9425c.obtainMessage();
            obtainMessage.what = 100;
            obtainMessage.obj = aVar;
            this.f9425c.sendMessageDelayed(obtainMessage, this.e.f9432a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(a aVar) {
        if (aVar != null) {
            Context a2 = n.a();
            if (af.c(a2, a2.getPackageName())) {
                a(aVar);
            } else {
                c(aVar.a(true));
            }
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            this.f9426d.execute(aVar);
        }
    }

    public void a(i iVar, String str) {
        Message obtainMessage = this.f9425c.obtainMessage();
        obtainMessage.what = 100;
        obtainMessage.obj = a.a(iVar, str, this.f);
        obtainMessage.sendToTarget();
    }
}
