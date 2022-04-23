package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static final c f294b;

    /* renamed from: a  reason: collision with root package name */
    private Object f295a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/d$a.class */
    static final class a implements c {
        a() {
        }

        @Override // android.support.v4.widget.d.c
        public final Object a(Context context) {
            return null;
        }

        @Override // android.support.v4.widget.d.c
        public final void a(Object obj, int i, int i2) {
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj) {
            return true;
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, float f) {
            return false;
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, float f, float f2) {
            return false;
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, int i) {
            return false;
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, Canvas canvas) {
            return false;
        }

        @Override // android.support.v4.widget.d.c
        public final void b(Object obj) {
        }

        @Override // android.support.v4.widget.d.c
        public final boolean c(Object obj) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/d$b.class */
    static class b implements c {
        b() {
        }

        @Override // android.support.v4.widget.d.c
        public final Object a(Context context) {
            return new EdgeEffect(context);
        }

        @Override // android.support.v4.widget.d.c
        public final void a(Object obj, int i, int i2) {
            ((EdgeEffect) obj).setSize(i, i2);
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj) {
            return ((EdgeEffect) obj).isFinished();
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, float f) {
            return e.a(obj, f);
        }

        @Override // android.support.v4.widget.d.c
        public boolean a(Object obj, float f, float f2) {
            return e.a(obj, f);
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, int i) {
            ((EdgeEffect) obj).onAbsorb(i);
            return true;
        }

        @Override // android.support.v4.widget.d.c
        public final boolean a(Object obj, Canvas canvas) {
            return ((EdgeEffect) obj).draw(canvas);
        }

        @Override // android.support.v4.widget.d.c
        public final void b(Object obj) {
            ((EdgeEffect) obj).finish();
        }

        @Override // android.support.v4.widget.d.c
        public final boolean c(Object obj) {
            EdgeEffect edgeEffect = (EdgeEffect) obj;
            edgeEffect.onRelease();
            return edgeEffect.isFinished();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/d$c.class */
    interface c {
        Object a(Context context);

        void a(Object obj, int i, int i2);

        boolean a(Object obj);

        boolean a(Object obj, float f);

        boolean a(Object obj, float f, float f2);

        boolean a(Object obj, int i);

        boolean a(Object obj, Canvas canvas);

        void b(Object obj);

        boolean c(Object obj);
    }

    /* renamed from: android.support.v4.widget.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/d$d.class */
    static final class C0016d extends b {
        C0016d() {
        }

        @Override // android.support.v4.widget.d.b, android.support.v4.widget.d.c
        public final boolean a(Object obj, float f, float f2) {
            ((EdgeEffect) obj).onPull(f, f2);
            return true;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f294b = new C0016d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f294b = new b();
        } else {
            f294b = new a();
        }
    }

    public d(Context context) {
        this.f295a = f294b.a(context);
    }

    public final void a(int i, int i2) {
        f294b.a(this.f295a, i, i2);
    }

    public final boolean a() {
        return f294b.a(this.f295a);
    }

    public final boolean a(float f) {
        return f294b.a(this.f295a, f);
    }

    public final boolean a(float f, float f2) {
        return f294b.a(this.f295a, f, f2);
    }

    public final boolean a(int i) {
        return f294b.a(this.f295a, i);
    }

    public final boolean a(Canvas canvas) {
        return f294b.a(this.f295a, canvas);
    }

    public final void b() {
        f294b.b(this.f295a);
    }

    public final boolean c() {
        return f294b.c(this.f295a);
    }
}
