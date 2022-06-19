package p000;

import android.app.Activity;
import android.content.Intent;
import java.util.HashMap;
/* renamed from: v91 */
/* loaded from: classes3-dex2jar.jar:v91.class */
public abstract class v91 {

    /* renamed from: e */
    public static HashMap<EnumC1691a, v91> f8351e = new HashMap<>();

    /* renamed from: a */
    public String[] f8352a = new String[0];

    /* renamed from: b */
    public Activity f8353b = null;

    /* renamed from: c */
    public AbstractC1692b f8354c = null;

    /* renamed from: d */
    public EnumC1691a f8355d = null;

    /* renamed from: v91$a */
    /* loaded from: classes3-dex2jar.jar:v91$a.class */
    public enum EnumC1691a {
        EVERYCALLER(0, r91.class),
        FACEBOOK(1, s91.class),
        GOOGLE(5, t91.class);
        

        /* renamed from: a */
        public int f8360a;

        /* renamed from: b */
        public Class<? extends v91> f8361b;

        EnumC1691a(int i, Class cls) {
            this.f8360a = i;
            this.f8361b = cls;
        }

        /* renamed from: b */
        public int m346b() {
            return this.f8360a;
        }
    }

    /* renamed from: v91$b */
    /* loaded from: classes3-dex2jar.jar:v91$b.class */
    public interface AbstractC1692b {
        /* renamed from: a */
        void mo345a(v91 v91Var);

        /* renamed from: b */
        void mo344b(v91 v91Var, boolean z);

        /* renamed from: c */
        void mo343c(v91 v91Var);

        /* renamed from: d */
        void mo342d(v91 v91Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r0.f8353b != r0) goto L12;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p000.v91 m359c(p000.v91.EnumC1691a r4, p000.v91.AbstractC1692b r5) {
        /*
            java.util.HashMap<v91$a, v91> r0 = p000.v91.f8351e
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            v91 r0 = (p000.v91) r0
            r6 = r0
            android.app.Activity r0 = com.kedlin.cca.receivers.ScreenLockReceiver.m4331a()
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L1e
            r0 = r6
            r8 = r0
            r0 = r6
            android.app.Activity r0 = r0.f8353b
            r1 = r7
            if (r0 == r1) goto L45
        L1e:
            r0 = r4
            java.lang.Class r0 = p000.v91.EnumC1691a.m347a(r0)     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Throwable -> L4e
            v91 r0 = (p000.v91) r0     // Catch: java.lang.Throwable -> L4e
            r8 = r0
            r0 = r8
            r1 = r4
            r0.f8355d = r1     // Catch: java.lang.Throwable -> L4e
            r0 = r8
            r1 = r7
            r0.f8353b = r1     // Catch: java.lang.Throwable -> L4e
            r0 = r8
            r0.mo353i()     // Catch: java.lang.Throwable -> L4e
            java.util.HashMap<v91$a, v91> r0 = p000.v91.f8351e     // Catch: java.lang.Throwable -> L4e
            r1 = r4
            r2 = r8
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L4e
        L45:
            r0 = r8
            r1 = r5
            r0.m352j(r1)
            r0 = r8
            return r0
        L4e:
            r4 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.v91.m359c(v91$a, v91$b):v91");
    }

    /* renamed from: g */
    public static void m355g(int i, int i2, Intent intent) {
        for (EnumC1691a enumC1691a : f8351e.keySet()) {
            v91 v91Var = f8351e.get(enumC1691a);
            if (v91Var != null) {
                v91Var.mo354h(i, i2, intent);
            }
        }
    }

    /* renamed from: k */
    public static void m351k() {
        f8351e.clear();
    }

    /* renamed from: n */
    public static void m348n() {
        for (EnumC1691a enumC1691a : f8351e.keySet()) {
            v91 v91Var = f8351e.get(enumC1691a);
            if (v91Var != null) {
                v91Var.mo349m();
            }
        }
    }

    /* renamed from: d */
    public String mo358d() {
        return "";
    }

    /* renamed from: e */
    public String[] m357e() {
        return this.f8352a;
    }

    /* renamed from: f */
    public EnumC1691a m356f() {
        return this.f8355d;
    }

    /* renamed from: h */
    public void mo354h(int i, int i2, Intent intent) {
    }

    /* renamed from: i */
    public void mo353i() {
    }

    /* renamed from: j */
    public void m352j(AbstractC1692b abstractC1692b) {
        this.f8354c = abstractC1692b;
    }

    /* renamed from: l */
    public abstract void mo350l();

    /* renamed from: m */
    public abstract void mo349m();
}
