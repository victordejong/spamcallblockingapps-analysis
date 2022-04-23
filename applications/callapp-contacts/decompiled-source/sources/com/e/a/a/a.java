package com.e.a.a;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/e/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f18870a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.e.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$a.class */
    public static class C0372a implements b {
        private C0372a() {
        }

        private static Object a(Context context) {
            Field b2;
            Object a2;
            try {
                Field b3 = com.e.b.a.b("android.app.LoadedApk", "mReceiverResource");
                if (b3 == null || (b2 = com.e.b.a.b("android.app.ContextImpl", "mPackageInfo")) == null || (a2 = com.e.b.a.a(b2, context)) == null) {
                    return null;
                }
                return com.e.b.a.a(b3, a2, true);
            } catch (Throwable th) {
                return null;
            }
        }

        static Object a(Context context, String str) {
            return a(a(context), str);
        }

        private static Object a(Object obj, String str) {
            if (obj == null) {
                return null;
            }
            try {
                return com.e.b.a.a(obj, str);
            } catch (Throwable th) {
                return null;
            }
        }

        @Override // com.e.a.a.a.b
        public boolean a(Context context, c cVar) throws Throwable {
            Object a2 = a(context);
            Object a3 = a(a2, "mWhiteList");
            if (a3 instanceof String[]) {
                String[] strArr = (String[]) a3;
                ArrayList arrayList = new ArrayList();
                arrayList.add(context.getPackageName());
                Collections.addAll(arrayList, strArr);
                com.e.b.a.a(a2, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
                return true;
            } else if (a2 == null) {
                return false;
            } else {
                com.e.b.a.a(a2, "mResourceConfig", (Object) null);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$b.class */
    public interface b {
        boolean a(Context context, c cVar) throws Throwable;
    }

    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$c.class */
    public interface c {
        void a();
    }

    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$d.class */
    static final class d extends C0372a {
        private d() {
            super();
        }

        @Override // com.e.a.a.a.C0372a, com.e.a.a.a.b
        public final boolean a(Context context, c cVar) throws Throwable {
            Object a2 = a(context, "mWhiteList");
            if (!(a2 instanceof List)) {
                return false;
            }
            ((List) a2).add(context.getPackageName());
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$e.class */
    static class e extends C0372a {
        private e() {
            super();
        }

        @Override // com.e.a.a.a.C0372a, com.e.a.a.a.b
        public boolean a(Context context, c cVar) throws Throwable {
            Object a2 = a(context, "mWhiteListMap");
            if (!(a2 instanceof Map)) {
                return false;
            }
            Map map = (Map) a2;
            List list = (List) map.get(0);
            List list2 = list;
            if (list == null) {
                list2 = new ArrayList();
                map.put(0, list2);
            }
            list2.add(context.getPackageName());
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$f.class */
    static final class f extends e {

        /* renamed from: com.e.a.a.a$f$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/e/a/a/a$f$a.class */
        static final class C0373a implements InvocationHandler {

            /* renamed from: a  reason: collision with root package name */
            private Object f18871a;

            /* renamed from: b  reason: collision with root package name */
            private c f18872b;

            /* renamed from: c  reason: collision with root package name */
            private volatile int f18873c;

            private C0373a(Object obj, c cVar) {
                this.f18872b = cVar;
                this.f18871a = obj;
            }

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                String name = method.getName();
                if (TextUtils.equals("registerReceiver", name)) {
                    if (this.f18873c >= 1000) {
                        c cVar = this.f18872b;
                        if (cVar == null) {
                            return null;
                        }
                        cVar.a();
                        return null;
                    }
                    this.f18873c++;
                    c cVar2 = this.f18872b;
                    if (cVar2 != null) {
                        cVar2.a();
                    }
                } else if (TextUtils.equals("unregisterReceiver", name)) {
                    this.f18873c--;
                    this.f18873c = this.f18873c < 0 ? 0 : this.f18873c;
                    c cVar3 = this.f18872b;
                    if (cVar3 != null) {
                        cVar3.a();
                    }
                }
                return method.invoke(this.f18871a, objArr);
            }
        }

        private f() {
            super();
        }

        @Override // com.e.a.a.a.e, com.e.a.a.a.C0372a, com.e.a.a.a.b
        public final boolean a(Context context, c cVar) throws Throwable {
            Object a2;
            boolean a3 = super.a(context, cVar);
            ClassLoader classLoader = context.getClassLoader();
            try {
                Object a4 = com.e.b.a.a(ActivityManager.class.getName(), "IActivityManagerSingleton");
                if (!(a4 == null || (a2 = com.e.b.a.a(a4, "mInstance")) == null)) {
                    com.e.b.a.a(a4, "mInstance", Proxy.newProxyInstance(classLoader, new Class[]{Class.forName("android.app.IActivityManager")}, new C0373a(a2, cVar)));
                }
            } catch (Throwable th) {
            }
            return a3;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            f18870a = new f();
        } else if (i >= 26) {
            f18870a = new e();
        } else if (i >= 24) {
            f18870a = new d();
        } else {
            f18870a = new C0372a();
        }
    }

    public static void a(Application application, c cVar) {
        try {
            f18870a.a(application.getBaseContext(), cVar);
        } catch (Throwable th) {
        }
    }
}
