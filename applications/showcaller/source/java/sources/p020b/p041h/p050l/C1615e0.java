package p020b.p041h.p050l;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import p020b.p041h.p042e.C1523b;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p049k.C1597h;
/* renamed from: b.h.l.e0 */
/* loaded from: classes-dex2jar.jar:b/h/l/e0.class */
public class C1615e0 {

    /* renamed from: a */
    public static final C1615e0 f6224a;

    /* renamed from: b */
    private final C1627l f6225b;

    /* renamed from: b.h.l.e0$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$a.class */
    public static class C1616a {

        /* renamed from: a */
        private static Field f6226a;

        /* renamed from: b */
        private static Field f6227b;

        /* renamed from: c */
        private static Field f6228c;

        /* renamed from: d */
        private static boolean f6229d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f6226a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f6227b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f6228c = declaredField3;
                declaredField3.setAccessible(true);
                f6229d = true;
            } catch (ReflectiveOperationException e) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e.getMessage(), e);
            }
        }

        /* renamed from: a */
        public static C1615e0 m29575a(View view) {
            if (!f6229d || !view.isAttachedToWindow()) {
                return null;
            }
            try {
                Object obj = f6226a.get(view.getRootView());
                if (obj == null) {
                    return null;
                }
                Rect rect = (Rect) f6227b.get(obj);
                Rect rect2 = (Rect) f6228c.get(obj);
                if (rect == null || rect2 == null) {
                    return null;
                }
                C1615e0 m29574a = new C1617b().m29573b(C1523b.m29845c(rect)).m29572c(C1523b.m29845c(rect2)).m29574a();
                m29574a.m29580t(m29574a);
                m29574a.m29596d(view.getRootView());
                return m29574a;
            } catch (IllegalAccessException e) {
                Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e.getMessage(), e);
                return null;
            }
        }
    }

    /* renamed from: b.h.l.e0$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$b.class */
    public static final class C1617b {

        /* renamed from: a */
        private final C1621f f6230a;

        public C1617b() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f6230a = new C1620e();
            } else if (i >= 29) {
                this.f6230a = new C1619d();
            } else if (i >= 20) {
                this.f6230a = new C1618c();
            } else {
                this.f6230a = new C1621f();
            }
        }

        public C1617b(C1615e0 c1615e0) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f6230a = new C1620e(c1615e0);
            } else if (i >= 29) {
                this.f6230a = new C1619d(c1615e0);
            } else if (i >= 20) {
                this.f6230a = new C1618c(c1615e0);
            } else {
                this.f6230a = new C1621f(c1615e0);
            }
        }

        /* renamed from: a */
        public C1615e0 m29574a() {
            return this.f6230a.mo29569b();
        }

        @Deprecated
        /* renamed from: b */
        public C1617b m29573b(C1523b c1523b) {
            this.f6230a.mo29567d(c1523b);
            return this;
        }

        @Deprecated
        /* renamed from: c */
        public C1617b m29572c(C1523b c1523b) {
            this.f6230a.mo29565f(c1523b);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$c.class */
    public static class C1618c extends C1621f {

        /* renamed from: c */
        private static Field f6231c;

        /* renamed from: d */
        private static boolean f6232d = false;

        /* renamed from: e */
        private static Constructor<WindowInsets> f6233e;

        /* renamed from: f */
        private static boolean f6234f = false;

        /* renamed from: g */
        private WindowInsets f6235g;

        /* renamed from: h */
        private C1523b f6236h;

        C1618c() {
            this.f6235g = m29571h();
        }

        C1618c(C1615e0 c1615e0) {
            super(c1615e0);
            this.f6235g = c1615e0.m29578v();
        }

        /* renamed from: h */
        private static WindowInsets m29571h() {
            if (!f6232d) {
                try {
                    f6231c = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f6232d = true;
            }
            Field field = f6231c;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!f6234f) {
                try {
                    f6233e = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f6234f = true;
            }
            Constructor<WindowInsets> constructor = f6233e;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                    return null;
                }
            }
            return null;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: b */
        C1615e0 mo29569b() {
            m29570a();
            C1615e0 m29577w = C1615e0.m29577w(this.f6235g);
            m29577w.m29582r(this.f6239b);
            m29577w.m29579u(this.f6236h);
            return m29577w;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: d */
        void mo29567d(C1523b c1523b) {
            this.f6236h = c1523b;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: f */
        void mo29565f(C1523b c1523b) {
            WindowInsets windowInsets = this.f6235g;
            if (windowInsets != null) {
                this.f6235g = windowInsets.replaceSystemWindowInsets(c1523b.f6051b, c1523b.f6052c, c1523b.f6053d, c1523b.f6054e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$d */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$d.class */
    public static class C1619d extends C1621f {

        /* renamed from: c */
        final WindowInsets.Builder f6237c;

        C1619d() {
            this.f6237c = new WindowInsets.Builder();
        }

        C1619d(C1615e0 c1615e0) {
            super(c1615e0);
            WindowInsets m29578v = c1615e0.m29578v();
            this.f6237c = m29578v != null ? new WindowInsets.Builder(m29578v) : new WindowInsets.Builder();
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: b */
        C1615e0 mo29569b() {
            m29570a();
            C1615e0 m29577w = C1615e0.m29577w(this.f6237c.build());
            m29577w.m29582r(this.f6239b);
            return m29577w;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: c */
        void mo29568c(C1523b c1523b) {
            this.f6237c.setMandatorySystemGestureInsets(c1523b.m29843e());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: d */
        void mo29567d(C1523b c1523b) {
            this.f6237c.setStableInsets(c1523b.m29843e());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: e */
        void mo29566e(C1523b c1523b) {
            this.f6237c.setSystemGestureInsets(c1523b.m29843e());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: f */
        void mo29565f(C1523b c1523b) {
            this.f6237c.setSystemWindowInsets(c1523b.m29843e());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1621f
        /* renamed from: g */
        void mo29564g(C1523b c1523b) {
            this.f6237c.setTappableElementInsets(c1523b.m29843e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$e */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$e.class */
    public static class C1620e extends C1619d {
        C1620e() {
        }

        C1620e(C1615e0 c1615e0) {
            super(c1615e0);
        }
    }

    /* renamed from: b.h.l.e0$f */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$f.class */
    public static class C1621f {

        /* renamed from: a */
        private final C1615e0 f6238a;

        /* renamed from: b */
        C1523b[] f6239b;

        C1621f() {
            this(new C1615e0((C1615e0) null));
        }

        C1621f(C1615e0 c1615e0) {
            this.f6238a = c1615e0;
        }

        /* renamed from: a */
        protected final void m29570a() {
            C1523b[] c1523bArr = this.f6239b;
            if (c1523bArr != null) {
                C1523b c1523b = c1523bArr[C1628m.m29539a(1)];
                C1523b c1523b2 = this.f6239b[C1628m.m29539a(2)];
                C1523b c1523b3 = c1523b2;
                if (c1523b2 == null) {
                    c1523b3 = this.f6238a.m29594f(2);
                }
                C1523b c1523b4 = c1523b;
                if (c1523b == null) {
                    c1523b4 = this.f6238a.m29594f(1);
                }
                mo29565f(C1523b.m29847a(c1523b4, c1523b3));
                C1523b c1523b5 = this.f6239b[C1628m.m29539a(16)];
                if (c1523b5 != null) {
                    mo29566e(c1523b5);
                }
                C1523b c1523b6 = this.f6239b[C1628m.m29539a(32)];
                if (c1523b6 != null) {
                    mo29568c(c1523b6);
                }
                C1523b c1523b7 = this.f6239b[C1628m.m29539a(64)];
                if (c1523b7 == null) {
                    return;
                }
                mo29564g(c1523b7);
            }
        }

        /* renamed from: b */
        C1615e0 mo29569b() {
            m29570a();
            return this.f6238a;
        }

        /* renamed from: c */
        void mo29568c(C1523b c1523b) {
        }

        /* renamed from: d */
        void mo29567d(C1523b c1523b) {
        }

        /* renamed from: e */
        void mo29566e(C1523b c1523b) {
        }

        /* renamed from: f */
        void mo29565f(C1523b c1523b) {
        }

        /* renamed from: g */
        void mo29564g(C1523b c1523b) {
        }
    }

    /* renamed from: b.h.l.e0$g */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$g.class */
    public static class C1622g extends C1627l {

        /* renamed from: c */
        private static boolean f6240c = false;

        /* renamed from: d */
        private static Method f6241d;

        /* renamed from: e */
        private static Class<?> f6242e;

        /* renamed from: f */
        private static Class<?> f6243f;

        /* renamed from: g */
        private static Field f6244g;

        /* renamed from: h */
        private static Field f6245h;

        /* renamed from: i */
        final WindowInsets f6246i;

        /* renamed from: j */
        private C1523b[] f6247j;

        /* renamed from: k */
        private C1523b f6248k;

        /* renamed from: l */
        private C1615e0 f6249l;

        /* renamed from: m */
        C1523b f6250m;

        C1622g(C1615e0 c1615e0, WindowInsets windowInsets) {
            super(c1615e0);
            this.f6248k = null;
            this.f6246i = windowInsets;
        }

        C1622g(C1615e0 c1615e0, C1622g c1622g) {
            this(c1615e0, new WindowInsets(c1622g.f6246i));
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: t */
        private C1523b m29563t(int i, boolean z) {
            C1523b c1523b = C1523b.f6050a;
            int i2 = 1;
            while (true) {
                int i3 = i2;
                if (i3 <= 256) {
                    if ((i & i3) != 0) {
                        c1523b = C1523b.m29847a(c1523b, m29562u(i3, z));
                    }
                    i2 = i3 << 1;
                } else {
                    return c1523b;
                }
            }
        }

        /* renamed from: v */
        private C1523b m29561v() {
            C1615e0 c1615e0 = this.f6249l;
            return c1615e0 != null ? c1615e0.m29592h() : C1523b.f6050a;
        }

        /* renamed from: w */
        private C1523b m29560w(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f6240c) {
                    m29559x();
                }
                Method method = f6241d;
                if (method == null || f6243f == null || f6244g == null) {
                    return null;
                }
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f6244g.get(f6245h.get(invoke));
                    C1523b c1523b = null;
                    if (rect != null) {
                        c1523b = C1523b.m29845c(rect);
                    }
                    return c1523b;
                } catch (ReflectiveOperationException e) {
                    Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
                    return null;
                }
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        /* renamed from: x */
        private static void m29559x() {
            try {
                f6241d = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                f6242e = Class.forName("android.view.ViewRootImpl");
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f6243f = cls;
                f6244g = cls.getDeclaredField("mVisibleInsets");
                f6245h = f6242e.getDeclaredField("mAttachInfo");
                f6244g.setAccessible(true);
                f6245h.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e.getMessage(), e);
            }
            f6240c = true;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: d */
        void mo29555d(View view) {
            C1523b m29560w = m29560w(view);
            C1523b c1523b = m29560w;
            if (m29560w == null) {
                c1523b = C1523b.f6050a;
            }
            mo29542q(c1523b);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: e */
        void mo29554e(C1615e0 c1615e0) {
            c1615e0.m29580t(this.f6249l);
            c1615e0.m29581s(this.f6250m);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.f6250m, ((C1622g) obj).f6250m);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: g */
        public C1523b mo29552g(int i) {
            return m29563t(i, false);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: k */
        final C1523b mo29548k() {
            if (this.f6248k == null) {
                this.f6248k = C1523b.m29846b(this.f6246i.getSystemWindowInsetLeft(), this.f6246i.getSystemWindowInsetTop(), this.f6246i.getSystemWindowInsetRight(), this.f6246i.getSystemWindowInsetBottom());
            }
            return this.f6248k;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: m */
        C1615e0 mo29546m(int i, int i2, int i3, int i4) {
            C1617b c1617b = new C1617b(C1615e0.m29577w(this.f6246i));
            c1617b.m29572c(C1615e0.m29585o(mo29548k(), i, i2, i3, i4));
            c1617b.m29573b(C1615e0.m29585o(mo29550i(), i, i2, i3, i4));
            return c1617b.m29574a();
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: o */
        boolean mo29544o() {
            return this.f6246i.isRound();
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: p */
        public void mo29543p(C1523b[] c1523bArr) {
            this.f6247j = c1523bArr;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: q */
        void mo29542q(C1523b c1523b) {
            this.f6250m = c1523b;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: r */
        void mo29541r(C1615e0 c1615e0) {
            this.f6249l = c1615e0;
        }

        /* renamed from: u */
        protected C1523b m29562u(int i, boolean z) {
            int i2;
            if (i == 1) {
                return z ? C1523b.m29846b(0, Math.max(m29561v().f6052c, mo29548k().f6052c), 0, 0) : C1523b.m29846b(0, mo29548k().f6052c, 0, 0);
            }
            C1523b c1523b = null;
            if (i == 2) {
                if (z) {
                    C1523b m29561v = m29561v();
                    C1523b mo29550i = mo29550i();
                    return C1523b.m29846b(Math.max(m29561v.f6051b, mo29550i.f6051b), 0, Math.max(m29561v.f6053d, mo29550i.f6053d), Math.max(m29561v.f6054e, mo29550i.f6054e));
                }
                C1523b mo29548k = mo29548k();
                C1615e0 c1615e0 = this.f6249l;
                if (c1615e0 != null) {
                    c1523b = c1615e0.m29592h();
                }
                int i3 = mo29548k.f6054e;
                int i4 = i3;
                if (c1523b != null) {
                    i4 = Math.min(i3, c1523b.f6054e);
                }
                return C1523b.m29846b(mo29548k.f6051b, 0, mo29548k.f6053d, i4);
            } else if (i != 8) {
                if (i == 16) {
                    return mo29549j();
                }
                if (i == 32) {
                    return mo29551h();
                }
                if (i == 64) {
                    return mo29547l();
                }
                if (i != 128) {
                    return C1523b.f6050a;
                }
                C1615e0 c1615e02 = this.f6249l;
                C1612d m29595e = c1615e02 != null ? c1615e02.m29595e() : mo29553f();
                return m29595e != null ? C1523b.m29846b(m29595e.m29606b(), m29595e.m29604d(), m29595e.m29605c(), m29595e.m29607a()) : C1523b.f6050a;
            } else {
                C1523b[] c1523bArr = this.f6247j;
                C1523b c1523b2 = null;
                if (c1523bArr != null) {
                    c1523b2 = c1523bArr[C1628m.m29539a(8)];
                }
                if (c1523b2 != null) {
                    return c1523b2;
                }
                C1523b mo29548k2 = mo29548k();
                C1523b m29561v2 = m29561v();
                int i5 = mo29548k2.f6054e;
                if (i5 > m29561v2.f6054e) {
                    return C1523b.m29846b(0, 0, 0, i5);
                }
                C1523b c1523b3 = this.f6250m;
                return (c1523b3 == null || c1523b3.equals(C1523b.f6050a) || (i2 = this.f6250m.f6054e) <= m29561v2.f6054e) ? C1523b.f6050a : C1523b.m29846b(0, 0, 0, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$h */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$h.class */
    public static class C1623h extends C1622g {

        /* renamed from: n */
        private C1523b f6251n;

        C1623h(C1615e0 c1615e0, WindowInsets windowInsets) {
            super(c1615e0, windowInsets);
            this.f6251n = null;
        }

        C1623h(C1615e0 c1615e0, C1623h c1623h) {
            super(c1615e0, c1623h);
            this.f6251n = null;
            this.f6251n = c1623h.f6251n;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: b */
        C1615e0 mo29557b() {
            return C1615e0.m29577w(this.f6246i.consumeStableInsets());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: c */
        C1615e0 mo29556c() {
            return C1615e0.m29577w(this.f6246i.consumeSystemWindowInsets());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: i */
        final C1523b mo29550i() {
            if (this.f6251n == null) {
                this.f6251n = C1523b.m29846b(this.f6246i.getStableInsetLeft(), this.f6246i.getStableInsetTop(), this.f6246i.getStableInsetRight(), this.f6246i.getStableInsetBottom());
            }
            return this.f6251n;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: n */
        boolean mo29545n() {
            return this.f6246i.isConsumed();
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: s */
        public void mo29540s(C1523b c1523b) {
            this.f6251n = c1523b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$i */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$i.class */
    public static class C1624i extends C1623h {
        C1624i(C1615e0 c1615e0, WindowInsets windowInsets) {
            super(c1615e0, windowInsets);
        }

        C1624i(C1615e0 c1615e0, C1624i c1624i) {
            super(c1615e0, c1624i);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: a */
        C1615e0 mo29558a() {
            return C1615e0.m29577w(this.f6246i.consumeDisplayCutout());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1622g, p020b.p041h.p050l.C1615e0.C1627l
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1624i)) {
                return false;
            }
            C1624i c1624i = (C1624i) obj;
            if (!Objects.equals(this.f6246i, c1624i.f6246i) || !Objects.equals(this.f6250m, c1624i.f6250m)) {
                z = false;
            }
            return z;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: f */
        C1612d mo29553f() {
            return C1612d.m29603e(this.f6246i.getDisplayCutout());
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        public int hashCode() {
            return this.f6246i.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$j */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$j.class */
    public static class C1625j extends C1624i {

        /* renamed from: o */
        private C1523b f6252o = null;

        /* renamed from: p */
        private C1523b f6253p = null;

        /* renamed from: q */
        private C1523b f6254q = null;

        C1625j(C1615e0 c1615e0, WindowInsets windowInsets) {
            super(c1615e0, windowInsets);
        }

        C1625j(C1615e0 c1615e0, C1625j c1625j) {
            super(c1615e0, c1625j);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: h */
        C1523b mo29551h() {
            if (this.f6253p == null) {
                this.f6253p = C1523b.m29844d(this.f6246i.getMandatorySystemGestureInsets());
            }
            return this.f6253p;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: j */
        C1523b mo29549j() {
            if (this.f6252o == null) {
                this.f6252o = C1523b.m29844d(this.f6246i.getSystemGestureInsets());
            }
            return this.f6252o;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: l */
        C1523b mo29547l() {
            if (this.f6254q == null) {
                this.f6254q = C1523b.m29844d(this.f6246i.getTappableElementInsets());
            }
            return this.f6254q;
        }

        @Override // p020b.p041h.p050l.C1615e0.C1622g, p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: m */
        C1615e0 mo29546m(int i, int i2, int i3, int i4) {
            return C1615e0.m29577w(this.f6246i.inset(i, i2, i3, i4));
        }

        @Override // p020b.p041h.p050l.C1615e0.C1623h, p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: s */
        public void mo29540s(C1523b c1523b) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.e0$k */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$k.class */
    public static class C1626k extends C1625j {

        /* renamed from: r */
        static final C1615e0 f6255r = C1615e0.m29577w(WindowInsets.CONSUMED);

        C1626k(C1615e0 c1615e0, WindowInsets windowInsets) {
            super(c1615e0, windowInsets);
        }

        C1626k(C1615e0 c1615e0, C1626k c1626k) {
            super(c1615e0, c1626k);
        }

        @Override // p020b.p041h.p050l.C1615e0.C1622g, p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: d */
        final void mo29555d(View view) {
        }

        @Override // p020b.p041h.p050l.C1615e0.C1622g, p020b.p041h.p050l.C1615e0.C1627l
        /* renamed from: g */
        public C1523b mo29552g(int i) {
            return C1523b.m29844d(this.f6246i.getInsets(C1629n.m29538a(i)));
        }
    }

    /* renamed from: b.h.l.e0$l */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$l.class */
    public static class C1627l {

        /* renamed from: a */
        static final C1615e0 f6256a = new C1617b().m29574a().m29599a().m29598b().m29597c();

        /* renamed from: b */
        final C1615e0 f6257b;

        C1627l(C1615e0 c1615e0) {
            this.f6257b = c1615e0;
        }

        /* renamed from: a */
        C1615e0 mo29558a() {
            return this.f6257b;
        }

        /* renamed from: b */
        C1615e0 mo29557b() {
            return this.f6257b;
        }

        /* renamed from: c */
        C1615e0 mo29556c() {
            return this.f6257b;
        }

        /* renamed from: d */
        void mo29555d(View view) {
        }

        /* renamed from: e */
        void mo29554e(C1615e0 c1615e0) {
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1627l)) {
                return false;
            }
            C1627l c1627l = (C1627l) obj;
            if (mo29544o() != c1627l.mo29544o() || mo29545n() != c1627l.mo29545n() || !C1592c.m29668a(mo29548k(), c1627l.mo29548k()) || !C1592c.m29668a(mo29550i(), c1627l.mo29550i()) || !C1592c.m29668a(mo29553f(), c1627l.mo29553f())) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        C1612d mo29553f() {
            return null;
        }

        /* renamed from: g */
        C1523b mo29552g(int i) {
            return C1523b.f6050a;
        }

        /* renamed from: h */
        C1523b mo29551h() {
            return mo29548k();
        }

        public int hashCode() {
            return C1592c.m29667b(Boolean.valueOf(mo29544o()), Boolean.valueOf(mo29545n()), mo29548k(), mo29550i(), mo29553f());
        }

        /* renamed from: i */
        C1523b mo29550i() {
            return C1523b.f6050a;
        }

        /* renamed from: j */
        C1523b mo29549j() {
            return mo29548k();
        }

        /* renamed from: k */
        C1523b mo29548k() {
            return C1523b.f6050a;
        }

        /* renamed from: l */
        C1523b mo29547l() {
            return mo29548k();
        }

        /* renamed from: m */
        C1615e0 mo29546m(int i, int i2, int i3, int i4) {
            return f6256a;
        }

        /* renamed from: n */
        boolean mo29545n() {
            return false;
        }

        /* renamed from: o */
        boolean mo29544o() {
            return false;
        }

        /* renamed from: p */
        public void mo29543p(C1523b[] c1523bArr) {
        }

        /* renamed from: q */
        void mo29542q(C1523b c1523b) {
        }

        /* renamed from: r */
        void mo29541r(C1615e0 c1615e0) {
        }

        /* renamed from: s */
        public void mo29540s(C1523b c1523b) {
        }
    }

    /* renamed from: b.h.l.e0$m */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$m.class */
    public static final class C1628m {
        /* renamed from: a */
        static int m29539a(int i) {
            if (i != 1) {
                if (i == 2) {
                    return 1;
                }
                if (i == 4) {
                    return 2;
                }
                if (i == 8) {
                    return 3;
                }
                if (i == 16) {
                    return 4;
                }
                if (i == 32) {
                    return 5;
                }
                if (i == 64) {
                    return 6;
                }
                if (i == 128) {
                    return 7;
                }
                if (i == 256) {
                    return 8;
                }
                throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
            }
            return 0;
        }
    }

    /* renamed from: b.h.l.e0$n */
    /* loaded from: classes-dex2jar.jar:b/h/l/e0$n.class */
    private static final class C1629n {
        /* renamed from: a */
        static int m29538a(int i) {
            int i2;
            int i3 = 0;
            int i4 = 1;
            while (i4 <= 256) {
                int i5 = i3;
                if ((i & i4) != 0) {
                    if (i4 == 1) {
                        i2 = WindowInsets.Type.statusBars();
                    } else if (i4 == 2) {
                        i2 = WindowInsets.Type.navigationBars();
                    } else if (i4 == 4) {
                        i2 = WindowInsets.Type.captionBar();
                    } else if (i4 == 8) {
                        i2 = WindowInsets.Type.ime();
                    } else if (i4 == 16) {
                        i2 = WindowInsets.Type.systemGestures();
                    } else if (i4 == 32) {
                        i2 = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i4 == 64) {
                        i2 = WindowInsets.Type.tappableElement();
                    } else if (i4 != 128) {
                        i5 = i3;
                    } else {
                        i2 = WindowInsets.Type.displayCutout();
                    }
                    i5 = i3 | i2;
                }
                i4 <<= 1;
                i3 = i5;
            }
            return i3;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f6224a = C1626k.f6255r;
        } else {
            f6224a = C1627l.f6256a;
        }
    }

    private C1615e0(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f6225b = new C1626k(this, windowInsets);
        } else if (i >= 29) {
            this.f6225b = new C1625j(this, windowInsets);
        } else if (i >= 28) {
            this.f6225b = new C1624i(this, windowInsets);
        } else if (i >= 21) {
            this.f6225b = new C1623h(this, windowInsets);
        } else if (i >= 20) {
            this.f6225b = new C1622g(this, windowInsets);
        } else {
            this.f6225b = new C1627l(this);
        }
    }

    public C1615e0(C1615e0 c1615e0) {
        if (c1615e0 == null) {
            this.f6225b = new C1627l(this);
            return;
        }
        C1627l c1627l = c1615e0.f6225b;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30 && (c1627l instanceof C1626k)) {
            this.f6225b = new C1626k(this, (C1626k) c1627l);
        } else if (i >= 29 && (c1627l instanceof C1625j)) {
            this.f6225b = new C1625j(this, (C1625j) c1627l);
        } else if (i >= 28 && (c1627l instanceof C1624i)) {
            this.f6225b = new C1624i(this, (C1624i) c1627l);
        } else if (i >= 21 && (c1627l instanceof C1623h)) {
            this.f6225b = new C1623h(this, (C1623h) c1627l);
        } else if (i < 20 || !(c1627l instanceof C1622g)) {
            this.f6225b = new C1627l(this);
        } else {
            this.f6225b = new C1622g(this, (C1622g) c1627l);
        }
        c1627l.mo29554e(this);
    }

    /* renamed from: o */
    static C1523b m29585o(C1523b c1523b, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c1523b.f6051b - i);
        int max2 = Math.max(0, c1523b.f6052c - i2);
        int max3 = Math.max(0, c1523b.f6053d - i3);
        int max4 = Math.max(0, c1523b.f6054e - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c1523b : C1523b.m29846b(max, max2, max3, max4);
    }

    /* renamed from: w */
    public static C1615e0 m29577w(WindowInsets windowInsets) {
        return m29576x(windowInsets, null);
    }

    /* renamed from: x */
    public static C1615e0 m29576x(WindowInsets windowInsets, View view) {
        C1615e0 c1615e0 = new C1615e0((WindowInsets) C1597h.m29659e(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            c1615e0.m29580t(C1679w.m29330K(view));
            c1615e0.m29596d(view.getRootView());
        }
        return c1615e0;
    }

    @Deprecated
    /* renamed from: a */
    public C1615e0 m29599a() {
        return this.f6225b.mo29558a();
    }

    @Deprecated
    /* renamed from: b */
    public C1615e0 m29598b() {
        return this.f6225b.mo29557b();
    }

    @Deprecated
    /* renamed from: c */
    public C1615e0 m29597c() {
        return this.f6225b.mo29556c();
    }

    /* renamed from: d */
    public void m29596d(View view) {
        this.f6225b.mo29555d(view);
    }

    /* renamed from: e */
    public C1612d m29595e() {
        return this.f6225b.mo29553f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1615e0) {
            return C1592c.m29668a(this.f6225b, ((C1615e0) obj).f6225b);
        }
        return false;
    }

    /* renamed from: f */
    public C1523b m29594f(int i) {
        return this.f6225b.mo29552g(i);
    }

    @Deprecated
    /* renamed from: g */
    public C1523b m29593g() {
        return this.f6225b.mo29551h();
    }

    @Deprecated
    /* renamed from: h */
    public C1523b m29592h() {
        return this.f6225b.mo29550i();
    }

    public int hashCode() {
        C1627l c1627l = this.f6225b;
        return c1627l == null ? 0 : c1627l.hashCode();
    }

    @Deprecated
    /* renamed from: i */
    public int m29591i() {
        return this.f6225b.mo29548k().f6054e;
    }

    @Deprecated
    /* renamed from: j */
    public int m29590j() {
        return this.f6225b.mo29548k().f6051b;
    }

    @Deprecated
    /* renamed from: k */
    public int m29589k() {
        return this.f6225b.mo29548k().f6053d;
    }

    @Deprecated
    /* renamed from: l */
    public int m29588l() {
        return this.f6225b.mo29548k().f6052c;
    }

    @Deprecated
    /* renamed from: m */
    public boolean m29587m() {
        return !this.f6225b.mo29548k().equals(C1523b.f6050a);
    }

    /* renamed from: n */
    public C1615e0 m29586n(int i, int i2, int i3, int i4) {
        return this.f6225b.mo29546m(i, i2, i3, i4);
    }

    /* renamed from: p */
    public boolean m29584p() {
        return this.f6225b.mo29545n();
    }

    @Deprecated
    /* renamed from: q */
    public C1615e0 m29583q(int i, int i2, int i3, int i4) {
        return new C1617b(this).m29572c(C1523b.m29846b(i, i2, i3, i4)).m29574a();
    }

    /* renamed from: r */
    void m29582r(C1523b[] c1523bArr) {
        this.f6225b.mo29543p(c1523bArr);
    }

    /* renamed from: s */
    void m29581s(C1523b c1523b) {
        this.f6225b.mo29542q(c1523b);
    }

    /* renamed from: t */
    public void m29580t(C1615e0 c1615e0) {
        this.f6225b.mo29541r(c1615e0);
    }

    /* renamed from: u */
    void m29579u(C1523b c1523b) {
        this.f6225b.mo29540s(c1523b);
    }

    /* renamed from: v */
    public WindowInsets m29578v() {
        C1627l c1627l = this.f6225b;
        return c1627l instanceof C1622g ? ((C1622g) c1627l).f6246i : null;
    }
}
