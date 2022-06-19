package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.openadsdk.core.video.p159b.C4671a;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p174j.C4958d;
import com.bytedance.sdk.openadsdk.utils.C5435ac;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.core.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/k.class */
public class C4592k {

    /* renamed from: a */
    public static volatile boolean f16794a = false;

    /* renamed from: e */
    private static volatile HandlerThread f16798e;

    /* renamed from: f */
    private static volatile Handler f16799f;

    /* renamed from: g */
    private static volatile Handler f16800g;

    /* renamed from: d */
    private static AtomicBoolean f16797d = new AtomicBoolean(false);

    /* renamed from: b */
    public static AtomicBoolean f16795b = new AtomicBoolean(false);

    /* renamed from: c */
    public static volatile boolean f16796c = false;

    static {
        f16798e = null;
        f16800g = null;
        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread_init", 10);
        f16798e = handlerThread;
        handlerThread.start();
        f16800g = new Handler(f16798e.getLooper());
    }

    /* renamed from: a */
    public static void m34837a() {
        Context m34815a;
        if (C4600n.m34805h().m34899d() && (m34815a = C4600n.m34815a()) != null) {
            try {
                C4151a.m36305a(new C4958d(m34815a));
                C4151a.m36304a(true);
                C4151a.m36308a(m34815a, (Application) m34815a, C5094b.m33091b());
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static void m34836a(Context context) {
        m34832c(context);
        C5435ac.m32324a();
        C5443ag.m32233a(context);
        m34834b(context);
        C4600n.m34804i().mo33495a();
        C4647q.m34639a().m34638a(C4590i.m34846a(context));
        C4600n.m34806g().mo33139a();
        C4786a.m33985a();
        C4671a.m34591a().m34578b();
    }

    /* renamed from: b */
    public static Handler m34835b() {
        if (f16798e == null || !f16798e.isAlive()) {
            synchronized (C4592k.class) {
                try {
                    if (f16798e == null || !f16798e.isAlive()) {
                        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread_init", 10);
                        f16798e = handlerThread;
                        handlerThread.start();
                        f16800g = new Handler(f16798e.getLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16800g;
    }

    /* renamed from: b */
    private static void m34834b(Context context) {
        C4516c.m35418a(context).m35415a("uuid", UUID.randomUUID().toString());
    }

    /* renamed from: c */
    public static Handler m34833c() {
        if (f16799f == null) {
            synchronized (C4592k.class) {
                try {
                    if (f16799f == null) {
                        f16799f = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16799f;
    }

    /* renamed from: c */
    private static void m34832c(Context context) {
    }
}
