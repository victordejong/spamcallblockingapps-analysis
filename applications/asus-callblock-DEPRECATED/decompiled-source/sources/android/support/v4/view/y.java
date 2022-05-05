package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    static final c f247a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$a.class */
    static class a extends f {
        a() {
        }

        @Override // android.support.v4.view.y.f, android.support.v4.view.y.c
        public final void a(ViewGroup viewGroup) {
            viewGroup.setMotionEventSplittingEnabled(false);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$b.class */
    static class b extends a {
        b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$c.class */
    interface c {
        void a(ViewGroup viewGroup);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$d.class */
    static class d extends b {
        d() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$e.class */
    static final class e extends d {
        e() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/y$f.class */
    static class f implements c {
        f() {
        }

        @Override // android.support.v4.view.y.c
        public void a(ViewGroup viewGroup) {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f247a = new e();
        } else if (i >= 18) {
            f247a = new d();
        } else if (i >= 14) {
            f247a = new b();
        } else if (i >= 11) {
            f247a = new a();
        } else {
            f247a = new f();
        }
    }

    public static void a(ViewGroup viewGroup) {
        f247a.a(viewGroup);
    }
}
