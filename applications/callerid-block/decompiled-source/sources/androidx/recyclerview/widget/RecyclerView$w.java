package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
public abstract class RecyclerView$w {

    /* renamed from: b */
    private RecyclerView f2261b;

    /* renamed from: c */
    private RecyclerView$n f2262c;

    /* renamed from: d */
    private boolean f2263d;

    /* renamed from: e */
    private boolean f2264e;

    /* renamed from: f */
    private View f2265f;

    /* renamed from: h */
    private boolean f2267h;

    /* renamed from: a */
    private int f2260a = -1;

    /* renamed from: g */
    private final C0417a f2266g = new C0417a(0, 0);

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w$a.class */
    public static class C0417a {

        /* renamed from: a */
        private int f2268a;

        /* renamed from: b */
        private int f2269b;

        /* renamed from: c */
        private int f2270c;

        /* renamed from: d */
        private int f2271d;

        /* renamed from: e */
        private Interpolator f2272e;

        /* renamed from: f */
        private boolean f2273f;

        /* renamed from: g */
        private int f2274g;

        public C0417a(int i, int i2) {
            this(i, i2, Integer.MIN_VALUE, null);
        }

        public C0417a(int i, int i2, int i3, Interpolator interpolator) {
            this.f2271d = -1;
            this.f2273f = false;
            this.f2274g = 0;
            this.f2268a = i;
            this.f2269b = i2;
            this.f2270c = i3;
            this.f2272e = interpolator;
        }

        /* renamed from: e */
        private void m12514e() {
            if (this.f2272e != null && this.f2270c < 1) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            } else if (this.f2270c < 1) {
                throw new IllegalStateException("Scroll duration must be a positive number");
            }
        }

        /* renamed from: a */
        boolean m12518a() {
            return this.f2271d >= 0;
        }

        /* renamed from: b */
        public void m12517b(int i) {
            this.f2271d = i;
        }

        /* renamed from: c */
        void m12516c(RecyclerView recyclerView) {
            int i = this.f2271d;
            if (i >= 0) {
                this.f2271d = -1;
                recyclerView.w0(i);
                this.f2273f = false;
            } else if (this.f2273f) {
                m12514e();
                recyclerView.f0.m12500e(this.f2268a, this.f2269b, this.f2270c, this.f2272e);
                int i2 = this.f2274g + 1;
                this.f2274g = i2;
                if (i2 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f2273f = false;
            } else {
                this.f2274g = 0;
            }
        }

        /* renamed from: d */
        public void m12515d(int i, int i2, int i3, Interpolator interpolator) {
            this.f2268a = i;
            this.f2269b = i2;
            this.f2270c = i3;
            this.f2272e = interpolator;
            this.f2273f = true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w$b.class */
    public interface AbstractC0418b {
        /* renamed from: a */
        PointF m12513a(int i);
    }

    /* renamed from: a */
    public PointF m12536a(int i) {
        RecyclerView$n e = m12532e();
        if (e instanceof AbstractC0418b) {
            return ((AbstractC0418b) e).m12513a(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC0418b.class.getCanonicalName());
        return null;
    }

    /* renamed from: b */
    public View m12535b(int i) {
        return this.f2261b.m.m12732C(i);
    }

    /* renamed from: c */
    public int m12534c() {
        return this.f2261b.m.m12711J();
    }

    /* renamed from: d */
    public int m12533d(View view) {
        return this.f2261b.e0(view);
    }

    /* renamed from: e */
    public RecyclerView$n m12532e() {
        return this.f2262c;
    }

    /* renamed from: f */
    public int m12531f() {
        return this.f2260a;
    }

    /* renamed from: g */
    public boolean m12530g() {
        return this.f2263d;
    }

    /* renamed from: h */
    public boolean m12529h() {
        return this.f2264e;
    }

    /* renamed from: i */
    protected void m12528i(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        pointF.x /= sqrt;
        pointF.y /= sqrt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m12527j(int i, int i2) {
        PointF a;
        RecyclerView recyclerView = this.f2261b;
        if (this.f2260a == -1 || recyclerView == null) {
            m12519r();
        }
        if (this.f2263d && this.f2265f == null && this.f2262c != null && (a = m12536a(this.f2260a)) != null) {
            float f = a.x;
            if (!(f == 0.0f && a.y == 0.0f)) {
                recyclerView.h1((int) Math.signum(f), (int) Math.signum(a.y), (int[]) null);
            }
        }
        this.f2263d = false;
        View view = this.f2265f;
        if (view != null) {
            if (m12533d(view) == this.f2260a) {
                m12522o(this.f2265f, recyclerView.i0, this.f2266g);
                this.f2266g.m12516c(recyclerView);
                m12519r();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f2265f = null;
            }
        }
        if (this.f2264e) {
            m12525l(i, i2, recyclerView.i0, this.f2266g);
            boolean a2 = this.f2266g.m12518a();
            this.f2266g.m12516c(recyclerView);
            if (a2 && this.f2264e) {
                this.f2263d = true;
                recyclerView.f0.m12501d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public void m12526k(View view) {
        if (m12533d(view) == m12531f()) {
            this.f2265f = view;
        }
    }

    /* renamed from: l */
    protected abstract void m12525l(int i, int i2, RecyclerView$x recyclerView$x, C0417a aVar);

    /* renamed from: m */
    protected abstract void m12524m();

    /* renamed from: n */
    protected abstract void m12523n();

    /* renamed from: o */
    protected abstract void m12522o(View view, RecyclerView$x recyclerView$x, C0417a aVar);

    /* renamed from: p */
    public void m12521p(int i) {
        this.f2260a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m12520q(RecyclerView recyclerView, RecyclerView$n recyclerView$n) {
        recyclerView.f0.m12499f();
        if (this.f2267h) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.f2261b = recyclerView;
        this.f2262c = recyclerView$n;
        int i = this.f2260a;
        if (i != -1) {
            recyclerView.i0.f2275a = i;
            this.f2264e = true;
            this.f2263d = true;
            this.f2265f = m12535b(m12531f());
            m12524m();
            this.f2261b.f0.m12501d();
            this.f2267h = true;
            return;
        }
        throw new IllegalArgumentException("Invalid target position");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final void m12519r() {
        if (this.f2264e) {
            this.f2264e = false;
            m12523n();
            this.f2261b.i0.f2275a = -1;
            this.f2265f = null;
            this.f2260a = -1;
            this.f2263d = false;
            this.f2262c.m12658f1(this);
            this.f2262c = null;
            this.f2261b = null;
        }
    }
}
