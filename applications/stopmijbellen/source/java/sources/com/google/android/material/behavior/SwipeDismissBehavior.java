package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.Objects;
import java.util.WeakHashMap;
import p112h3.C3006a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p227s0.C4273c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0321c<V> {

    /* renamed from: a */
    public C4273c f6276a;

    /* renamed from: b */
    public boolean f6277b;

    /* renamed from: c */
    public int f6278c = 2;

    /* renamed from: d */
    public float f6279d = 0.5f;

    /* renamed from: e */
    public float f6280e = 0.0f;

    /* renamed from: f */
    public float f6281f = 0.5f;

    /* renamed from: g */
    public final C4273c.AbstractC4276c f6282g = new C1696a();

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public class C1696a extends C4273c.AbstractC4276c {

        /* renamed from: a */
        public int f6283a;

        /* renamed from: b */
        public int f6284b = -1;

        public C1696a() {
            SwipeDismissBehavior.this = r4;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: a */
        public int mo1138a(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            boolean z = C3589v.C3594e.m2071d(view) == 1;
            int i5 = SwipeDismissBehavior.this.f6278c;
            if (i5 == 0) {
                if (z) {
                    i3 = this.f6283a - view.getWidth();
                    i4 = this.f6283a;
                } else {
                    i3 = this.f6283a;
                    width = view.getWidth();
                    i4 = width + i3;
                }
            } else if (i5 != 1) {
                i3 = this.f6283a - view.getWidth();
                i4 = view.getWidth() + this.f6283a;
            } else if (z) {
                i3 = this.f6283a;
                width = view.getWidth();
                i4 = width + i3;
            } else {
                i3 = this.f6283a - view.getWidth();
                i4 = this.f6283a;
            }
            return Math.min(Math.max(i3, i), i4);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: b */
        public int mo1137b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: c */
        public int mo1136c(View view) {
            return view.getWidth();
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: g */
        public void mo1132g(View view, int i) {
            this.f6284b = i;
            this.f6283a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: h */
        public void mo1131h(int i) {
            Objects.requireNonNull(SwipeDismissBehavior.this);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: i */
        public void mo1130i(View view, int i, int i2, int i3, int i4) {
            float width = (view.getWidth() * SwipeDismissBehavior.this.f6280e) + this.f6283a;
            float width2 = (view.getWidth() * SwipeDismissBehavior.this.f6281f) + this.f6283a;
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m4764t(0.0f, 1.0f - ((f - width) / (width2 - width)), 1.0f));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
            if (java.lang.Math.abs(r7.getLeft() - r6.f6283a) >= java.lang.Math.round(r7.getWidth() * com.google.android.material.behavior.SwipeDismissBehavior.this.f6279d)) goto L18;
         */
        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: j */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1129j(android.view.View r7, float r8, float r9) {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C1696a.mo1129j(android.view.View, float, float):void");
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: k */
        public boolean mo1128k(View view, int i) {
            int i2 = this.f6284b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo4549s(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    public class RunnableC1697b implements Runnable {

        /* renamed from: a */
        public final View f6286a;

        /* renamed from: b */
        public final boolean f6287b;

        public RunnableC1697b(View view, boolean z) {
            SwipeDismissBehavior.this = r4;
            this.f6286a = view;
            this.f6287b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4273c c4273c = SwipeDismissBehavior.this.f6276a;
            if (c4273c == null || !c4273c.m1155i(true)) {
                if (!this.f6287b) {
                    return;
                }
                Objects.requireNonNull(SwipeDismissBehavior.this);
                return;
            }
            View view = this.f6286a;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2081m(view, this);
        }
    }

    /* renamed from: t */
    public static float m4764t(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: g */
    public boolean mo2988g(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f6277b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m8330q(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f6277b = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f6277b = false;
        }
        if (z) {
            if (this.f6276a == null) {
                this.f6276a = new C4273c(coordinatorLayout.getContext(), coordinatorLayout, this.f6282g);
            }
            return this.f6276a.m1141w(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: h */
    public boolean mo2976h(CoordinatorLayout coordinatorLayout, V v, int i) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3593d.m2091c(v) == 0) {
            C3589v.C3593d.m2075s(v, 1);
            C3589v.m2106r(1048576, v);
            C3589v.m2111m(v, 0);
            if (!mo4549s(v)) {
                return false;
            }
            C3589v.m2105s(v, C3694b.C3695a.f12080l, null, new C3006a(this));
            return false;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: r */
    public boolean mo2987r(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C4273c c4273c = this.f6276a;
        if (c4273c != null) {
            c4273c.m1148p(motionEvent);
            return true;
        }
        return false;
    }

    /* renamed from: s */
    public boolean mo4549s(View view) {
        return true;
    }
}
