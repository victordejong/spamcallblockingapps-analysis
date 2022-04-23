package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.bytedance.sdk.adnet.a;
import com.bytedance.sdk.openadsdk.j.d;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ag;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/k.class */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f8986a = false;
    private static volatile HandlerThread e;
    private static volatile Handler f;
    private static volatile Handler g;

    /* renamed from: d  reason: collision with root package name */
    private static AtomicBoolean f8989d = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public static AtomicBoolean f8987b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    public static volatile boolean f8988c = false;

    static {
        e = null;
        g = null;
        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread_init", 10);
        e = handlerThread;
        handlerThread.start();
        g = new Handler(e.getLooper());
    }

    public static void a() {
        Context a2;
        if (n.h().d() && (a2 = n.a()) != null) {
            try {
                a.a(new d(a2));
                a.a(true);
                a.a(a2, (Application) a2, b.b());
            } catch (Exception e2) {
            }
        }
    }

    public static void a(Context context) {
        c(context);
        ac.a();
        ag.a(context);
        b(context);
        n.i().a();
        q.a().a(i.a(context));
        n.g().a();
        com.bytedance.sdk.openadsdk.core.widget.webview.a.a.a();
        com.bytedance.sdk.openadsdk.core.video.b.a.a().b();
    }

    public static Handler b() {
        if (e == null || !e.isAlive()) {
            synchronized (k.class) {
                try {
                    if (e == null || !e.isAlive()) {
                        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread_init", 10);
                        e = handlerThread;
                        handlerThread.start();
                        g = new Handler(e.getLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    private static void b(Context context) {
        c.a(context).a("uuid", UUID.randomUUID().toString());
    }

    public static Handler c() {
        if (f == null) {
            synchronized (k.class) {
                try {
                    if (f == null) {
                        f = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    private static void c(Context context) {
    }
}
