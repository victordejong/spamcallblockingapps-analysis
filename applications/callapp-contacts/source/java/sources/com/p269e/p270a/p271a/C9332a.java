package com.p269e.p270a.p271a;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.p269e.p272b.C9341a;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.e.a.a.a */
/* loaded from: classes2-dex2jar.jar:com/e/a/a/a.class */
public final class C9332a {

    /* renamed from: a */
    private static final AbstractC9335b f31963a;

    /* renamed from: com.e.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$a.class */
    public static class C9334a implements AbstractC9335b {
        private C9334a() {
        }

        /* renamed from: a */
        private static Object m24686a(Context context) {
            Field m24674b;
            Object m24676a;
            try {
                Field m24674b2 = C9341a.m24674b("android.app.LoadedApk", "mReceiverResource");
                if (m24674b2 != null && (m24674b = C9341a.m24674b("android.app.ContextImpl", "mPackageInfo")) != null && (m24676a = C9341a.m24676a(m24674b, context)) != null) {
                    return C9341a.m24675a(m24674b2, m24676a, true);
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        }

        /* renamed from: a */
        static Object m24685a(Context context, String str) {
            return m24684a(m24686a(context), str);
        }

        /* renamed from: a */
        private static Object m24684a(Object obj, String str) {
            if (obj != null) {
                try {
                    return C9341a.m24679a(obj, str);
                } catch (Throwable th) {
                    return null;
                }
            }
            return null;
        }

        @Override // com.p269e.p270a.p271a.C9332a.AbstractC9335b
        /* renamed from: a */
        public boolean mo24682a(Context context, AbstractC9336c abstractC9336c) throws Throwable {
            Object m24686a = m24686a(context);
            Object m24684a = m24684a(m24686a, "mWhiteList");
            if (!(m24684a instanceof String[])) {
                if (m24686a == null) {
                    return false;
                }
                C9341a.m24678a(m24686a, "mResourceConfig", (Object) null);
                return false;
            }
            String[] strArr = (String[]) m24684a;
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, strArr);
            C9341a.m24678a(m24686a, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }
    }

    /* renamed from: com.e.a.a.a$b */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$b.class */
    public interface AbstractC9335b {
        /* renamed from: a */
        boolean mo24682a(Context context, AbstractC9336c abstractC9336c) throws Throwable;
    }

    /* renamed from: com.e.a.a.a$c */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$c.class */
    public interface AbstractC9336c {
        /* renamed from: a */
        void mo24683a();
    }

    /* renamed from: com.e.a.a.a$d */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$d.class */
    static final class C9337d extends C9334a {
        private C9337d() {
            super();
        }

        @Override // com.p269e.p270a.p271a.C9332a.C9334a, com.p269e.p270a.p271a.C9332a.AbstractC9335b
        /* renamed from: a */
        public final boolean mo24682a(Context context, AbstractC9336c abstractC9336c) throws Throwable {
            Object a = m24685a(context, "mWhiteList");
            if (a instanceof List) {
                ((List) a).add(context.getPackageName());
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.e.a.a.a$e */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$e.class */
    public static class C9338e extends C9334a {
        private C9338e() {
            super();
        }

        @Override // com.p269e.p270a.p271a.C9332a.C9334a, com.p269e.p270a.p271a.C9332a.AbstractC9335b
        /* renamed from: a */
        public boolean mo24682a(Context context, AbstractC9336c abstractC9336c) throws Throwable {
            Object a = m24685a(context, "mWhiteListMap");
            if (a instanceof Map) {
                Map map = (Map) a;
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

    /* renamed from: com.e.a.a.a$f */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$f.class */
    static final class C9339f extends C9338e {

        /* renamed from: com.e.a.a.a$f$a */
        /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$f$a.class */
        static final class C9340a implements InvocationHandler {

            /* renamed from: a */
            private Object f31964a;

            /* renamed from: b */
            private AbstractC9336c f31965b;

            /* renamed from: c */
            private volatile int f31966c;

            private C9340a(Object obj, AbstractC9336c abstractC9336c) {
                this.f31965b = abstractC9336c;
                this.f31964a = obj;
            }

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                String name = method.getName();
                if (TextUtils.equals("registerReceiver", name)) {
                    if (this.f31966c >= 1000) {
                        AbstractC9336c abstractC9336c = this.f31965b;
                        if (abstractC9336c == null) {
                            return null;
                        }
                        abstractC9336c.mo24683a();
                        return null;
                    }
                    this.f31966c++;
                    AbstractC9336c abstractC9336c2 = this.f31965b;
                    if (abstractC9336c2 != null) {
                        abstractC9336c2.mo24683a();
                    }
                } else if (TextUtils.equals("unregisterReceiver", name)) {
                    this.f31966c--;
                    this.f31966c = this.f31966c < 0 ? 0 : this.f31966c;
                    AbstractC9336c abstractC9336c3 = this.f31965b;
                    if (abstractC9336c3 != null) {
                        abstractC9336c3.mo24683a();
                    }
                }
                return method.invoke(this.f31964a, objArr);
            }
        }

        private C9339f() {
            super();
        }

        @Override // com.p269e.p270a.p271a.C9332a.C9338e, com.p269e.p270a.p271a.C9332a.C9334a, com.p269e.p270a.p271a.C9332a.AbstractC9335b
        /* renamed from: a */
        public final boolean mo24682a(Context context, AbstractC9336c abstractC9336c) throws Throwable {
            Object m24679a;
            boolean mo24682a = super.mo24682a(context, abstractC9336c);
            ClassLoader classLoader = context.getClassLoader();
            try {
                Object m24677a = C9341a.m24677a(ActivityManager.class.getName(), "IActivityManagerSingleton");
                if (m24677a != null && (m24679a = C9341a.m24679a(m24677a, "mInstance")) != null) {
                    C9341a.m24678a(m24677a, "mInstance", Proxy.newProxyInstance(classLoader, new Class[]{Class.forName("android.app.IActivityManager")}, new C9340a(m24679a, abstractC9336c)));
                }
            } catch (Throwable th) {
            }
            return mo24682a;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            f31963a = new C9339f();
        } else if (i >= 26) {
            f31963a = new C9338e();
        } else if (i >= 24) {
            f31963a = new C9337d();
        } else {
            f31963a = new C9334a();
        }
    }

    /* renamed from: a */
    public static void m24687a(Application application, AbstractC9336c abstractC9336c) {
        try {
            f31963a.mo24682a(application.getBaseContext(), abstractC9336c);
        } catch (Throwable th) {
        }
    }
}
