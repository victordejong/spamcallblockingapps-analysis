package p163m0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import p087f0.C2695b;
import p163m0.C3589v;
/* renamed from: m0.b0 */
/* loaded from: classes-dex2jar.jar:m0/b0.class */
public class C3551b0 {

    /* renamed from: b */
    public static final C3551b0 f11719b;

    /* renamed from: a */
    public final C3562k f11720a;

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: m0.b0$a */
    /* loaded from: classes-dex2jar.jar:m0/b0$a.class */
    public static class C3552a {

        /* renamed from: a */
        public static Field f11721a;

        /* renamed from: b */
        public static Field f11722b;

        /* renamed from: c */
        public static Field f11723c;

        /* renamed from: d */
        public static boolean f11724d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f11721a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f11722b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f11723c = declaredField3;
                declaredField3.setAccessible(true);
                f11724d = true;
            } catch (ReflectiveOperationException e) {
                StringBuilder m8752j = C0082b.m8752j("Failed to get visible insets from AttachInfo ");
                m8752j.append(e.getMessage());
                Log.w("WindowInsetsCompat", m8752j.toString(), e);
            }
        }
    }

    /* renamed from: m0.b0$b */
    /* loaded from: classes-dex2jar.jar:m0/b0$b.class */
    public static class C3553b extends C3556e {

        /* renamed from: d */
        public static Field f11725d;

        /* renamed from: e */
        public static boolean f11726e = false;

        /* renamed from: f */
        public static Constructor<WindowInsets> f11727f;

        /* renamed from: g */
        public static boolean f11728g = false;

        /* renamed from: b */
        public WindowInsets f11729b;

        /* renamed from: c */
        public C2695b f11730c;

        public C3553b() {
            this.f11729b = m2172e();
        }

        public C3553b(C3551b0 c3551b0) {
            super(c3551b0);
            this.f11729b = c3551b0.m2175h();
        }

        /* renamed from: e */
        private static WindowInsets m2172e() {
            if (!f11726e) {
                try {
                    f11725d = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f11726e = true;
            }
            Field field = f11725d;
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
            if (!f11728g) {
                try {
                    f11727f = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f11728g = true;
            }
            Constructor<WindowInsets> constructor = f11727f;
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

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: b */
        public C3551b0 mo2170b() {
            m2171a();
            C3551b0 m2174i = C3551b0.m2174i(this.f11729b);
            m2174i.f11720a.mo2152m(null);
            m2174i.f11720a.mo2150o(this.f11730c);
            return m2174i;
        }

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: c */
        public void mo2169c(C2695b c2695b) {
            this.f11730c = c2695b;
        }

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: d */
        public void mo2168d(C2695b c2695b) {
            WindowInsets windowInsets = this.f11729b;
            if (windowInsets != null) {
                this.f11729b = windowInsets.replaceSystemWindowInsets(c2695b.f9272a, c2695b.f9273b, c2695b.f9274c, c2695b.f9275d);
            }
        }
    }

    /* renamed from: m0.b0$c */
    /* loaded from: classes-dex2jar.jar:m0/b0$c.class */
    public static class C3554c extends C3556e {

        /* renamed from: b */
        public final WindowInsets.Builder f11731b;

        public C3554c() {
            this.f11731b = new WindowInsets.Builder();
        }

        public C3554c(C3551b0 c3551b0) {
            super(c3551b0);
            WindowInsets m2175h = c3551b0.m2175h();
            this.f11731b = m2175h != null ? new WindowInsets.Builder(m2175h) : new WindowInsets.Builder();
        }

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: b */
        public C3551b0 mo2170b() {
            m2171a();
            C3551b0 m2174i = C3551b0.m2174i(this.f11731b.build());
            m2174i.f11720a.mo2152m(null);
            return m2174i;
        }

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: c */
        public void mo2169c(C2695b c2695b) {
            this.f11731b.setStableInsets(c2695b.m3251c());
        }

        @Override // p163m0.C3551b0.C3556e
        /* renamed from: d */
        public void mo2168d(C2695b c2695b) {
            this.f11731b.setSystemWindowInsets(c2695b.m3251c());
        }
    }

    /* renamed from: m0.b0$d */
    /* loaded from: classes-dex2jar.jar:m0/b0$d.class */
    public static class C3555d extends C3554c {
        public C3555d() {
        }

        public C3555d(C3551b0 c3551b0) {
            super(c3551b0);
        }
    }

    /* renamed from: m0.b0$e */
    /* loaded from: classes-dex2jar.jar:m0/b0$e.class */
    public static class C3556e {

        /* renamed from: a */
        public final C3551b0 f11732a;

        public C3556e() {
            this(new C3551b0((C3551b0) null));
        }

        public C3556e(C3551b0 c3551b0) {
            this.f11732a = c3551b0;
        }

        /* renamed from: a */
        public final void m2171a() {
        }

        /* renamed from: b */
        public C3551b0 mo2170b() {
            throw null;
        }

        /* renamed from: c */
        public void mo2169c(C2695b c2695b) {
            throw null;
        }

        /* renamed from: d */
        public void mo2168d(C2695b c2695b) {
            throw null;
        }
    }

    /* renamed from: m0.b0$f */
    /* loaded from: classes-dex2jar.jar:m0/b0$f.class */
    public static class C3557f extends C3562k {

        /* renamed from: h */
        public static boolean f11733h = false;

        /* renamed from: i */
        public static Method f11734i;

        /* renamed from: j */
        public static Class<?> f11735j;

        /* renamed from: k */
        public static Field f11736k;

        /* renamed from: l */
        public static Field f11737l;

        /* renamed from: c */
        public final WindowInsets f11738c;

        /* renamed from: d */
        public C2695b[] f11739d;

        /* renamed from: e */
        public C2695b f11740e = null;

        /* renamed from: f */
        public C3551b0 f11741f;

        /* renamed from: g */
        public C2695b f11742g;

        public C3557f(C3551b0 c3551b0, WindowInsets windowInsets) {
            super(c3551b0);
            this.f11738c = windowInsets;
        }

        /* renamed from: p */
        private C2695b m2167p(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f11733h) {
                    m2166q();
                }
                Method method = f11734i;
                if (method == null || f11735j == null || f11736k == null) {
                    return null;
                }
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f11736k.get(f11737l.get(invoke));
                    C2695b c2695b = null;
                    if (rect != null) {
                        c2695b = C2695b.m3253a(rect.left, rect.top, rect.right, rect.bottom);
                    }
                    return c2695b;
                } catch (ReflectiveOperationException e) {
                    e.getMessage();
                    return null;
                }
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @SuppressLint({"PrivateApi"})
        /* renamed from: q */
        private static void m2166q() {
            try {
                f11734i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f11735j = cls;
                f11736k = cls.getDeclaredField("mVisibleInsets");
                f11737l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f11736k.setAccessible(true);
                f11737l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                e.getMessage();
            }
            f11733h = true;
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: d */
        public void mo2161d(View view) {
            C2695b m2167p = m2167p(view);
            C2695b c2695b = m2167p;
            if (m2167p == null) {
                c2695b = C2695b.f9271e;
            }
            m2165r(c2695b);
        }

        @Override // p163m0.C3551b0.C3562k
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.f11742g, ((C3557f) obj).f11742g);
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: i */
        public final C2695b mo2156i() {
            if (this.f11740e == null) {
                this.f11740e = C2695b.m3253a(this.f11738c.getSystemWindowInsetLeft(), this.f11738c.getSystemWindowInsetTop(), this.f11738c.getSystemWindowInsetRight(), this.f11738c.getSystemWindowInsetBottom());
            }
            return this.f11740e;
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: j */
        public C3551b0 mo2155j(int i, int i2, int i3, int i4) {
            C3551b0 m2174i = C3551b0.m2174i(this.f11738c);
            int i5 = Build.VERSION.SDK_INT;
            C3555d c3555d = i5 >= 30 ? new C3555d(m2174i) : i5 >= 29 ? new C3554c(m2174i) : new C3553b(m2174i);
            c3555d.mo2168d(C3551b0.m2177f(mo2156i(), i, i2, i3, i4));
            c3555d.mo2169c(C3551b0.m2177f(mo2158g(), i, i2, i3, i4));
            return c3555d.mo2170b();
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: l */
        public boolean mo2153l() {
            return this.f11738c.isRound();
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: m */
        public void mo2152m(C2695b[] c2695bArr) {
            this.f11739d = c2695bArr;
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: n */
        public void mo2151n(C3551b0 c3551b0) {
            this.f11741f = c3551b0;
        }

        /* renamed from: r */
        public void m2165r(C2695b c2695b) {
            this.f11742g = c2695b;
        }
    }

    /* renamed from: m0.b0$g */
    /* loaded from: classes-dex2jar.jar:m0/b0$g.class */
    public static class C3558g extends C3557f {

        /* renamed from: m */
        public C2695b f11743m = null;

        public C3558g(C3551b0 c3551b0, WindowInsets windowInsets) {
            super(c3551b0, windowInsets);
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: b */
        public C3551b0 mo2163b() {
            return C3551b0.m2174i(this.f11738c.consumeStableInsets());
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: c */
        public C3551b0 mo2162c() {
            return C3551b0.m2174i(this.f11738c.consumeSystemWindowInsets());
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: g */
        public final C2695b mo2158g() {
            if (this.f11743m == null) {
                this.f11743m = C2695b.m3253a(this.f11738c.getStableInsetLeft(), this.f11738c.getStableInsetTop(), this.f11738c.getStableInsetRight(), this.f11738c.getStableInsetBottom());
            }
            return this.f11743m;
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: k */
        public boolean mo2154k() {
            return this.f11738c.isConsumed();
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: o */
        public void mo2150o(C2695b c2695b) {
            this.f11743m = c2695b;
        }
    }

    /* renamed from: m0.b0$h */
    /* loaded from: classes-dex2jar.jar:m0/b0$h.class */
    public static class C3559h extends C3558g {
        public C3559h(C3551b0 c3551b0, WindowInsets windowInsets) {
            super(c3551b0, windowInsets);
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: a */
        public C3551b0 mo2164a() {
            return C3551b0.m2174i(this.f11738c.consumeDisplayCutout());
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: e */
        public C3570d mo2160e() {
            DisplayCutout displayCutout = this.f11738c.getDisplayCutout();
            return displayCutout == null ? null : new C3570d(displayCutout);
        }

        @Override // p163m0.C3551b0.C3557f, p163m0.C3551b0.C3562k
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C3559h)) {
                return false;
            }
            C3559h c3559h = (C3559h) obj;
            if (!Objects.equals(this.f11738c, c3559h.f11738c) || !Objects.equals(this.f11742g, c3559h.f11742g)) {
                z = false;
            }
            return z;
        }

        @Override // p163m0.C3551b0.C3562k
        public int hashCode() {
            return this.f11738c.hashCode();
        }
    }

    /* renamed from: m0.b0$i */
    /* loaded from: classes-dex2jar.jar:m0/b0$i.class */
    public static class C3560i extends C3559h {

        /* renamed from: n */
        public C2695b f11744n = null;

        /* renamed from: o */
        public C2695b f11745o = null;

        /* renamed from: p */
        public C2695b f11746p = null;

        public C3560i(C3551b0 c3551b0, WindowInsets windowInsets) {
            super(c3551b0, windowInsets);
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: f */
        public C2695b mo2159f() {
            if (this.f11745o == null) {
                this.f11745o = C2695b.m3252b(this.f11738c.getMandatorySystemGestureInsets());
            }
            return this.f11745o;
        }

        @Override // p163m0.C3551b0.C3562k
        /* renamed from: h */
        public C2695b mo2157h() {
            if (this.f11744n == null) {
                this.f11744n = C2695b.m3252b(this.f11738c.getSystemGestureInsets());
            }
            return this.f11744n;
        }

        @Override // p163m0.C3551b0.C3557f, p163m0.C3551b0.C3562k
        /* renamed from: j */
        public C3551b0 mo2155j(int i, int i2, int i3, int i4) {
            return C3551b0.m2174i(this.f11738c.inset(i, i2, i3, i4));
        }

        @Override // p163m0.C3551b0.C3558g, p163m0.C3551b0.C3562k
        /* renamed from: o */
        public void mo2150o(C2695b c2695b) {
        }
    }

    /* renamed from: m0.b0$j */
    /* loaded from: classes-dex2jar.jar:m0/b0$j.class */
    public static class C3561j extends C3560i {

        /* renamed from: q */
        public static final C3551b0 f11747q = C3551b0.m2174i(WindowInsets.CONSUMED);

        public C3561j(C3551b0 c3551b0, WindowInsets windowInsets) {
            super(c3551b0, windowInsets);
        }

        @Override // p163m0.C3551b0.C3557f, p163m0.C3551b0.C3562k
        /* renamed from: d */
        public final void mo2161d(View view) {
        }
    }

    /* renamed from: m0.b0$k */
    /* loaded from: classes-dex2jar.jar:m0/b0$k.class */
    public static class C3562k {

        /* renamed from: b */
        public static final C3551b0 f11748b;

        /* renamed from: a */
        public final C3551b0 f11749a;

        static {
            int i = Build.VERSION.SDK_INT;
            f11748b = (i >= 30 ? new C3555d() : i >= 29 ? new C3554c() : new C3553b()).mo2170b().f11720a.mo2164a().f11720a.mo2163b().m2182a();
        }

        public C3562k(C3551b0 c3551b0) {
            this.f11749a = c3551b0;
        }

        /* renamed from: a */
        public C3551b0 mo2164a() {
            return this.f11749a;
        }

        /* renamed from: b */
        public C3551b0 mo2163b() {
            return this.f11749a;
        }

        /* renamed from: c */
        public C3551b0 mo2162c() {
            return this.f11749a;
        }

        /* renamed from: d */
        public void mo2161d(View view) {
        }

        /* renamed from: e */
        public C3570d mo2160e() {
            return null;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C3562k)) {
                return false;
            }
            C3562k c3562k = (C3562k) obj;
            if (mo2153l() != c3562k.mo2153l() || mo2154k() != c3562k.mo2154k() || !Objects.equals(mo2156i(), c3562k.mo2156i()) || !Objects.equals(mo2158g(), c3562k.mo2158g()) || !Objects.equals(mo2160e(), c3562k.mo2160e())) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public C2695b mo2159f() {
            return mo2156i();
        }

        /* renamed from: g */
        public C2695b mo2158g() {
            return C2695b.f9271e;
        }

        /* renamed from: h */
        public C2695b mo2157h() {
            return mo2156i();
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(mo2153l()), Boolean.valueOf(mo2154k()), mo2156i(), mo2158g(), mo2160e());
        }

        /* renamed from: i */
        public C2695b mo2156i() {
            return C2695b.f9271e;
        }

        /* renamed from: j */
        public C3551b0 mo2155j(int i, int i2, int i3, int i4) {
            return f11748b;
        }

        /* renamed from: k */
        public boolean mo2154k() {
            return false;
        }

        /* renamed from: l */
        public boolean mo2153l() {
            return false;
        }

        /* renamed from: m */
        public void mo2152m(C2695b[] c2695bArr) {
        }

        /* renamed from: n */
        public void mo2151n(C3551b0 c3551b0) {
        }

        /* renamed from: o */
        public void mo2150o(C2695b c2695b) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f11719b = C3561j.f11747q;
        } else {
            f11719b = C3562k.f11748b;
        }
    }

    public C3551b0(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f11720a = new C3561j(this, windowInsets);
        } else if (i >= 29) {
            this.f11720a = new C3560i(this, windowInsets);
        } else if (i >= 28) {
            this.f11720a = new C3559h(this, windowInsets);
        } else {
            this.f11720a = new C3558g(this, windowInsets);
        }
    }

    public C3551b0(C3551b0 c3551b0) {
        this.f11720a = new C3562k(this);
    }

    /* renamed from: f */
    public static C2695b m2177f(C2695b c2695b, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c2695b.f9272a - i);
        int max2 = Math.max(0, c2695b.f9273b - i2);
        int max3 = Math.max(0, c2695b.f9274c - i3);
        int max4 = Math.max(0, c2695b.f9275d - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c2695b : C2695b.m3253a(max, max2, max3, max4);
    }

    /* renamed from: i */
    public static C3551b0 m2174i(WindowInsets windowInsets) {
        return m2173j(windowInsets, null);
    }

    /* renamed from: j */
    public static C3551b0 m2173j(WindowInsets windowInsets, View view) {
        Objects.requireNonNull(windowInsets);
        C3551b0 c3551b0 = new C3551b0(windowInsets);
        if (view != null) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3596g.m2059b(view)) {
                c3551b0.f11720a.mo2151n(Build.VERSION.SDK_INT >= 23 ? C3589v.C3600j.m2024a(view) : C3589v.C3598i.m2041j(view));
                c3551b0.f11720a.mo2161d(view.getRootView());
            }
        }
        return c3551b0;
    }

    @Deprecated
    /* renamed from: a */
    public C3551b0 m2182a() {
        return this.f11720a.mo2162c();
    }

    @Deprecated
    /* renamed from: b */
    public int m2181b() {
        return this.f11720a.mo2156i().f9275d;
    }

    @Deprecated
    /* renamed from: c */
    public int m2180c() {
        return this.f11720a.mo2156i().f9272a;
    }

    @Deprecated
    /* renamed from: d */
    public int m2179d() {
        return this.f11720a.mo2156i().f9274c;
    }

    @Deprecated
    /* renamed from: e */
    public int m2178e() {
        return this.f11720a.mo2156i().f9273b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3551b0) {
            return Objects.equals(this.f11720a, ((C3551b0) obj).f11720a);
        }
        return false;
    }

    /* renamed from: g */
    public boolean m2176g() {
        return this.f11720a.mo2154k();
    }

    /* renamed from: h */
    public WindowInsets m2175h() {
        C3562k c3562k = this.f11720a;
        return c3562k instanceof C3557f ? ((C3557f) c3562k).f11738c : null;
    }

    public int hashCode() {
        C3562k c3562k = this.f11720a;
        return c3562k == null ? 0 : c3562k.hashCode();
    }
}
