package android.support.v4.widget;

import android.content.Context;
import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import android.widget.Scroller;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    Object f305a;

    /* renamed from: b  reason: collision with root package name */
    a f306b;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/g$a.class */
    interface a {
        Object a(Context context, Interpolator interpolator);

        void a(Object obj, int i, int i2, int i3);

        void a(Object obj, int i, int i2, int i3, int i4, int i5);

        boolean a(Object obj);

        int b(Object obj);

        void b(Object obj, int i, int i2, int i3, int i4, int i5);

        boolean b(Object obj, int i, int i2, int i3);

        int c(Object obj);

        float d(Object obj);

        boolean e(Object obj);

        void f(Object obj);

        int g(Object obj);

        int h(Object obj);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/g$b.class */
    static final class b implements a {
        b() {
        }

        @Override // android.support.v4.widget.g.a
        public final Object a(Context context, Interpolator interpolator) {
            return interpolator != null ? new Scroller(context, interpolator) : new Scroller(context);
        }

        @Override // android.support.v4.widget.g.a
        public final void a(Object obj, int i, int i2, int i3) {
            ((Scroller) obj).startScroll(i, i2, 0, i3);
        }

        @Override // android.support.v4.widget.g.a
        public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((Scroller) obj).startScroll(i, i2, i3, i4, i5);
        }

        @Override // android.support.v4.widget.g.a
        public final boolean a(Object obj) {
            return ((Scroller) obj).isFinished();
        }

        @Override // android.support.v4.widget.g.a
        public final int b(Object obj) {
            return ((Scroller) obj).getCurrX();
        }

        @Override // android.support.v4.widget.g.a
        public final void b(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((Scroller) obj).fling(i, i2, 0, i3, 0, 0, 0, i4);
        }

        @Override // android.support.v4.widget.g.a
        public final boolean b(Object obj, int i, int i2, int i3) {
            return false;
        }

        @Override // android.support.v4.widget.g.a
        public final int c(Object obj) {
            return ((Scroller) obj).getCurrY();
        }

        @Override // android.support.v4.widget.g.a
        public final float d(Object obj) {
            return 0.0f;
        }

        @Override // android.support.v4.widget.g.a
        public final boolean e(Object obj) {
            return ((Scroller) obj).computeScrollOffset();
        }

        @Override // android.support.v4.widget.g.a
        public final void f(Object obj) {
            ((Scroller) obj).abortAnimation();
        }

        @Override // android.support.v4.widget.g.a
        public final int g(Object obj) {
            return ((Scroller) obj).getFinalX();
        }

        @Override // android.support.v4.widget.g.a
        public final int h(Object obj) {
            return ((Scroller) obj).getFinalY();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/g$c.class */
    static class c implements a {
        c() {
        }

        @Override // android.support.v4.widget.g.a
        public final Object a(Context context, Interpolator interpolator) {
            return interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
        }

        @Override // android.support.v4.widget.g.a
        public final void a(Object obj, int i, int i2, int i3) {
            ((OverScroller) obj).startScroll(i, i2, 0, i3);
        }

        @Override // android.support.v4.widget.g.a
        public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((OverScroller) obj).startScroll(i, i2, i3, i4, i5);
        }

        @Override // android.support.v4.widget.g.a
        public final boolean a(Object obj) {
            return ((OverScroller) obj).isFinished();
        }

        @Override // android.support.v4.widget.g.a
        public final int b(Object obj) {
            return ((OverScroller) obj).getCurrX();
        }

        @Override // android.support.v4.widget.g.a
        public final void b(Object obj, int i, int i2, int i3, int i4, int i5) {
            ((OverScroller) obj).fling(i, i2, 0, i3, 0, 0, 0, i4, 0, i5);
        }

        @Override // android.support.v4.widget.g.a
        public final boolean b(Object obj, int i, int i2, int i3) {
            return ((OverScroller) obj).springBack(i, i2, 0, 0, 0, i3);
        }

        @Override // android.support.v4.widget.g.a
        public final int c(Object obj) {
            return ((OverScroller) obj).getCurrY();
        }

        @Override // android.support.v4.widget.g.a
        public float d(Object obj) {
            return 0.0f;
        }

        @Override // android.support.v4.widget.g.a
        public final boolean e(Object obj) {
            return ((OverScroller) obj).computeScrollOffset();
        }

        @Override // android.support.v4.widget.g.a
        public final void f(Object obj) {
            ((OverScroller) obj).abortAnimation();
        }

        @Override // android.support.v4.widget.g.a
        public final int g(Object obj) {
            return ((OverScroller) obj).getFinalX();
        }

        @Override // android.support.v4.widget.g.a
        public final int h(Object obj) {
            return ((OverScroller) obj).getFinalY();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/g$d.class */
    static final class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.g.c, android.support.v4.widget.g.a
        public final float d(Object obj) {
            return ((OverScroller) obj).getCurrVelocity();
        }
    }

    private g(int i, Context context, Interpolator interpolator) {
        if (i >= 14) {
            this.f306b = new d();
        } else if (i >= 9) {
            this.f306b = new c();
        } else {
            this.f306b = new b();
        }
        this.f305a = this.f306b.a(context, interpolator);
    }

    public static g a(Context context, Interpolator interpolator) {
        return new g(Build.VERSION.SDK_INT, context, interpolator);
    }

    public final boolean a() {
        return this.f306b.a(this.f305a);
    }

    public final boolean a(int i, int i2, int i3) {
        return this.f306b.b(this.f305a, i, i2, i3);
    }

    public final int b() {
        return this.f306b.b(this.f305a);
    }

    public final int c() {
        return this.f306b.c(this.f305a);
    }

    public final float d() {
        return this.f306b.d(this.f305a);
    }

    public final boolean e() {
        return this.f306b.e(this.f305a);
    }

    public final void f() {
        this.f306b.f(this.f305a);
    }
}
