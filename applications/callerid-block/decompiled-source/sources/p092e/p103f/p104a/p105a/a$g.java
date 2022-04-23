package p092e.p103f.p104a.p105a;

import android.app.ActivityManager;
import android.content.Context;
import android.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import p092e.p103f.p106b.C3099a;
/* renamed from: e.f.a.a.a$g */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$g.class */
class a$g extends a$f {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e.f.a.a.a$g$a */
    /* loaded from: classes2-dex2jar.jar:e/f/a/a/a$g$a.class */
    public static class C3098a implements InvocationHandler {

        /* renamed from: a */
        private Object f12730a;

        /* renamed from: b */
        private a$d f12731b;

        /* renamed from: c */
        private volatile int f12732c;

        private C3098a(Object obj, a$d a_d) {
            this.f12731b = a_d;
            this.f12730a = obj;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
            if (r5 != null) goto L_0x0043;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
            r5.m240a(r4.f12732c, 1000);
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
            if (r5 != null) goto L_0x0043;
         */
        @Override // java.lang.reflect.InvocationHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke(java.lang.Object r5, java.lang.reflect.Method r6, java.lang.Object[] r7) {
            /*
                r4 = this;
                r0 = r6
                java.lang.String r0 = r0.getName()
                r5 = r0
                java.lang.String r0 = "registerReceiver"
                r1 = r5
                boolean r0 = android.text.TextUtils.equals(r0, r1)
                if (r0 == 0) goto L_0x0053
                r0 = r4
                int r0 = r0.f12732c
                r1 = 1000(0x3e8, float:1.401E-42)
                if (r0 < r1) goto L_0x0030
                r0 = r4
                e.f.a.a.a$d r0 = r0.f12731b
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x002e
                r0 = r5
                r1 = r4
                int r1 = r1.f12732c
                r2 = 1000(0x3e8, float:1.401E-42)
                r0.m240a(r1, r2)
            L_0x002e:
                r0 = 0
                return r0
            L_0x0030:
                r0 = r4
                r1 = r4
                int r1 = r1.f12732c
                r2 = 1
                int r1 = r1 + r2
                r0.f12732c = r1
                r0 = r4
                e.f.a.a.a$d r0 = r0.f12731b
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x008b
            L_0x0043:
                r0 = r5
                r1 = r4
                int r1 = r1.f12732c
                r2 = 1000(0x3e8, float:1.401E-42)
                r0.m240a(r1, r2)
                goto L_0x008b
            L_0x0053:
                java.lang.String r0 = "unregisterReceiver"
                r1 = r5
                boolean r0 = android.text.TextUtils.equals(r0, r1)
                if (r0 == 0) goto L_0x008b
                r0 = r4
                r1 = r4
                int r1 = r1.f12732c
                r2 = 1
                int r1 = r1 - r2
                r0.f12732c = r1
                r0 = r4
                int r0 = r0.f12732c
                if (r0 >= 0) goto L_0x0073
                r0 = 0
                r8 = r0
                goto L_0x0079
            L_0x0073:
                r0 = r4
                int r0 = r0.f12732c
                r8 = r0
            L_0x0079:
                r0 = r4
                r1 = r8
                r0.f12732c = r1
                r0 = r4
                e.f.a.a.a$d r0 = r0.f12731b
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x008b
                goto L_0x0043
            L_0x008b:
                r0 = r6
                r1 = r4
                java.lang.Object r1 = r1.f12730a
                r2 = r7
                java.lang.Object r0 = r0.invoke(r1, r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p092e.p103f.p104a.p105a.a$g.C3098a.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
        }
    }

    private a$g() {
        super();
    }

    /* renamed from: e */
    private void m238e(ClassLoader classLoader, a$d a_d) {
        Object e;
        try {
            Object i = C3099a.m229i(ActivityManager.class.getName(), "IActivityManagerSingleton");
            if (i != null && (e = C3099a.m233e(i, "mInstance")) != null) {
                C3099a.m227k(i, "mInstance", Proxy.newProxyInstance(classLoader, new Class[]{Class.forName("android.app.IActivityManager")}, new C3098a(e, a_d)));
            }
        } catch (Throwable th) {
        }
    }

    @Override // p092e.p103f.p104a.p105a.a$f, p092e.p103f.p104a.p105a.a$b, p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        boolean a = super.mo239a(context, a_d);
        String simpleName = a.class.getSimpleName();
        Log.v(simpleName, "verified: " + a);
        m238e(context.getClassLoader(), a_d);
        return a;
    }
}
