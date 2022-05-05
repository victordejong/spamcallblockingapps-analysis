package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior.class */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {

    /* renamed from: d */
    public Runnable f7279d;

    /* renamed from: e */
    public OverScroller f7280e;

    /* renamed from: f */
    public boolean f7281f;

    /* renamed from: h */
    public int f7283h;

    /* renamed from: j */
    public VelocityTracker f7285j;

    /* renamed from: g */
    public int f7282g = -1;

    /* renamed from: i */
    public int f7284i = -1;

    /* renamed from: com.google.android.material.appbar.HeaderBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/HeaderBehavior$a.class */
    public class RunnableC3598a implements Runnable {

        /* renamed from: a */
        public final CoordinatorLayout f7286a;

        /* renamed from: b */
        public final V f7287b;

        public RunnableC3598a(CoordinatorLayout coordinatorLayout, V v) {
            this.f7286a = coordinatorLayout;
            this.f7287b = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f7287b != null && (overScroller = HeaderBehavior.this.f7280e) != null) {
                if (overScroller.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.m31564b(this.f7286a, this.f7287b, headerBehavior.f7280e.getCurrY());
                    ViewCompat.postOnAnimation(this.f7287b, this);
                    return;
                }
                HeaderBehavior.this.mo31569a(this.f7286a, this.f7287b);
            }
        }
    }

    public HeaderBehavior() {
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final int m31567a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo31563b(coordinatorLayout, v, mo31562c() - i, i2, i3);
    }

    /* renamed from: a */
    public void mo31569a(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: a */
    public boolean mo31570a(V v) {
        return false;
    }

    /* renamed from: a */
    public final boolean m31568a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, float f) {
        Runnable runnable = this.f7279d;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f7279d = null;
        }
        if (this.f7280e == null) {
            this.f7280e = new OverScroller(v.getContext());
        }
        this.f7280e.fling(0, m31552a(), 0, Math.round(f), 0, 0, i, i2);
        if (this.f7280e.computeScrollOffset()) {
            this.f7279d = new RunnableC3598a(coordinatorLayout, v);
            ViewCompat.postOnAnimation(v, this.f7279d);
            return true;
        }
        mo31569a(coordinatorLayout, v);
        return false;
    }

    /* renamed from: b */
    public int mo31565b(V v) {
        return -v.getHeight();
    }

    /* renamed from: b */
    public int m31564b(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo31563b(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: b */
    public int mo31563b(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int i4;
        int clamp;
        int a = m31552a();
        if (i2 == 0 || a < i2 || a > i3 || a == (clamp = MathUtils.clamp(i, i2, i3))) {
            i4 = 0;
        } else {
            m31551a(clamp);
            i4 = a - clamp;
        }
        return i4;
    }

    /* renamed from: b */
    public final void m31566b() {
        if (this.f7285j == null) {
            this.f7285j = VelocityTracker.obtain();
        }
    }

    /* renamed from: c */
    public int mo31562c() {
        return m31552a();
    }

    /* renamed from: c */
    public int mo31561c(V v) {
        return v.getHeight();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r0 != 3) goto L_0x00e7;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r6, V r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.onInterceptTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r0 != 3) goto L_0x0142;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout r8, V r9, android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }
}
