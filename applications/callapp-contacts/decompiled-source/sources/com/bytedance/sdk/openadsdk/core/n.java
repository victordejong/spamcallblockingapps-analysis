package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.h.e;
import com.bytedance.sdk.openadsdk.d.c;
import com.bytedance.sdk.openadsdk.d.f;
import com.bytedance.sdk.openadsdk.d.g;
import com.bytedance.sdk.openadsdk.d.h;
import com.bytedance.sdk.openadsdk.d.m;
import com.bytedance.sdk.openadsdk.d.o;
import com.bytedance.sdk.openadsdk.d.p;
import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/n.class */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c<com.bytedance.sdk.openadsdk.d.a> f9006a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile c<c.a> f9007b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile com.bytedance.sdk.openadsdk.d.c<c.a> f9008c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile o<com.bytedance.sdk.openadsdk.d.a> f9009d;
    private static volatile com.bytedance.sdk.openadsdk.m.a e;
    private static volatile com.bytedance.sdk.openadsdk.i.b.a f;
    private static volatile Context g;
    private static volatile e h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/n$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static volatile Application f9011a;

        static {
            try {
                Object b2 = b();
                f9011a = (Application) b2.getClass().getMethod("getApplication", new Class[0]).invoke(b2, new Object[0]);
                q.e("MyApplication", "application get success");
            } catch (Throwable th) {
                q.c("MyApplication", "application get failed", th);
            }
        }

        public static Application a() {
            return f9011a;
        }

        private static Object b() {
            Object obj = null;
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                obj = method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                q.c("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
            }
            return obj;
        }
    }

    public static Context a() {
        Context context;
        synchronized (n.class) {
            try {
                if (g == null) {
                    a(null);
                }
                context = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return context;
    }

    public static com.bytedance.sdk.openadsdk.d.c<c.a> a(String str, String str2, boolean z) {
        h.b bVar;
        f fVar;
        if (z) {
            fVar = new o(g);
            bVar = h.b.a();
        } else {
            bVar = h.b.b();
            fVar = new m(g);
        }
        h.a b2 = b(g);
        return new com.bytedance.sdk.openadsdk.d.c<>(fVar, null, bVar, b2, new p(str, str2, fVar, null, bVar, b2));
    }

    public static void a(Context context) {
        synchronized (n.class) {
            try {
                if (g == null) {
                    if (a.a() != null) {
                        try {
                            Application a2 = a.a();
                            g = a2;
                            if (a2 != null) {
                                return;
                            }
                        } catch (Throwable th) {
                        }
                    }
                    if (context != null) {
                        g = context.getApplicationContext();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static h.a b(final Context context) {
        return new h.a() { // from class: com.bytedance.sdk.openadsdk.core.n.1
            @Override // com.bytedance.sdk.openadsdk.d.h.a
            public final boolean a() {
                Context context2 = context;
                Context context3 = context2;
                if (context2 == null) {
                    context3 = n.a();
                }
                return t.a(context3);
            }
        };
    }

    public static void b() {
        f9006a = null;
        e = null;
        f = null;
    }

    public static com.bytedance.sdk.openadsdk.d.c<com.bytedance.sdk.openadsdk.d.a> c() {
        if (!d.a()) {
            return com.bytedance.sdk.openadsdk.d.c.c();
        }
        if (f9006a == null) {
            synchronized (n.class) {
                try {
                    if (f9006a == null) {
                        if (b.b()) {
                            f9006a = new com.bytedance.sdk.openadsdk.d.d();
                        } else {
                            f9006a = new com.bytedance.sdk.openadsdk.d.c<>(new g(g), f(), j(), b(g));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9006a;
    }

    public static com.bytedance.sdk.openadsdk.d.c<c.a> d() {
        if (!d.a()) {
            return com.bytedance.sdk.openadsdk.d.c.d();
        }
        if (f9008c == null) {
            synchronized (n.class) {
                try {
                    if (f9008c == null) {
                        if (b.b()) {
                            f9008c = new com.bytedance.sdk.openadsdk.d.n(false);
                        } else {
                            f9008c = a("ttad_bk_batch_stats", "AdStatsEventBatchThread", false);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9008c;
    }

    public static com.bytedance.sdk.openadsdk.d.c<c.a> e() {
        if (!d.a()) {
            return com.bytedance.sdk.openadsdk.d.c.d();
        }
        if (f9007b == null) {
            synchronized (n.class) {
                try {
                    if (f9007b == null) {
                        if (b.b()) {
                            f9007b = new com.bytedance.sdk.openadsdk.d.n(true);
                        } else {
                            f9007b = a("ttad_bk_stats", "AdStatsEventThread", true);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9007b;
    }

    public static o<com.bytedance.sdk.openadsdk.d.a> f() {
        if (f9009d == null) {
            synchronized (n.class) {
                try {
                    if (f9009d == null) {
                        f9009d = new p(g);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9009d;
    }

    public static com.bytedance.sdk.openadsdk.m.a g() {
        if (!d.a()) {
            return com.bytedance.sdk.openadsdk.m.b.d();
        }
        if (e == null) {
            synchronized (com.bytedance.sdk.openadsdk.m.a.class) {
                try {
                    if (e == null) {
                        if (b.b()) {
                            e = new com.bytedance.sdk.openadsdk.m.c();
                        } else {
                            e = new com.bytedance.sdk.openadsdk.m.b(g, new com.bytedance.sdk.openadsdk.m.h(g));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static e h() {
        if (h == null) {
            synchronized (e.class) {
                try {
                    if (h == null) {
                        h = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    public static com.bytedance.sdk.openadsdk.i.b.a i() {
        if (!d.a()) {
            return com.bytedance.sdk.openadsdk.i.b.c.c();
        }
        if (f == null) {
            synchronized (com.bytedance.sdk.openadsdk.i.b.c.class) {
                try {
                    if (f == null) {
                        if (b.b()) {
                            f = new com.bytedance.sdk.openadsdk.i.b.d();
                        } else {
                            f = new com.bytedance.sdk.openadsdk.i.b.c();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    private static h.b j() {
        return h.b.a();
    }
}
