package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final e f205a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f206b;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f207a = new a(1);

        /* renamed from: b  reason: collision with root package name */
        public static final a f208b = new a(2);
        public static final a c = new a(4);
        public static final a d = new a(8);
        public static final a e = new a(16);
        public static final a f = new a(32);
        public static final a g = new a(64);
        public static final a h = new a(128);
        public static final a i = new a(256);
        public static final a j = new a(512);
        public static final a k = new a(1024);
        public static final a l = new a(2048);
        public static final a m = new a(4096);
        public static final a n = new a(8192);
        public static final a o = new a(16384);
        public static final a p = new a(32768);
        public static final a q = new a(65536);
        public static final a r = new a(131072);
        public static final a s = new a(262144);
        public static final a t = new a(524288);
        public static final a u = new a(1048576);
        public static final a v = new a(2097152);
        private final Object w;

        private a(int i2) {
            this(b.f205a.a(i2));
        }

        private a(Object obj) {
            this.w = obj;
        }
    }

    /* renamed from: android.support.v4.view.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$b.class */
    static class C0013b extends i {
        C0013b() {
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final Object a(int i) {
            return new AccessibilityNodeInfo.AccessibilityAction(i, null);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean a(Object obj, Object obj2) {
            return ((AccessibilityNodeInfo) obj).removeAction((AccessibilityNodeInfo.AccessibilityAction) obj2);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$c.class */
    static final class c extends C0013b {
        c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$d.class */
    static class d extends j {
        d() {
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final Object a(Object obj) {
            return AccessibilityNodeInfo.obtain((AccessibilityNodeInfo) obj);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void a(Object obj, int i) {
            ((AccessibilityNodeInfo) obj).addAction(i);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void a(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).getBoundsInParent(rect);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void a(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).addChild(view);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void a(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setClassName(charSequence);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void a(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setClickable(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final int b(Object obj) {
            return ((AccessibilityNodeInfo) obj).getActions();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void b(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).getBoundsInScreen(rect);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void b(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).setParent(view);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void b(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setContentDescription(charSequence);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void b(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setEnabled(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final CharSequence c(Object obj) {
            return ((AccessibilityNodeInfo) obj).getClassName();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void c(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).setBoundsInParent(rect);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void c(Object obj, View view) {
            ((AccessibilityNodeInfo) obj).setSource(view);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void c(Object obj, CharSequence charSequence) {
            ((AccessibilityNodeInfo) obj).setPackageName(charSequence);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void c(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setFocusable(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final CharSequence d(Object obj) {
            return ((AccessibilityNodeInfo) obj).getContentDescription();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void d(Object obj, Rect rect) {
            ((AccessibilityNodeInfo) obj).setBoundsInScreen(rect);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void d(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setFocused(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final CharSequence e(Object obj) {
            return ((AccessibilityNodeInfo) obj).getPackageName();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void e(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setLongClickable(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final CharSequence f(Object obj) {
            return ((AccessibilityNodeInfo) obj).getText();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void f(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setScrollable(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void g(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setSelected(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean g(Object obj) {
            return ((AccessibilityNodeInfo) obj).isCheckable();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean h(Object obj) {
            return ((AccessibilityNodeInfo) obj).isChecked();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean i(Object obj) {
            return ((AccessibilityNodeInfo) obj).isClickable();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean j(Object obj) {
            return ((AccessibilityNodeInfo) obj).isEnabled();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean k(Object obj) {
            return ((AccessibilityNodeInfo) obj).isFocusable();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean l(Object obj) {
            return ((AccessibilityNodeInfo) obj).isFocused();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean m(Object obj) {
            return ((AccessibilityNodeInfo) obj).isLongClickable();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean n(Object obj) {
            return ((AccessibilityNodeInfo) obj).isPassword();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean o(Object obj) {
            return ((AccessibilityNodeInfo) obj).isScrollable();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean p(Object obj) {
            return ((AccessibilityNodeInfo) obj).isSelected();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void q(Object obj) {
            ((AccessibilityNodeInfo) obj).recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$e.class */
    public interface e {
        Object a(int i);

        Object a(Object obj);

        void a(Object obj, int i);

        void a(Object obj, Rect rect);

        void a(Object obj, View view);

        void a(Object obj, CharSequence charSequence);

        void a(Object obj, boolean z);

        boolean a(Object obj, Object obj2);

        int b(Object obj);

        void b(Object obj, int i);

        void b(Object obj, Rect rect);

        void b(Object obj, View view);

        void b(Object obj, CharSequence charSequence);

        void b(Object obj, boolean z);

        CharSequence c(Object obj);

        void c(Object obj, Rect rect);

        void c(Object obj, View view);

        void c(Object obj, CharSequence charSequence);

        void c(Object obj, boolean z);

        CharSequence d(Object obj);

        void d(Object obj, Rect rect);

        void d(Object obj, boolean z);

        CharSequence e(Object obj);

        void e(Object obj, boolean z);

        CharSequence f(Object obj);

        void f(Object obj, boolean z);

        void g(Object obj, boolean z);

        boolean g(Object obj);

        void h(Object obj, boolean z);

        boolean h(Object obj);

        void i(Object obj, boolean z);

        boolean i(Object obj);

        boolean j(Object obj);

        boolean k(Object obj);

        boolean l(Object obj);

        boolean m(Object obj);

        boolean n(Object obj);

        boolean o(Object obj);

        boolean p(Object obj);

        void q(Object obj);

        int r(Object obj);

        boolean s(Object obj);

        boolean t(Object obj);

        String u(Object obj);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$f.class */
    static class f extends d {
        f() {
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void b(Object obj, int i) {
            ((AccessibilityNodeInfo) obj).setMovementGranularities(i);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void h(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setVisibleToUser(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final void i(Object obj, boolean z) {
            ((AccessibilityNodeInfo) obj).setAccessibilityFocused(z);
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final int r(Object obj) {
            return ((AccessibilityNodeInfo) obj).getMovementGranularities();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean s(Object obj) {
            return ((AccessibilityNodeInfo) obj).isVisibleToUser();
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final boolean t(Object obj) {
            return ((AccessibilityNodeInfo) obj).isAccessibilityFocused();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$g.class */
    static class g extends f {
        g() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$h.class */
    static class h extends g {
        h() {
        }

        @Override // android.support.v4.view.a.b.j, android.support.v4.view.a.b.e
        public final String u(Object obj) {
            return ((AccessibilityNodeInfo) obj).getViewIdResourceName();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$i.class */
    static class i extends h {
        i() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/a/b$j.class */
    static class j implements e {
        j() {
        }

        @Override // android.support.v4.view.a.b.e
        public Object a(int i) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public Object a(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public void a(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.b.e
        public void a(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.b.e
        public void a(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.b.e
        public void a(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.b.e
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public int b(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.a.b.e
        public void b(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.b.e
        public void b(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.b.e
        public void b(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.b.e
        public void b(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.b.e
        public void b(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public CharSequence c(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public void c(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.b.e
        public void c(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.b.e
        public void c(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.b.e
        public void c(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public CharSequence d(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public void d(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.b.e
        public void d(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public CharSequence e(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public void e(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public CharSequence f(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.b.e
        public void f(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public void g(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public boolean g(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public void h(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public boolean h(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public void i(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.b.e
        public boolean i(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean j(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean k(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean l(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean m(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean n(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean o(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean p(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public void q(Object obj) {
        }

        @Override // android.support.v4.view.a.b.e
        public int r(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean s(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public boolean t(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.b.e
        public String u(Object obj) {
            return null;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            f205a = new c();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f205a = new C0013b();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f205a = new i();
        } else if (Build.VERSION.SDK_INT >= 18) {
            f205a = new h();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f205a = new g();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f205a = new f();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f205a = new d();
        } else {
            f205a = new j();
        }
    }

    public b(Object obj) {
        this.f206b = obj;
    }

    public static b a(b bVar) {
        Object a2 = f205a.a(bVar.f206b);
        return a2 != null ? new b(a2) : null;
    }

    public final int a() {
        return f205a.b(this.f206b);
    }

    public final void a(int i2) {
        f205a.a(this.f206b, i2);
    }

    public final void a(Rect rect) {
        f205a.a(this.f206b, rect);
    }

    public final void a(View view) {
        f205a.c(this.f206b, view);
    }

    public final void a(CharSequence charSequence) {
        f205a.c(this.f206b, charSequence);
    }

    public final void a(boolean z) {
        f205a.c(this.f206b, z);
    }

    public final boolean a(a aVar) {
        return f205a.a(this.f206b, aVar.w);
    }

    public final void b(Rect rect) {
        f205a.c(this.f206b, rect);
    }

    public final void b(View view) {
        f205a.a(this.f206b, view);
    }

    public final void b(CharSequence charSequence) {
        f205a.a(this.f206b, charSequence);
    }

    public final void b(boolean z) {
        f205a.d(this.f206b, z);
    }

    public final boolean b() {
        return f205a.k(this.f206b);
    }

    public final void c(Rect rect) {
        f205a.b(this.f206b, rect);
    }

    public final void c(View view) {
        f205a.b(this.f206b, view);
    }

    public final void c(CharSequence charSequence) {
        f205a.b(this.f206b, charSequence);
    }

    public final void c(boolean z) {
        f205a.h(this.f206b, z);
    }

    public final boolean c() {
        return f205a.l(this.f206b);
    }

    public final void d(Rect rect) {
        f205a.d(this.f206b, rect);
    }

    public final void d(boolean z) {
        f205a.i(this.f206b, z);
    }

    public final boolean d() {
        return f205a.s(this.f206b);
    }

    public final void e(boolean z) {
        f205a.g(this.f206b, z);
    }

    public final boolean e() {
        return f205a.t(this.f206b);
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null) {
                z = false;
            } else if (getClass() != obj.getClass()) {
                z = false;
            } else {
                b bVar = (b) obj;
                if (this.f206b == null) {
                    if (bVar.f206b != null) {
                        z = false;
                    }
                } else if (!this.f206b.equals(bVar.f206b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final void f(boolean z) {
        f205a.a(this.f206b, z);
    }

    public final boolean f() {
        return f205a.p(this.f206b);
    }

    public final void g(boolean z) {
        f205a.e(this.f206b, z);
    }

    public final boolean g() {
        return f205a.i(this.f206b);
    }

    public final void h(boolean z) {
        f205a.b(this.f206b, z);
    }

    public final boolean h() {
        return f205a.m(this.f206b);
    }

    public final int hashCode() {
        return this.f206b == null ? 0 : this.f206b.hashCode();
    }

    public final void i(boolean z) {
        f205a.f(this.f206b, z);
    }

    public final boolean i() {
        return f205a.j(this.f206b);
    }

    public final CharSequence j() {
        return f205a.e(this.f206b);
    }

    public final CharSequence k() {
        return f205a.c(this.f206b);
    }

    public final CharSequence l() {
        return f205a.d(this.f206b);
    }

    public final void m() {
        f205a.q(this.f206b);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(j());
        sb.append("; className: ").append(k());
        sb.append("; text: ").append(f205a.f(this.f206b));
        sb.append("; contentDescription: ").append(l());
        sb.append("; viewId: ").append(f205a.u(this.f206b));
        sb.append("; checkable: ").append(f205a.g(this.f206b));
        sb.append("; checked: ").append(f205a.h(this.f206b));
        sb.append("; focusable: ").append(b());
        sb.append("; focused: ").append(c());
        sb.append("; selected: ").append(f());
        sb.append("; clickable: ").append(g());
        sb.append("; longClickable: ").append(h());
        sb.append("; enabled: ").append(i());
        sb.append("; password: ").append(f205a.n(this.f206b));
        sb.append("; scrollable: " + f205a.o(this.f206b));
        sb.append("; [");
        int a2 = a();
        while (a2 != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(a2);
            a2 = (numberOfTrailingZeros ^ (-1)) & a2;
            switch (numberOfTrailingZeros) {
                case 1:
                    str = "ACTION_FOCUS";
                    break;
                case 2:
                    str = "ACTION_CLEAR_FOCUS";
                    break;
                case 4:
                    str = "ACTION_SELECT";
                    break;
                case 8:
                    str = "ACTION_CLEAR_SELECTION";
                    break;
                case 16:
                    str = "ACTION_CLICK";
                    break;
                case 32:
                    str = "ACTION_LONG_CLICK";
                    break;
                case 64:
                    str = "ACTION_ACCESSIBILITY_FOCUS";
                    break;
                case 128:
                    str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    break;
                case 256:
                    str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    break;
                case 512:
                    str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    break;
                case 1024:
                    str = "ACTION_NEXT_HTML_ELEMENT";
                    break;
                case 2048:
                    str = "ACTION_PREVIOUS_HTML_ELEMENT";
                    break;
                case 4096:
                    str = "ACTION_SCROLL_FORWARD";
                    break;
                case 8192:
                    str = "ACTION_SCROLL_BACKWARD";
                    break;
                case 16384:
                    str = "ACTION_COPY";
                    break;
                case 32768:
                    str = "ACTION_PASTE";
                    break;
                case 65536:
                    str = "ACTION_CUT";
                    break;
                case 131072:
                    str = "ACTION_SET_SELECTION";
                    break;
                default:
                    str = "ACTION_UNKNOWN";
                    break;
            }
            sb.append(str);
            if (a2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
