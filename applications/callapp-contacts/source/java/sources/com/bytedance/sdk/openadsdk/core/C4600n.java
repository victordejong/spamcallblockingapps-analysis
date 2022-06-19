package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import com.bytedance.sdk.openadsdk.p164d.C4807c;
import com.bytedance.sdk.openadsdk.p164d.C4810d;
import com.bytedance.sdk.openadsdk.p164d.C4814g;
import com.bytedance.sdk.openadsdk.p164d.C4829m;
import com.bytedance.sdk.openadsdk.p164d.C4830n;
import com.bytedance.sdk.openadsdk.p164d.C4831o;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4832p;
import com.bytedance.sdk.openadsdk.p171i.p173b.AbstractC4932a;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4937d;
import com.bytedance.sdk.openadsdk.p186m.AbstractC5057a;
import com.bytedance.sdk.openadsdk.p186m.C5058b;
import com.bytedance.sdk.openadsdk.p186m.C5062c;
import com.bytedance.sdk.openadsdk.p186m.C5067h;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.openadsdk.core.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/n.class */
public class C4600n {

    /* renamed from: a */
    private static volatile C4807c<C4805a> f16826a;

    /* renamed from: b */
    private static volatile C4807c<C4934c.C4936a> f16827b;

    /* renamed from: c */
    private static volatile C4807c<C4934c.C4936a> f16828c;

    /* renamed from: d */
    private static volatile AbstractC4635o<C4805a> f16829d;

    /* renamed from: e */
    private static volatile AbstractC5057a f16830e;

    /* renamed from: f */
    private static volatile AbstractC4932a f16831f;

    /* renamed from: g */
    private static volatile Context f16832g;

    /* renamed from: h */
    private static volatile C4588e f16833h;

    /* renamed from: com.bytedance.sdk.openadsdk.core.n$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/n$a.class */
    public static class C4602a {

        /* renamed from: a */
        private static volatile Application f16835a;

        static {
            try {
                Object m34801b = m34801b();
                f16835a = (Application) m34801b.getClass().getMethod("getApplication", new Class[0]).invoke(m34801b, new Object[0]);
                C5478q.m32106e("MyApplication", "application get success");
            } catch (Throwable th) {
                C5478q.m32108c("MyApplication", "application get failed", th);
            }
        }

        /* renamed from: a */
        public static Application m34802a() {
            return f16835a;
        }

        /* renamed from: b */
        private static Object m34801b() {
            Object obj = null;
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                obj = method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                C5478q.m32108c("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
            }
            return obj;
        }
    }

    /* renamed from: a */
    public static Context m34815a() {
        Context context;
        synchronized (C4600n.class) {
            try {
                if (f16832g == null) {
                    m34814a(null);
                }
                context = f16832g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return context;
    }

    /* renamed from: a */
    public static C4807c<C4934c.C4936a> m34813a(String str, String str2, boolean z) {
        HandlerThreadC4815h.C4818b c4818b;
        C4831o c4831o;
        if (z) {
            c4831o = new C4831o(f16832g);
            c4818b = HandlerThreadC4815h.C4818b.m33828a();
        } else {
            c4818b = HandlerThreadC4815h.C4818b.m33827b();
            c4831o = new C4829m(f16832g);
        }
        HandlerThreadC4815h.AbstractC4817a m34811b = m34811b(f16832g);
        return new C4807c<>(c4831o, null, c4818b, m34811b, new HandlerThreadC4832p(str, str2, c4831o, null, c4818b, m34811b));
    }

    /* renamed from: a */
    public static void m34814a(Context context) {
        synchronized (C4600n.class) {
            try {
                if (f16832g == null) {
                    if (C4602a.m34802a() != null) {
                        try {
                            Application m34802a = C4602a.m34802a();
                            f16832g = m34802a;
                            if (m34802a != null) {
                                return;
                            }
                        } catch (Throwable th) {
                        }
                    }
                    if (context != null) {
                        f16832g = context.getApplicationContext();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: b */
    private static HandlerThreadC4815h.AbstractC4817a m34811b(final Context context) {
        return new HandlerThreadC4815h.AbstractC4817a() { // from class: com.bytedance.sdk.openadsdk.core.n.1
            @Override // com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h.AbstractC4817a
            /* renamed from: a */
            public final boolean mo33060a() {
                Context context2 = context;
                Context context3 = context2;
                if (context2 == null) {
                    context3 = C4600n.m34815a();
                }
                return C5482t.m32091a(context3);
            }
        };
    }

    /* renamed from: b */
    public static void m34812b() {
        f16826a = null;
        f16830e = null;
        f16831f = null;
    }

    /* renamed from: c */
    public static C4807c<C4805a> m34810c() {
        if (!C4587d.m34919a()) {
            return C4807c.m33891c();
        }
        if (f16826a == null) {
            synchronized (C4600n.class) {
                try {
                    if (f16826a == null) {
                        if (C5094b.m33091b()) {
                            f16826a = new C4810d();
                        } else {
                            f16826a = new C4807c<>(new C4814g(f16832g), m34807f(), m34803j(), m34811b(f16832g));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16826a;
    }

    /* renamed from: d */
    public static C4807c<C4934c.C4936a> m34809d() {
        if (!C4587d.m34919a()) {
            return C4807c.m33890d();
        }
        if (f16828c == null) {
            synchronized (C4600n.class) {
                try {
                    if (f16828c == null) {
                        if (C5094b.m33091b()) {
                            f16828c = new C4830n(false);
                        } else {
                            f16828c = m34813a("ttad_bk_batch_stats", "AdStatsEventBatchThread", false);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16828c;
    }

    /* renamed from: e */
    public static C4807c<C4934c.C4936a> m34808e() {
        if (!C4587d.m34919a()) {
            return C4807c.m33890d();
        }
        if (f16827b == null) {
            synchronized (C4600n.class) {
                try {
                    if (f16827b == null) {
                        if (C5094b.m33091b()) {
                            f16827b = new C4830n(true);
                        } else {
                            f16827b = m34813a("ttad_bk_stats", "AdStatsEventThread", true);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16827b;
    }

    /* renamed from: f */
    public static AbstractC4635o<C4805a> m34807f() {
        if (f16829d == null) {
            synchronized (C4600n.class) {
                try {
                    if (f16829d == null) {
                        f16829d = new C4638p(f16832g);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16829d;
    }

    /* renamed from: g */
    public static AbstractC5057a m34806g() {
        if (!C4587d.m34919a()) {
            return C5058b.m33142d();
        }
        if (f16830e == null) {
            synchronized (AbstractC5057a.class) {
                try {
                    if (f16830e == null) {
                        if (C5094b.m33091b()) {
                            f16830e = new C5062c();
                        } else {
                            f16830e = new C5058b(f16832g, new C5067h(f16832g));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16830e;
    }

    /* renamed from: h */
    public static C4588e m34805h() {
        if (f16833h == null) {
            synchronized (C4588e.class) {
                try {
                    if (f16833h == null) {
                        f16833h = new C4588e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16833h;
    }

    /* renamed from: i */
    public static AbstractC4932a m34804i() {
        if (!C4587d.m34919a()) {
            return C4934c.m33499c();
        }
        if (f16831f == null) {
            synchronized (C4934c.class) {
                try {
                    if (f16831f == null) {
                        if (C5094b.m33091b()) {
                            f16831f = new C4937d();
                        } else {
                            f16831f = new C4934c();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16831f;
    }

    /* renamed from: j */
    private static HandlerThreadC4815h.C4818b m34803j() {
        return HandlerThreadC4815h.C4818b.m33828a();
    }
}
