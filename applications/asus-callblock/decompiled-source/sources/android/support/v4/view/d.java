package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final a f227a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/d$a.class */
    interface a {
        int a(int i, int i2);

        void a(int i, int i2, int i3, Rect rect, Rect rect2);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/d$b.class */
    static final class b implements a {
        b() {
        }

        @Override // android.support.v4.view.d.a
        public final int a(int i, int i2) {
            return (-8388609) & i;
        }

        @Override // android.support.v4.view.d.a
        public final void a(int i, int i2, int i3, Rect rect, Rect rect2) {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/d$c.class */
    static final class c implements a {
        c() {
        }

        @Override // android.support.v4.view.d.a
        public final int a(int i, int i2) {
            return Gravity.getAbsoluteGravity(i, i2);
        }

        @Override // android.support.v4.view.d.a
        public final void a(int i, int i2, int i3, Rect rect, Rect rect2) {
            Gravity.apply(i, i2, i3, rect, rect2, 0);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f227a = new c();
        } else {
            f227a = new b();
        }
    }

    public static int a(int i, int i2) {
        return f227a.a(i, i2);
    }

    public static void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        f227a.a(i, i2, i3, rect, rect2);
    }
}
