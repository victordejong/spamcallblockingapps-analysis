package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import androidx.core.graphics.C0835b;
import androidx.core.p036e.C0827a;
import androidx.core.p036e.C0833d;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;
/* renamed from: androidx.core.view.ac */
/* loaded from: classes-dex2jar.jar:androidx/core/view/ac.class */
public final class C0889ac {

    /* renamed from: a */
    public static final C0889ac f3695a = new C0890a().f3697a.mo44220a().f3696b.mo44210f().f3696b.mo44213d().f3696b.mo44214c();

    /* renamed from: b */
    public final C0894e f3696b;

    /* renamed from: androidx.core.view.ac$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$a.class */
    public static final class C0890a {

        /* renamed from: a */
        public final C0891b f3697a;

        public C0890a() {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3697a = new C0893d();
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.f3697a = new C0892c();
            } else {
                this.f3697a = new C0891b();
            }
        }

        public C0890a(C0889ac c0889ac) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f3697a = new C0893d(c0889ac);
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.f3697a = new C0892c(c0889ac);
            } else {
                this.f3697a = new C0891b(c0889ac);
            }
        }

        /* renamed from: a */
        public final C0890a m44222a(C0835b c0835b) {
            this.f3697a.mo44219a(c0835b);
            return this;
        }
    }

    /* renamed from: androidx.core.view.ac$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$b.class */
    public static class C0891b {

        /* renamed from: a */
        private final C0889ac f3698a;

        C0891b() {
            this(new C0889ac((C0889ac) null));
        }

        C0891b(C0889ac c0889ac) {
            this.f3698a = c0889ac;
        }

        /* renamed from: a */
        public C0889ac mo44220a() {
            return this.f3698a;
        }

        /* renamed from: a */
        void mo44219a(C0835b c0835b) {
        }

        /* renamed from: b */
        void mo44218b(C0835b c0835b) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ac$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$c.class */
    public static final class C0892c extends C0891b {

        /* renamed from: a */
        private static Field f3699a;

        /* renamed from: b */
        private static boolean f3700b = false;

        /* renamed from: c */
        private static Constructor<WindowInsets> f3701c;

        /* renamed from: d */
        private static boolean f3702d = false;

        /* renamed from: e */
        private WindowInsets f3703e;

        C0892c() {
            this.f3703e = m44221b();
        }

        C0892c(C0889ac c0889ac) {
            this.f3703e = c0889ac.m44223e();
        }

        /* renamed from: b */
        private static WindowInsets m44221b() {
            if (!f3700b) {
                try {
                    f3699a = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                }
                f3700b = true;
            }
            Field field = f3699a;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                }
            }
            if (!f3702d) {
                try {
                    f3701c = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                }
                f3702d = true;
            }
            Constructor<WindowInsets> constructor = f3701c;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    return null;
                }
            }
            return null;
        }

        @Override // androidx.core.view.C0889ac.C0891b
        /* renamed from: a */
        public final C0889ac mo44220a() {
            return C0889ac.m44229a(this.f3703e);
        }

        @Override // androidx.core.view.C0889ac.C0891b
        /* renamed from: a */
        final void mo44219a(C0835b c0835b) {
            WindowInsets windowInsets = this.f3703e;
            if (windowInsets != null) {
                this.f3703e = windowInsets.replaceSystemWindowInsets(c0835b.f3563b, c0835b.f3564c, c0835b.f3565d, c0835b.f3566e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ac$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$d.class */
    public static final class C0893d extends C0891b {

        /* renamed from: a */
        final WindowInsets.Builder f3704a;

        C0893d() {
            this.f3704a = new WindowInsets.Builder();
        }

        C0893d(C0889ac c0889ac) {
            WindowInsets m44223e = c0889ac.m44223e();
            this.f3704a = m44223e != null ? new WindowInsets.Builder(m44223e) : new WindowInsets.Builder();
        }

        @Override // androidx.core.view.C0889ac.C0891b
        /* renamed from: a */
        public final C0889ac mo44220a() {
            return C0889ac.m44229a(this.f3704a.build());
        }

        @Override // androidx.core.view.C0889ac.C0891b
        /* renamed from: a */
        final void mo44219a(C0835b c0835b) {
            this.f3704a.setSystemWindowInsets(c0835b.m44394a());
        }

        @Override // androidx.core.view.C0889ac.C0891b
        /* renamed from: b */
        final void mo44218b(C0835b c0835b) {
            this.f3704a.setStableInsets(c0835b.m44394a());
        }
    }

    /* renamed from: androidx.core.view.ac$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$e.class */
    public static class C0894e {

        /* renamed from: a */
        final C0889ac f3705a;

        C0894e(C0889ac c0889ac) {
            this.f3705a = c0889ac;
        }

        /* renamed from: a */
        C0889ac mo44209a(int i, int i2, int i3, int i4) {
            return C0889ac.f3695a;
        }

        /* renamed from: a */
        boolean mo44217a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo44215b() {
            return false;
        }

        /* renamed from: c */
        public C0889ac mo44214c() {
            return this.f3705a;
        }

        /* renamed from: d */
        public C0889ac mo44213d() {
            return this.f3705a;
        }

        /* renamed from: e */
        C0902c mo44211e() {
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0894e)) {
                return false;
            }
            C0894e c0894e = (C0894e) obj;
            return mo44217a() == c0894e.mo44217a() && mo44215b() == c0894e.mo44215b() && C0827a.m44414a(mo44216g(), c0894e.mo44216g()) && C0827a.m44414a(mo44212h(), c0894e.mo44212h()) && C0827a.m44414a(mo44211e(), c0894e.mo44211e());
        }

        /* renamed from: f */
        public C0889ac mo44210f() {
            return this.f3705a;
        }

        /* renamed from: g */
        public C0835b mo44216g() {
            return C0835b.f3562a;
        }

        /* renamed from: h */
        C0835b mo44212h() {
            return C0835b.f3562a;
        }

        public int hashCode() {
            return C0827a.m44413a(Boolean.valueOf(mo44217a()), Boolean.valueOf(mo44215b()), mo44216g(), mo44212h(), mo44211e());
        }

        /* renamed from: i */
        public C0835b mo44208i() {
            return mo44216g();
        }
    }

    /* renamed from: androidx.core.view.ac$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$f.class */
    public static class C0895f extends C0894e {

        /* renamed from: b */
        final WindowInsets f3706b;

        /* renamed from: c */
        private C0835b f3707c;

        C0895f(C0889ac c0889ac, WindowInsets windowInsets) {
            super(c0889ac);
            this.f3707c = null;
            this.f3706b = windowInsets;
        }

        C0895f(C0889ac c0889ac, C0895f c0895f) {
            this(c0889ac, new WindowInsets(c0895f.f3706b));
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: a */
        C0889ac mo44209a(int i, int i2, int i3, int i4) {
            C0890a c0890a = new C0890a(C0889ac.m44229a(this.f3706b));
            c0890a.m44222a(C0889ac.m44228a(mo44216g(), i, i2, i3, i4));
            c0890a.f3697a.mo44218b(C0889ac.m44228a(mo44212h(), i, i2, i3, i4));
            return c0890a.f3697a.mo44220a();
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: a */
        boolean mo44217a() {
            return this.f3706b.isRound();
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: g */
        public final C0835b mo44216g() {
            if (this.f3707c == null) {
                this.f3707c = C0835b.m44393a(this.f3706b.getSystemWindowInsetLeft(), this.f3706b.getSystemWindowInsetTop(), this.f3706b.getSystemWindowInsetRight(), this.f3706b.getSystemWindowInsetBottom());
            }
            return this.f3707c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ac$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$g.class */
    public static class C0896g extends C0895f {

        /* renamed from: c */
        private C0835b f3708c = null;

        C0896g(C0889ac c0889ac, WindowInsets windowInsets) {
            super(c0889ac, windowInsets);
        }

        C0896g(C0889ac c0889ac, C0896g c0896g) {
            super(c0889ac, c0896g);
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: b */
        public boolean mo44215b() {
            return this.f3706b.isConsumed();
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: c */
        public C0889ac mo44214c() {
            return C0889ac.m44229a(this.f3706b.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: d */
        public C0889ac mo44213d() {
            return C0889ac.m44229a(this.f3706b.consumeStableInsets());
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: h */
        final C0835b mo44212h() {
            if (this.f3708c == null) {
                this.f3708c = C0835b.m44393a(this.f3706b.getStableInsetLeft(), this.f3706b.getStableInsetTop(), this.f3706b.getStableInsetRight(), this.f3706b.getStableInsetBottom());
            }
            return this.f3708c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ac$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$h.class */
    public static class C0897h extends C0896g {
        C0897h(C0889ac c0889ac, WindowInsets windowInsets) {
            super(c0889ac, windowInsets);
        }

        C0897h(C0889ac c0889ac, C0897h c0897h) {
            super(c0889ac, c0897h);
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: e */
        C0902c mo44211e() {
            DisplayCutout displayCutout = this.f3706b.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new C0902c(displayCutout);
        }

        @Override // androidx.core.view.C0889ac.C0894e
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0897h) {
                return Objects.equals(this.f3706b, ((C0897h) obj).f3706b);
            }
            return false;
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: f */
        public C0889ac mo44210f() {
            return C0889ac.m44229a(this.f3706b.consumeDisplayCutout());
        }

        @Override // androidx.core.view.C0889ac.C0894e
        public int hashCode() {
            return this.f3706b.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ac$i */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$i.class */
    public static final class C0898i extends C0897h {

        /* renamed from: c */
        private C0835b f3709c = null;

        /* renamed from: d */
        private C0835b f3710d = null;

        /* renamed from: e */
        private C0835b f3711e = null;

        C0898i(C0889ac c0889ac, WindowInsets windowInsets) {
            super(c0889ac, windowInsets);
        }

        C0898i(C0889ac c0889ac, C0898i c0898i) {
            super(c0889ac, c0898i);
        }

        @Override // androidx.core.view.C0889ac.C0895f, androidx.core.view.C0889ac.C0894e
        /* renamed from: a */
        final C0889ac mo44209a(int i, int i2, int i3, int i4) {
            return C0889ac.m44229a(this.f3706b.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.C0889ac.C0894e
        /* renamed from: i */
        public final C0835b mo44208i() {
            if (this.f3710d == null) {
                this.f3710d = C0835b.m44392a(this.f3706b.getMandatorySystemGestureInsets());
            }
            return this.f3710d;
        }
    }

    private C0889ac(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f3696b = new C0898i(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 28) {
            this.f3696b = new C0897h(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f3696b = new C0896g(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f3696b = new C0895f(this, windowInsets);
        } else {
            this.f3696b = new C0894e(this);
        }
    }

    public C0889ac(C0889ac c0889ac) {
        if (c0889ac == null) {
            this.f3696b = new C0894e(this);
            return;
        }
        C0894e c0894e = c0889ac.f3696b;
        if (Build.VERSION.SDK_INT >= 29 && (c0894e instanceof C0898i)) {
            this.f3696b = new C0898i(this, (C0898i) c0894e);
        } else if (Build.VERSION.SDK_INT >= 28 && (c0894e instanceof C0897h)) {
            this.f3696b = new C0897h(this, (C0897h) c0894e);
        } else if (Build.VERSION.SDK_INT >= 21 && (c0894e instanceof C0896g)) {
            this.f3696b = new C0896g(this, (C0896g) c0894e);
        } else if (Build.VERSION.SDK_INT < 20 || !(c0894e instanceof C0895f)) {
            this.f3696b = new C0894e(this);
        } else {
            this.f3696b = new C0895f(this, (C0895f) c0894e);
        }
    }

    /* renamed from: a */
    static C0835b m44228a(C0835b c0835b, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c0835b.f3563b - i);
        int max2 = Math.max(0, c0835b.f3564c - i2);
        int max3 = Math.max(0, c0835b.f3565d - i3);
        int max4 = Math.max(0, c0835b.f3566e - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c0835b : C0835b.m44393a(max, max2, max3, max4);
    }

    /* renamed from: a */
    public static C0889ac m44229a(WindowInsets windowInsets) {
        return new C0889ac((WindowInsets) C0833d.m44410a(windowInsets));
    }

    /* renamed from: a */
    public final int m44231a() {
        return this.f3696b.mo44216g().f3563b;
    }

    @Deprecated
    /* renamed from: a */
    public final C0889ac m44230a(int i, int i2, int i3, int i4) {
        return new C0890a(this).m44222a(C0835b.m44393a(i, i2, i3, i4)).f3697a.mo44220a();
    }

    /* renamed from: b */
    public final int m44227b() {
        return this.f3696b.mo44216g().f3564c;
    }

    /* renamed from: b */
    public final C0889ac m44226b(int i, int i2, int i3, int i4) {
        return this.f3696b.mo44209a(i, i2, i3, i4);
    }

    /* renamed from: c */
    public final int m44225c() {
        return this.f3696b.mo44216g().f3565d;
    }

    /* renamed from: d */
    public final int m44224d() {
        return this.f3696b.mo44216g().f3566e;
    }

    /* renamed from: e */
    public final WindowInsets m44223e() {
        C0894e c0894e = this.f3696b;
        if (c0894e instanceof C0895f) {
            return ((C0895f) c0894e).f3706b;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0889ac) {
            return C0827a.m44414a(this.f3696b, ((C0889ac) obj).f3696b);
        }
        return false;
    }

    public final int hashCode() {
        C0894e c0894e = this.f3696b;
        if (c0894e == null) {
            return 0;
        }
        return c0894e.hashCode();
    }
}
