package p1727n3.p1807k.p1821i;

import android.graphics.Rect;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import p1727n3.p1807k.p1812c.C26494b;
/* renamed from: n3.k.i.d0 */
/* loaded from: classes-dex2jar.jar:n3/k/i/d0.class */
public class C26568d0 {

    /* renamed from: b */
    public static final C26568d0 f74426b;

    /* renamed from: a */
    public final C26573j f74427a;

    /* renamed from: n3.k.i.d0$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/d0$a.class */
    public static class C26569a extends C26571d {

        /* renamed from: d */
        public static Field f74428d;

        /* renamed from: e */
        public static boolean f74429e = false;

        /* renamed from: f */
        public static Constructor<WindowInsets> f74430f;

        /* renamed from: g */
        public static boolean f74431g = false;

        /* renamed from: b */
        public WindowInsets f74432b;

        /* renamed from: c */
        public C26494b f74433c;

        public C26569a() {
            WindowInsets windowInsets;
            WindowInsets windowInsets2;
            if (!f74429e) {
                try {
                    f74428d = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                }
                f74429e = true;
            }
            Field field = f74428d;
            if (field != null) {
                try {
                    windowInsets = (WindowInsets) field.get(null);
                } catch (ReflectiveOperationException e2) {
                }
                if (windowInsets != null) {
                    windowInsets2 = new WindowInsets(windowInsets);
                    this.f74432b = windowInsets2;
                }
            }
            if (!f74431g) {
                try {
                    f74430f = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                }
                f74431g = true;
            }
            Constructor<WindowInsets> constructor = f74430f;
            windowInsets2 = null;
            if (constructor != null) {
                try {
                    windowInsets2 = constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    windowInsets2 = null;
                }
            }
            this.f74432b = windowInsets2;
        }

        public C26569a(C26568d0 c26568d0) {
            super(c26568d0);
            this.f74432b = c26568d0.m1657j();
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: a */
        public C26568d0 mo1654a() {
            C26568d0 m1656k = C26568d0.m1656k(this.f74432b);
            m1656k.f74427a.mo1636o(null);
            m1656k.f74427a.m1634q(this.f74433c);
            return m1656k;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: b */
        public void mo1653b(C26494b c26494b) {
            this.f74433c = c26494b;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: c */
        public void mo1652c(C26494b c26494b) {
            WindowInsets windowInsets = this.f74432b;
            if (windowInsets != null) {
                this.f74432b = windowInsets.replaceSystemWindowInsets(c26494b.f74277a, c26494b.f74278b, c26494b.f74279c, c26494b.f74280d);
            }
        }
    }

    /* renamed from: n3.k.i.d0$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/d0$b.class */
    public static class C26570b extends C26571d {

        /* renamed from: b */
        public final WindowInsets.Builder f74434b;

        public C26570b() {
            this.f74434b = new WindowInsets.Builder();
        }

        public C26570b(C26568d0 c26568d0) {
            super(c26568d0);
            WindowInsets m1657j = c26568d0.m1657j();
            this.f74434b = m1657j != null ? new WindowInsets.Builder(m1657j) : new WindowInsets.Builder();
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: a */
        public C26568d0 mo1654a() {
            C26568d0 m1656k = C26568d0.m1656k(this.f74434b.build());
            m1656k.f74427a.mo1636o(null);
            return m1656k;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: b */
        public void mo1653b(C26494b c26494b) {
            this.f74434b.setStableInsets(c26494b.m1743d());
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26571d
        /* renamed from: c */
        public void mo1652c(C26494b c26494b) {
            this.f74434b.setSystemWindowInsets(c26494b.m1743d());
        }
    }

    /* renamed from: n3.k.i.d0$d */
    /* loaded from: classes-dex2jar.jar:n3/k/i/d0$d.class */
    public static class C26571d {

        /* renamed from: a */
        public final C26568d0 f74435a;

        public C26571d() {
            this.f74435a = new C26568d0((C26568d0) null);
        }

        public C26571d(C26568d0 c26568d0) {
            this.f74435a = c26568d0;
        }

        /* renamed from: a */
        public C26568d0 mo1654a() {
            throw null;
        }

        /* renamed from: b */
        public void mo1653b(C26494b c26494b) {
            throw null;
        }

        /* renamed from: c */
        public void mo1652c(C26494b c26494b) {
            throw null;
        }
    }

    /* renamed from: n3.k.i.d0$e */
    /* loaded from: classes-dex2jar.jar:n3/k/i/d0$e.class */
    public static class C26572e extends C26573j {

        /* renamed from: h */
        public static boolean f74436h = false;

        /* renamed from: i */
        public static Method f74437i;

        /* renamed from: j */
        public static Class<?> f74438j;

        /* renamed from: k */
        public static Class<?> f74439k;

        /* renamed from: l */
        public static Field f74440l;

        /* renamed from: m */
        public static Field f74441m;

        /* renamed from: c */
        public final WindowInsets f74442c;

        /* renamed from: d */
        public C26494b[] f74443d;

        /* renamed from: e */
        public C26494b f74444e = null;

        /* renamed from: f */
        public C26568d0 f74445f;

        /* renamed from: g */
        public C26494b f74446g;

        public C26572e(C26568d0 c26568d0, WindowInsets windowInsets) {
            super(c26568d0);
            this.f74442c = windowInsets;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: d */
        public void mo1647d(View view) {
            if (Build.VERSION.SDK_INT < 30) {
                if (!f74436h) {
                    try {
                        f74437i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                        f74438j = Class.forName("android.view.ViewRootImpl");
                        Class<?> cls = Class.forName("android.view.View$AttachInfo");
                        f74439k = cls;
                        f74440l = cls.getDeclaredField("mVisibleInsets");
                        f74441m = f74438j.getDeclaredField("mAttachInfo");
                        f74440l.setAccessible(true);
                        f74441m.setAccessible(true);
                    } catch (ReflectiveOperationException e) {
                        e.getMessage();
                    }
                    f74436h = true;
                }
                Method method = f74437i;
                C26494b c26494b = null;
                if (method != null) {
                    c26494b = null;
                    if (f74439k != null) {
                        if (f74440l == null) {
                            c26494b = null;
                        } else {
                            try {
                                Object invoke = method.invoke(view, new Object[0]);
                                if (invoke == null) {
                                    c26494b = null;
                                } else {
                                    Rect rect = (Rect) f74440l.get(f74441m.get(invoke));
                                    c26494b = null;
                                    if (rect != null) {
                                        c26494b = C26494b.m1745b(rect.left, rect.top, rect.right, rect.bottom);
                                    }
                                }
                            } catch (ReflectiveOperationException e2) {
                                e2.getMessage();
                                c26494b = null;
                            }
                        }
                    }
                }
                C26494b c26494b2 = c26494b;
                if (c26494b == null) {
                    c26494b2 = C26494b.f74276e;
                }
                this.f74446g = c26494b2;
                return;
            }
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            return Objects.equals(this.f74446g, ((C26572e) obj).f74446g);
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: f */
        public C26494b mo1645f(int i) {
            C26494b c26494b;
            int i2;
            C26494b c26494b2 = C26494b.f74276e;
            C26494b c26494b3 = c26494b2;
            int i3 = 1;
            while (true) {
                int i4 = i3;
                if (i4 <= 256) {
                    if ((i & i4) != 0) {
                        int i5 = 0;
                        if (i4 != 1) {
                            C26494b c26494b4 = null;
                            if (i4 == 2) {
                                C26494b mo1641j = mo1641j();
                                C26568d0 c26568d0 = this.f74445f;
                                if (c26568d0 != null) {
                                    c26494b4 = c26568d0.f74427a.m1643h();
                                }
                                int i6 = mo1641j.f74280d;
                                int i7 = i6;
                                if (c26494b4 != null) {
                                    i7 = Math.min(i6, c26494b4.f74280d);
                                }
                                c26494b = C26494b.m1745b(mo1641j.f74277a, 0, mo1641j.f74279c, i7);
                            } else if (i4 == 8) {
                                C26494b[] c26494bArr = this.f74443d;
                                c26494b = null;
                                if (c26494bArr != null) {
                                    c26494b = c26494bArr[MediaSessionCompat.m43306F0(8)];
                                }
                                if (c26494b == null) {
                                    C26494b mo1641j2 = mo1641j();
                                    C26494b m1651r = m1651r();
                                    int i8 = mo1641j2.f74280d;
                                    if (i8 > m1651r.f74280d) {
                                        c26494b = C26494b.m1745b(0, 0, 0, i8);
                                    } else {
                                        C26494b c26494b5 = this.f74446g;
                                        if (c26494b5 != null && !c26494b5.equals(c26494b2) && (i2 = this.f74446g.f74280d) > m1651r.f74280d) {
                                            c26494b = C26494b.m1745b(0, 0, 0, i2);
                                        }
                                        c26494b = c26494b2;
                                    }
                                }
                            } else if (i4 == 16) {
                                c26494b = m1642i();
                            } else if (i4 == 32) {
                                c26494b = m1644g();
                            } else if (i4 != 64) {
                                if (i4 == 128) {
                                    C26568d0 c26568d02 = this.f74445f;
                                    C26567d m1646e = c26568d02 != null ? c26568d02.f74427a.m1646e() : m1646e();
                                    if (m1646e != null) {
                                        int i9 = Build.VERSION.SDK_INT;
                                        int safeInsetLeft = i9 >= 28 ? ((DisplayCutout) m1646e.f74425a).getSafeInsetLeft() : 0;
                                        int safeInsetTop = i9 >= 28 ? ((DisplayCutout) m1646e.f74425a).getSafeInsetTop() : 0;
                                        int safeInsetRight = i9 >= 28 ? ((DisplayCutout) m1646e.f74425a).getSafeInsetRight() : 0;
                                        if (i9 >= 28) {
                                            i5 = ((DisplayCutout) m1646e.f74425a).getSafeInsetBottom();
                                        }
                                        c26494b = C26494b.m1745b(safeInsetLeft, safeInsetTop, safeInsetRight, i5);
                                    }
                                }
                                c26494b = c26494b2;
                            } else {
                                c26494b = m1640k();
                            }
                        } else {
                            c26494b = C26494b.m1745b(0, mo1641j().f74278b, 0, 0);
                        }
                        c26494b3 = C26494b.m1746a(c26494b3, c26494b);
                    }
                    i3 = i4 << 1;
                } else {
                    return c26494b3;
                }
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: j */
        public final C26494b mo1641j() {
            if (this.f74444e == null) {
                this.f74444e = C26494b.m1745b(this.f74442c.getSystemWindowInsetLeft(), this.f74442c.getSystemWindowInsetTop(), this.f74442c.getSystemWindowInsetRight(), this.f74442c.getSystemWindowInsetBottom());
            }
            return this.f74444e;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: l */
        public C26568d0 mo1639l(int i, int i2, int i3, int i4) {
            C26568d0 m1656k = C26568d0.m1656k(this.f74442c);
            int i5 = Build.VERSION.SDK_INT;
            C26570b cVar = i5 >= 30 ? new c(m1656k) : i5 >= 29 ? new C26570b(m1656k) : new C26569a(m1656k);
            cVar.mo1652c(C26568d0.m1660g(mo1641j(), i, i2, i3, i4));
            cVar.mo1653b(C26568d0.m1660g(m1643h(), i, i2, i3, i4));
            return cVar.mo1654a();
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: n */
        public boolean mo1637n() {
            return this.f74442c.isRound();
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: o */
        public void mo1636o(C26494b[] c26494bArr) {
            this.f74443d = c26494bArr;
        }

        @Override // p1727n3.p1807k.p1821i.C26568d0.C26573j
        /* renamed from: p */
        public void mo1635p(C26568d0 c26568d0) {
            this.f74445f = c26568d0;
        }

        /* renamed from: r */
        public final C26494b m1651r() {
            C26568d0 c26568d0 = this.f74445f;
            return c26568d0 != null ? c26568d0.f74427a.m1643h() : C26494b.f74276e;
        }
    }

    /* renamed from: n3.k.i.d0$j */
    /* loaded from: classes-dex2jar.jar:n3/k/i/d0$j.class */
    public static class C26573j {

        /* renamed from: b */
        public static final C26568d0 f74447b;

        /* renamed from: a */
        public final C26568d0 f74448a;

        static {
            int i = Build.VERSION.SDK_INT;
            f74447b = (i >= 30 ? new c() : i >= 29 ? new C26570b() : new C26569a()).mo1654a().f74427a.m1650a().f74427a.m1649b().m1666a();
        }

        public C26573j(C26568d0 c26568d0) {
            this.f74448a = c26568d0;
        }

        /* renamed from: a */
        public C26568d0 m1650a() {
            return this.f74448a;
        }

        /* renamed from: b */
        public C26568d0 m1649b() {
            return this.f74448a;
        }

        /* renamed from: c */
        public C26568d0 m1648c() {
            return this.f74448a;
        }

        /* renamed from: d */
        public void mo1647d(View view) {
        }

        /* renamed from: e */
        public C26567d m1646e() {
            return null;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C26573j)) {
                return false;
            }
            C26573j c26573j = (C26573j) obj;
            if (mo1637n() != c26573j.mo1637n() || m1638m() != c26573j.m1638m() || !Objects.equals(mo1641j(), c26573j.mo1641j()) || !Objects.equals(m1643h(), c26573j.m1643h()) || !Objects.equals(m1646e(), c26573j.m1646e())) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public C26494b mo1645f(int i) {
            return C26494b.f74276e;
        }

        /* renamed from: g */
        public C26494b m1644g() {
            return mo1641j();
        }

        /* renamed from: h */
        public C26494b m1643h() {
            return C26494b.f74276e;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(mo1637n()), Boolean.valueOf(m1638m()), mo1641j(), m1643h(), m1646e());
        }

        /* renamed from: i */
        public C26494b m1642i() {
            return mo1641j();
        }

        /* renamed from: j */
        public C26494b mo1641j() {
            return C26494b.f74276e;
        }

        /* renamed from: k */
        public C26494b m1640k() {
            return mo1641j();
        }

        /* renamed from: l */
        public C26568d0 mo1639l(int i, int i2, int i3, int i4) {
            return f74447b;
        }

        /* renamed from: m */
        public boolean m1638m() {
            return false;
        }

        /* renamed from: n */
        public boolean mo1637n() {
            return false;
        }

        /* renamed from: o */
        public void mo1636o(C26494b[] c26494bArr) {
        }

        /* renamed from: p */
        public void mo1635p(C26568d0 c26568d0) {
        }

        /* renamed from: q */
        public void m1634q(C26494b c26494b) {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f74426b = i.r;
        } else {
            f74426b = C26573j.f74447b;
        }
    }

    public C26568d0(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f74427a = new i(this, windowInsets);
        } else if (i >= 29) {
            this.f74427a = new h(this, windowInsets);
        } else if (i >= 28) {
            this.f74427a = new g(this, windowInsets);
        } else {
            this.f74427a = new f(this, windowInsets);
        }
    }

    public C26568d0(C26568d0 c26568d0) {
        this.f74427a = new C26573j(this);
    }

    /* renamed from: g */
    public static C26494b m1660g(C26494b c26494b, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c26494b.f74277a - i);
        int max2 = Math.max(0, c26494b.f74278b - i2);
        int max3 = Math.max(0, c26494b.f74279c - i3);
        int max4 = Math.max(0, c26494b.f74280d - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c26494b : C26494b.m1745b(max, max2, max3, max4);
    }

    /* renamed from: k */
    public static C26568d0 m1656k(WindowInsets windowInsets) {
        return m1655l(windowInsets, null);
    }

    /* renamed from: l */
    public static C26568d0 m1655l(WindowInsets windowInsets, View view) {
        Objects.requireNonNull(windowInsets);
        C26568d0 c26568d0 = new C26568d0(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            c26568d0.f74427a.mo1635p(C26614s.m1572i(view));
            c26568d0.f74427a.mo1647d(view.getRootView());
        }
        return c26568d0;
    }

    @Deprecated
    /* renamed from: a */
    public C26568d0 m1666a() {
        return this.f74427a.m1648c();
    }

    /* renamed from: b */
    public C26494b m1665b(int i) {
        return this.f74427a.mo1645f(i);
    }

    @Deprecated
    /* renamed from: c */
    public int m1664c() {
        return this.f74427a.mo1641j().f74280d;
    }

    @Deprecated
    /* renamed from: d */
    public int m1663d() {
        return this.f74427a.mo1641j().f74277a;
    }

    @Deprecated
    /* renamed from: e */
    public int m1662e() {
        return this.f74427a.mo1641j().f74279c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C26568d0) {
            return Objects.equals(this.f74427a, ((C26568d0) obj).f74427a);
        }
        return false;
    }

    @Deprecated
    /* renamed from: f */
    public int m1661f() {
        return this.f74427a.mo1641j().f74278b;
    }

    /* renamed from: h */
    public boolean m1659h() {
        return this.f74427a.m1638m();
    }

    public int hashCode() {
        C26573j c26573j = this.f74427a;
        return c26573j == null ? 0 : c26573j.hashCode();
    }

    @Deprecated
    /* renamed from: i */
    public C26568d0 m1658i(int i, int i2, int i3, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        C26570b cVar = i5 >= 30 ? new c(this) : i5 >= 29 ? new C26570b(this) : new C26569a(this);
        cVar.mo1652c(C26494b.m1745b(i, i2, i3, i4));
        return cVar.mo1654a();
    }

    /* renamed from: j */
    public WindowInsets m1657j() {
        C26573j c26573j = this.f74427a;
        return c26573j instanceof C26572e ? ((C26572e) c26573j).f74442c : null;
    }
}
