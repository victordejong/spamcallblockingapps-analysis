package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
public class RecyclerView$z implements Runnable {

    /* renamed from: b */
    private int f2292b;

    /* renamed from: c */
    private int f2293c;

    /* renamed from: d */
    OverScroller f2294d;

    /* renamed from: e */
    Interpolator f2295e;

    /* renamed from: f */
    private boolean f2296f = false;

    /* renamed from: g */
    private boolean f2297g = false;

    /* renamed from: h */
    final /* synthetic */ RecyclerView f2298h;

    RecyclerView$z(RecyclerView recyclerView) {
        this.f2298h = recyclerView;
        Interpolator interpolator = RecyclerView.J0;
        this.f2295e = interpolator;
        this.f2294d = new OverScroller(recyclerView.getContext(), interpolator);
    }

    /* renamed from: a */
    private int m12504a(int i, int i2) {
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        boolean z = abs > abs2;
        RecyclerView recyclerView = this.f2298h;
        return Math.min((int) ((((z ? abs : abs2) / (z ? recyclerView.getWidth() : recyclerView.getHeight())) + 1.0f) * 300.0f), 2000);
    }

    /* renamed from: c */
    private void m12502c() {
        this.f2298h.removeCallbacks(this);
        t.f0(this.f2298h, this);
    }

    /* renamed from: b */
    public void m12503b(int i, int i2) {
        this.f2298h.setScrollState(2);
        this.f2293c = 0;
        this.f2292b = 0;
        Interpolator interpolator = this.f2295e;
        Interpolator interpolator2 = RecyclerView.J0;
        if (interpolator != interpolator2) {
            this.f2295e = interpolator2;
            this.f2294d = new OverScroller(this.f2298h.getContext(), interpolator2);
        }
        this.f2294d.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        m12501d();
    }

    /* renamed from: d */
    public void m12501d() {
        if (this.f2296f) {
            this.f2297g = true;
        } else {
            m12502c();
        }
    }

    /* renamed from: e */
    public void m12500e(int i, int i2, int i3, Interpolator interpolator) {
        int i4 = i3;
        if (i3 == Integer.MIN_VALUE) {
            i4 = m12504a(i, i2);
        }
        Interpolator interpolator2 = interpolator;
        if (interpolator == null) {
            interpolator2 = RecyclerView.J0;
        }
        if (this.f2295e != interpolator2) {
            this.f2295e = interpolator2;
            this.f2294d = new OverScroller(this.f2298h.getContext(), interpolator2);
        }
        this.f2293c = 0;
        this.f2292b = 0;
        this.f2298h.setScrollState(2);
        this.f2294d.startScroll(0, 0, i, i2, i4);
        if (Build.VERSION.SDK_INT < 23) {
            this.f2294d.computeScrollOffset();
        }
        m12501d();
    }

    /* renamed from: f */
    public void m12499f() {
        this.f2298h.removeCallbacks(this);
        this.f2294d.abortAnimation();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        int i2;
        int i3;
        RecyclerView recyclerView = this.f2298h;
        if (recyclerView.m == null) {
            m12499f();
            return;
        }
        this.f2297g = false;
        this.f2296f = true;
        recyclerView.v();
        OverScroller overScroller = this.f2294d;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i4 = currX - this.f2292b;
            int i5 = currY - this.f2293c;
            this.f2292b = currX;
            this.f2293c = currY;
            RecyclerView recyclerView2 = this.f2298h;
            int[] iArr = recyclerView2.v0;
            iArr[0] = 0;
            iArr[1] = 0;
            int i6 = i4;
            int i7 = i5;
            if (recyclerView2.G(i4, i5, iArr, (int[]) null, 1)) {
                int[] iArr2 = this.f2298h.v0;
                i6 = i4 - iArr2[0];
                i7 = i5 - iArr2[1];
            }
            if (this.f2298h.getOverScrollMode() != 2) {
                this.f2298h.u(i6, i7);
            }
            RecyclerView recyclerView3 = this.f2298h;
            if (recyclerView3.l != null) {
                int[] iArr3 = recyclerView3.v0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.h1(i6, i7, iArr3);
                RecyclerView recyclerView4 = this.f2298h;
                int[] iArr4 = recyclerView4.v0;
                int i8 = iArr4[0];
                int i9 = iArr4[1];
                int i10 = i6 - i8;
                int i11 = i7 - i9;
                RecyclerView$w recyclerView$w = recyclerView4.m.f2229g;
                i6 = i10;
                i = i9;
                i3 = i8;
                i2 = i11;
                if (recyclerView$w != null) {
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (!recyclerView$w.m12530g()) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (recyclerView$w.m12529h()) {
                            int m12511b = this.f2298h.i0.m12511b();
                            if (m12511b == 0) {
                                recyclerView$w.m12519r();
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            } else {
                                if (recyclerView$w.m12531f() >= m12511b) {
                                    recyclerView$w.m12521p(m12511b - 1);
                                }
                                recyclerView$w.m12527j(i8, i9);
                                i6 = i10;
                                i = i9;
                                i3 = i8;
                                i2 = i11;
                            }
                        }
                    }
                }
            } else {
                i = 0;
                i2 = i7;
                i3 = 0;
            }
            if (!this.f2298h.p.isEmpty()) {
                this.f2298h.invalidate();
            }
            RecyclerView recyclerView5 = this.f2298h;
            int[] iArr5 = recyclerView5.v0;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.H(i3, i, i6, i2, (int[]) null, 1, iArr5);
            RecyclerView recyclerView6 = this.f2298h;
            int[] iArr6 = recyclerView6.v0;
            int i12 = i6 - iArr6[0];
            int i13 = i2 - iArr6[1];
            if (i3 != 0 || i != 0) {
                recyclerView6.J(i3, i);
            }
            if (!RecyclerView.e(this.f2298h)) {
                this.f2298h.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
            RecyclerView$w recyclerView$w2 = this.f2298h.m.f2229g;
            if ((recyclerView$w2 != null && recyclerView$w2.m12530g()) || !z) {
                m12501d();
                RecyclerView recyclerView7 = this.f2298h;
                RunnableC0424e runnableC0424e = recyclerView7.g0;
                if (runnableC0424e != null) {
                    runnableC0424e.m12397f(recyclerView7, i3, i);
                }
            } else {
                if (this.f2298h.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                    if (i13 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i13 <= 0) {
                        currVelocity = 0;
                    }
                    this.f2298h.a(i14, currVelocity);
                }
                if (RecyclerView.F0) {
                    this.f2298h.h0.b();
                }
            }
        }
        RecyclerView$w recyclerView$w3 = this.f2298h.m.f2229g;
        if (recyclerView$w3 != null && recyclerView$w3.m12530g()) {
            recyclerView$w3.m12527j(0, 0);
        }
        this.f2296f = false;
        if (this.f2297g) {
            m12502c();
            return;
        }
        this.f2298h.setScrollState(0);
        this.f2298h.u1(1);
    }
}
