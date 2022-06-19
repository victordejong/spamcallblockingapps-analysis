package p078c.p129e.p130a.p131a;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p078c.p129e.p132b.C2080a;
/* renamed from: c.e.a.a.a */
/* loaded from: classes2-dex2jar.jar:c/e/a/a/a.class */
public final class C2071a {

    /* renamed from: a */
    private static final AbstractC2074c f7199a;

    /* renamed from: c.e.a.a.a$b */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$b.class */
    public static class C2073b implements AbstractC2074c {
        private C2073b() {
        }

        /* renamed from: b */
        private Object m28103b(Context context) {
            Field m28096b;
            Object m28092f;
            try {
                Field m28096b2 = C2080a.m28096b("android.app.LoadedApk", "mReceiverResource", true);
                if (m28096b2 != null && (m28096b = C2080a.m28096b("android.app.ContextImpl", "mPackageInfo", true)) != null && (m28092f = C2080a.m28092f(m28096b, context)) != null) {
                    return C2080a.m28091g(m28096b2, m28092f, true);
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        }

        /* renamed from: d */
        private Object m28101d(Object obj, String str) {
            if (obj != null) {
                try {
                    return C2080a.m28093e(obj, str);
                } catch (Throwable th) {
                    return null;
                }
            }
            return null;
        }

        @Override // p078c.p129e.p130a.p131a.C2071a.AbstractC2074c
        /* renamed from: a */
        public boolean mo28099a(Context context, AbstractC2075d abstractC2075d) {
            Object m28103b = m28103b(context);
            Object m28101d = m28101d(m28103b, "mWhiteList");
            if (!(m28101d instanceof String[])) {
                if (m28103b == null) {
                    return false;
                }
                C2080a.m28087k(m28103b, "mResourceConfig", null);
                return false;
            }
            String[] strArr = (String[]) m28101d;
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, strArr);
            C2080a.m28087k(m28103b, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }

        /* renamed from: c */
        Object m28102c(Context context, String str) {
            return m28101d(m28103b(context), str);
        }
    }

    /* renamed from: c.e.a.a.a$c */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$c.class */
    public interface AbstractC2074c {
        /* renamed from: a */
        boolean mo28099a(Context context, AbstractC2075d abstractC2075d);
    }

    /* renamed from: c.e.a.a.a$d */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$d.class */
    public interface AbstractC2075d {
        /* renamed from: a */
        void m28100a(int i, int i2);
    }

    /* renamed from: c.e.a.a.a$e */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$e.class */
    private static class C2076e extends C2073b {
        private C2076e() {
            super();
        }

        @Override // p078c.p129e.p130a.p131a.C2071a.C2073b, p078c.p129e.p130a.p131a.C2071a.AbstractC2074c
        /* renamed from: a */
        public boolean mo28099a(Context context, AbstractC2075d abstractC2075d) {
            Object m28102c = m28102c(context, "mWhiteList");
            if (m28102c instanceof List) {
                ((List) m28102c).add(context.getPackageName());
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.e.a.a.a$f */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$f.class */
    public static class C2077f extends C2073b {
        private C2077f() {
            super();
        }

        @Override // p078c.p129e.p130a.p131a.C2071a.C2073b, p078c.p129e.p130a.p131a.C2071a.AbstractC2074c
        /* renamed from: a */
        public boolean mo28099a(Context context, AbstractC2075d abstractC2075d) {
            Object m28102c = m28102c(context, "mWhiteListMap");
            if (m28102c instanceof Map) {
                Map map = (Map) m28102c;
                List list = (List) map.get(0);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    map.put(0, arrayList);
                }
                arrayList.add(context.getPackageName());
                return true;
            }
            return false;
        }
    }

    /* renamed from: c.e.a.a.a$g */
    /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$g.class */
    private static class C2078g extends C2077f {

        /* renamed from: c.e.a.a.a$g$a */
        /* loaded from: classes2-dex2jar.jar:c/e/a/a/a$g$a.class */
        public static class C2079a implements InvocationHandler {

            /* renamed from: a */
            private Object f7200a;

            /* renamed from: b */
            private AbstractC2075d f7201b;

            /* renamed from: c */
            private volatile int f7202c;

            private C2079a(Object obj, AbstractC2075d abstractC2075d) {
                this.f7201b = abstractC2075d;
                this.f7200a = obj;
            }

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                String name = method.getName();
                if (TextUtils.equals("registerReceiver", name)) {
                    if (this.f7202c >= 1000) {
                        AbstractC2075d abstractC2075d = this.f7201b;
                        if (abstractC2075d == null) {
                            return null;
                        }
                        abstractC2075d.m28100a(this.f7202c, 1000);
                        return null;
                    }
                    this.f7202c++;
                    AbstractC2075d abstractC2075d2 = this.f7201b;
                    if (abstractC2075d2 != null) {
                        abstractC2075d2.m28100a(this.f7202c, 1000);
                    }
                } else if (TextUtils.equals("unregisterReceiver", name)) {
                    this.f7202c--;
                    this.f7202c = this.f7202c < 0 ? 0 : this.f7202c;
                    AbstractC2075d abstractC2075d3 = this.f7201b;
                    if (abstractC2075d3 != null) {
                        abstractC2075d3.m28100a(this.f7202c, 1000);
                    }
                }
                return method.invoke(this.f7200a, objArr);
            }
        }

        private C2078g() {
            super();
        }

        /* renamed from: e */
        private void m28098e(ClassLoader classLoader, AbstractC2075d abstractC2075d) {
            Object m28093e;
            try {
                Object m28089i = C2080a.m28089i(ActivityManager.class.getName(), "IActivityManagerSingleton");
                if (m28089i == null || (m28093e = C2080a.m28093e(m28089i, "mInstance")) == null) {
                    return;
                }
                C2080a.m28087k(m28089i, "mInstance", Proxy.newProxyInstance(classLoader, new Class[]{Class.forName("android.app.IActivityManager")}, new C2079a(m28093e, abstractC2075d)));
            } catch (Throwable th) {
            }
        }

        @Override // p078c.p129e.p130a.p131a.C2071a.C2077f, p078c.p129e.p130a.p131a.C2071a.C2073b, p078c.p129e.p130a.p131a.C2071a.AbstractC2074c
        /* renamed from: a */
        public boolean mo28099a(Context context, AbstractC2075d abstractC2075d) {
            boolean mo28099a = super.mo28099a(context, abstractC2075d);
            String simpleName = C2071a.class.getSimpleName();
            Log.v(simpleName, "verified: " + mo28099a);
            m28098e(context.getClassLoader(), abstractC2075d);
            return mo28099a;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            f7199a = new C2078g();
        } else if (i >= 26) {
            f7199a = new C2077f();
        } else if (i >= 24) {
            f7199a = new C2076e();
        } else {
            f7199a = new C2073b();
        }
    }

    /* renamed from: a */
    public static void m28105a(Application application) {
        m28104b(application, null);
    }

    /* renamed from: b */
    public static void m28104b(Application application, AbstractC2075d abstractC2075d) {
        try {
            if (application != null) {
                f7199a.mo28099a(application.getBaseContext(), abstractC2075d);
            } else {
                Log.w(C2071a.class.getSimpleName(), "application is null ！！！");
            }
        } catch (Throwable th) {
        }
    }
}
