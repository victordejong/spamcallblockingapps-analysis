package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    public static final ac f1973a = new a().f1975a.a().f1974b.f().f1974b.d().f1974b.c();

    /* renamed from: b  reason: collision with root package name */
    public final e f1974b;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final b f1975a;

        public a() {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1975a = new d();
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.f1975a = new c();
            } else {
                this.f1975a = new b();
            }
        }

        public a(ac acVar) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1975a = new d(acVar);
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.f1975a = new c(acVar);
            } else {
                this.f1975a = new b(acVar);
            }
        }

        public final a a(androidx.core.graphics.b bVar) {
            this.f1975a.a(bVar);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final ac f1976a;

        b() {
            this(new ac((ac) null));
        }

        b(ac acVar) {
            this.f1976a = acVar;
        }

        public ac a() {
            return this.f1976a;
        }

        void a(androidx.core.graphics.b bVar) {
        }

        void b(androidx.core.graphics.b bVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$c.class */
    static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private static Field f1977a;

        /* renamed from: b  reason: collision with root package name */
        private static boolean f1978b = false;

        /* renamed from: c  reason: collision with root package name */
        private static Constructor<WindowInsets> f1979c;

        /* renamed from: d  reason: collision with root package name */
        private static boolean f1980d = false;
        private WindowInsets e;

        c() {
            this.e = b();
        }

        c(ac acVar) {
            this.e = acVar.e();
        }

        private static WindowInsets b() {
            if (!f1978b) {
                try {
                    f1977a = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                }
                f1978b = true;
            }
            Field field = f1977a;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                }
            }
            if (!f1980d) {
                try {
                    f1979c = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                }
                f1980d = true;
            }
            Constructor<WindowInsets> constructor = f1979c;
            if (constructor == null) {
                return null;
            }
            try {
                return constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e4) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.b
        public final ac a() {
            return ac.a(this.e);
        }

        @Override // androidx.core.view.ac.b
        final void a(androidx.core.graphics.b bVar) {
            WindowInsets windowInsets = this.e;
            if (windowInsets != null) {
                this.e = windowInsets.replaceSystemWindowInsets(bVar.f1896b, bVar.f1897c, bVar.f1898d, bVar.e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$d.class */
    static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        final WindowInsets.Builder f1981a;

        d() {
            this.f1981a = new WindowInsets.Builder();
        }

        d(ac acVar) {
            WindowInsets e = acVar.e();
            this.f1981a = e != null ? new WindowInsets.Builder(e) : new WindowInsets.Builder();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.b
        public final ac a() {
            return ac.a(this.f1981a.build());
        }

        @Override // androidx.core.view.ac.b
        final void a(androidx.core.graphics.b bVar) {
            this.f1981a.setSystemWindowInsets(bVar.a());
        }

        @Override // androidx.core.view.ac.b
        final void b(androidx.core.graphics.b bVar) {
            this.f1981a.setStableInsets(bVar.a());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$e.class */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        final ac f1982a;

        e(ac acVar) {
            this.f1982a = acVar;
        }

        ac a(int i, int i2, int i3, int i4) {
            return ac.f1973a;
        }

        boolean a() {
            return false;
        }

        public boolean b() {
            return false;
        }

        public ac c() {
            return this.f1982a;
        }

        public ac d() {
            return this.f1982a;
        }

        androidx.core.view.c e() {
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return a() == eVar.a() && b() == eVar.b() && androidx.core.e.a.a(g(), eVar.g()) && androidx.core.e.a.a(h(), eVar.h()) && androidx.core.e.a.a(e(), eVar.e());
        }

        public ac f() {
            return this.f1982a;
        }

        public androidx.core.graphics.b g() {
            return androidx.core.graphics.b.f1895a;
        }

        androidx.core.graphics.b h() {
            return androidx.core.graphics.b.f1895a;
        }

        public int hashCode() {
            return androidx.core.e.a.a(Boolean.valueOf(a()), Boolean.valueOf(b()), g(), h(), e());
        }

        public androidx.core.graphics.b i() {
            return g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$f.class */
    public static class f extends e {

        /* renamed from: b  reason: collision with root package name */
        final WindowInsets f1983b;

        /* renamed from: c  reason: collision with root package name */
        private androidx.core.graphics.b f1984c;

        f(ac acVar, WindowInsets windowInsets) {
            super(acVar);
            this.f1984c = null;
            this.f1983b = windowInsets;
        }

        f(ac acVar, f fVar) {
            this(acVar, new WindowInsets(fVar.f1983b));
        }

        @Override // androidx.core.view.ac.e
        ac a(int i, int i2, int i3, int i4) {
            a aVar = new a(ac.a(this.f1983b));
            aVar.a(ac.a(g(), i, i2, i3, i4));
            aVar.f1975a.b(ac.a(h(), i, i2, i3, i4));
            return aVar.f1975a.a();
        }

        @Override // androidx.core.view.ac.e
        boolean a() {
            return this.f1983b.isRound();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public final androidx.core.graphics.b g() {
            if (this.f1984c == null) {
                this.f1984c = androidx.core.graphics.b.a(this.f1983b.getSystemWindowInsetLeft(), this.f1983b.getSystemWindowInsetTop(), this.f1983b.getSystemWindowInsetRight(), this.f1983b.getSystemWindowInsetBottom());
            }
            return this.f1984c;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$g.class */
    static class g extends f {

        /* renamed from: c  reason: collision with root package name */
        private androidx.core.graphics.b f1985c = null;

        g(ac acVar, WindowInsets windowInsets) {
            super(acVar, windowInsets);
        }

        g(ac acVar, g gVar) {
            super(acVar, gVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public boolean b() {
            return this.f1983b.isConsumed();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public ac c() {
            return ac.a(this.f1983b.consumeSystemWindowInsets());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public ac d() {
            return ac.a(this.f1983b.consumeStableInsets());
        }

        @Override // androidx.core.view.ac.e
        final androidx.core.graphics.b h() {
            if (this.f1985c == null) {
                this.f1985c = androidx.core.graphics.b.a(this.f1983b.getStableInsetLeft(), this.f1983b.getStableInsetTop(), this.f1983b.getStableInsetRight(), this.f1983b.getStableInsetBottom());
            }
            return this.f1985c;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$h.class */
    static class h extends g {
        h(ac acVar, WindowInsets windowInsets) {
            super(acVar, windowInsets);
        }

        h(ac acVar, h hVar) {
            super(acVar, hVar);
        }

        @Override // androidx.core.view.ac.e
        androidx.core.view.c e() {
            DisplayCutout displayCutout = this.f1983b.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new androidx.core.view.c(displayCutout);
        }

        @Override // androidx.core.view.ac.e
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            return Objects.equals(this.f1983b, ((h) obj).f1983b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public ac f() {
            return ac.a(this.f1983b.consumeDisplayCutout());
        }

        @Override // androidx.core.view.ac.e
        public int hashCode() {
            return this.f1983b.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ac$i.class */
    static final class i extends h {

        /* renamed from: c  reason: collision with root package name */
        private androidx.core.graphics.b f1986c = null;

        /* renamed from: d  reason: collision with root package name */
        private androidx.core.graphics.b f1987d = null;
        private androidx.core.graphics.b e = null;

        i(ac acVar, WindowInsets windowInsets) {
            super(acVar, windowInsets);
        }

        i(ac acVar, i iVar) {
            super(acVar, iVar);
        }

        @Override // androidx.core.view.ac.f, androidx.core.view.ac.e
        final ac a(int i, int i2, int i3, int i4) {
            return ac.a(this.f1983b.inset(i, i2, i3, i4));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.ac.e
        public final androidx.core.graphics.b i() {
            if (this.f1987d == null) {
                this.f1987d = androidx.core.graphics.b.a(this.f1983b.getMandatorySystemGestureInsets());
            }
            return this.f1987d;
        }
    }

    private ac(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1974b = new i(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 28) {
            this.f1974b = new h(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f1974b = new g(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f1974b = new f(this, windowInsets);
        } else {
            this.f1974b = new e(this);
        }
    }

    public ac(ac acVar) {
        if (acVar != null) {
            e eVar = acVar.f1974b;
            if (Build.VERSION.SDK_INT >= 29 && (eVar instanceof i)) {
                this.f1974b = new i(this, (i) eVar);
            } else if (Build.VERSION.SDK_INT >= 28 && (eVar instanceof h)) {
                this.f1974b = new h(this, (h) eVar);
            } else if (Build.VERSION.SDK_INT >= 21 && (eVar instanceof g)) {
                this.f1974b = new g(this, (g) eVar);
            } else if (Build.VERSION.SDK_INT < 20 || !(eVar instanceof f)) {
                this.f1974b = new e(this);
            } else {
                this.f1974b = new f(this, (f) eVar);
            }
        } else {
            this.f1974b = new e(this);
        }
    }

    static androidx.core.graphics.b a(androidx.core.graphics.b bVar, int i2, int i3, int i4, int i5) {
        int max = Math.max(0, bVar.f1896b - i2);
        int max2 = Math.max(0, bVar.f1897c - i3);
        int max3 = Math.max(0, bVar.f1898d - i4);
        int max4 = Math.max(0, bVar.e - i5);
        return (max == i2 && max2 == i3 && max3 == i4 && max4 == i5) ? bVar : androidx.core.graphics.b.a(max, max2, max3, max4);
    }

    public static ac a(WindowInsets windowInsets) {
        return new ac((WindowInsets) androidx.core.e.d.a(windowInsets));
    }

    public final int a() {
        return this.f1974b.g().f1896b;
    }

    @Deprecated
    public final ac a(int i2, int i3, int i4, int i5) {
        return new a(this).a(androidx.core.graphics.b.a(i2, i3, i4, i5)).f1975a.a();
    }

    public final int b() {
        return this.f1974b.g().f1897c;
    }

    public final ac b(int i2, int i3, int i4, int i5) {
        return this.f1974b.a(i2, i3, i4, i5);
    }

    public final int c() {
        return this.f1974b.g().f1898d;
    }

    public final int d() {
        return this.f1974b.g().e;
    }

    public final WindowInsets e() {
        e eVar = this.f1974b;
        if (eVar instanceof f) {
            return ((f) eVar).f1983b;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ac)) {
            return false;
        }
        return androidx.core.e.a.a(this.f1974b, ((ac) obj).f1974b);
    }

    public final int hashCode() {
        e eVar = this.f1974b;
        if (eVar == null) {
            return 0;
        }
        return eVar.hashCode();
    }
}
