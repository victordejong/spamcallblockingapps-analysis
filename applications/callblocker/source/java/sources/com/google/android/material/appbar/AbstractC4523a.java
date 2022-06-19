package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p021c.C0486a;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.google.android.material.appbar.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/a.class */
public abstract class AbstractC4523a<V extends View> extends C4526c<V> {

    /* renamed from: a */
    OverScroller f19628a;

    /* renamed from: b */
    private Runnable f19629b;

    /* renamed from: c */
    private boolean f19630c;

    /* renamed from: e */
    private int f19632e;

    /* renamed from: g */
    private VelocityTracker f19634g;

    /* renamed from: d */
    private int f19631d = -1;

    /* renamed from: f */
    private int f19633f = -1;

    /* renamed from: com.google.android.material.appbar.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/a$a.class */
    public class RunnableC4524a implements Runnable {

        /* renamed from: b */
        private final CoordinatorLayout f19636b;

        /* renamed from: c */
        private final V f19637c;

        RunnableC4524a(CoordinatorLayout coordinatorLayout, V v) {
            AbstractC4523a.this = r4;
            this.f19636b = coordinatorLayout;
            this.f19637c = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f19637c == null || AbstractC4523a.this.f19628a == null) {
                return;
            }
            if (!AbstractC4523a.this.f19628a.computeScrollOffset()) {
                AbstractC4523a.this.mo3757e(this.f19636b, this.f19637c);
                return;
            }
            AbstractC4523a.this.m3763a_(this.f19636b, this.f19637c, AbstractC4523a.this.f19628a.getCurrY());
            C0595u.m20341a(this.f19637c, this);
        }
    }

    public AbstractC4523a() {
    }

    public AbstractC4523a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private void m3758d() {
        if (this.f19634g == null) {
            this.f19634g = VelocityTracker.obtain();
        }
    }

    /* renamed from: a */
    int mo3766a(V v) {
        return v.getHeight();
    }

    /* renamed from: a */
    int mo3764a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int c = mo3744c();
        int i4 = 0;
        if (i2 != 0) {
            i4 = 0;
            if (c >= i2) {
                i4 = 0;
                if (c <= i3) {
                    int m20726a = C0486a.m20726a(i, i2, i3);
                    i4 = 0;
                    if (c != m20726a) {
                        mo3746a(m20726a);
                        i4 = c - m20726a;
                    }
                }
            }
        }
        return i4;
    }

    /* renamed from: a */
    final boolean m3765a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        boolean z = false;
        if (this.f19629b != null) {
            v.removeCallbacks(this.f19629b);
            this.f19629b = null;
        }
        if (this.f19628a == null) {
            this.f19628a = new OverScroller(v.getContext());
        }
        this.f19628a.fling(0, mo3744c(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f19628a.computeScrollOffset()) {
            this.f19629b = new RunnableC4524a(coordinatorLayout, v);
            C0595u.m20341a(v, this.f19629b);
            z = true;
        } else {
            mo3757e(coordinatorLayout, v);
        }
        return z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2508a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        int findPointerIndex;
        boolean z = true;
        if (this.f19633f < 0) {
            this.f19633f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() != 2 || !this.f19630c) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    this.f19630c = false;
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    if (mo3759c(v) && coordinatorLayout.m20987a(v, x, y)) {
                        this.f19632e = y;
                        this.f19631d = motionEvent.getPointerId(0);
                        m3758d();
                        break;
                    }
                    break;
                case 1:
                case 3:
                    this.f19630c = false;
                    this.f19631d = -1;
                    if (this.f19634g != null) {
                        this.f19634g.recycle();
                        this.f19634g = null;
                        break;
                    }
                    break;
                case 2:
                    int i = this.f19631d;
                    if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                        int y2 = (int) motionEvent.getY(findPointerIndex);
                        if (Math.abs(y2 - this.f19632e) > this.f19633f) {
                            this.f19630c = true;
                            this.f19632e = y2;
                            break;
                        }
                    }
                    break;
            }
            if (this.f19634g != null) {
                this.f19634g.addMovement(motionEvent);
            }
            z = this.f19630c;
        }
        return z;
    }

    /* renamed from: a_ */
    public int m3763a_(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo3764a(coordinatorLayout, (CoordinatorLayout) v, i, (int) RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
    }

    /* renamed from: b */
    int mo3762b() {
        return mo3744c();
    }

    /* renamed from: b */
    int mo3761b(V v) {
        return -v.getHeight();
    }

    /* renamed from: b */
    public final int m3760b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo3764a(coordinatorLayout, (CoordinatorLayout) v, mo3762b() - i, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0043  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2188b(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AbstractC4523a.mo2188b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: c */
    boolean mo3759c(V v) {
        return false;
    }

    /* renamed from: e */
    void mo3757e(CoordinatorLayout coordinatorLayout, V v) {
    }
}
