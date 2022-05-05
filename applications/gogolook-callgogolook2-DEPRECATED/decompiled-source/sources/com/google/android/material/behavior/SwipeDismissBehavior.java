package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    public ViewDragHelper f7300a;

    /* renamed from: b */
    public AbstractC3601b f7301b;

    /* renamed from: c */
    public boolean f7302c;

    /* renamed from: e */
    public boolean f7304e;

    /* renamed from: d */
    public float f7303d = 0.0f;

    /* renamed from: f */
    public int f7305f = 2;

    /* renamed from: g */
    public float f7306g = 0.5f;

    /* renamed from: h */
    public float f7307h = 0.0f;

    /* renamed from: i */
    public float f7308i = 0.5f;

    /* renamed from: j */
    public final ViewDragHelper.Callback f7309j = new C3600a();

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public class C3600a extends ViewDragHelper.Callback {

        /* renamed from: a */
        public int f7310a;

        /* renamed from: b */
        public int f7311b = -1;

        public C3600a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
            if (r0 > 0) goto L_0x0074;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
            if (r5 < 0.0f) goto L_0x0074;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
            r8 = true;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m31540a(android.view.View r4, float r5) {
            /*
                r3 = this;
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x007a
                r0 = r4
                int r0 = androidx.core.view.ViewCompat.getLayoutDirection(r0)
                r1 = 1
                if (r0 != r1) goto L_0x0020
                r0 = 1
                r10 = r0
                goto L_0x0023
            L_0x0020:
                r0 = 0
                r10 = r0
            L_0x0023:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.f7305f
                r11 = r0
                r0 = r11
                r1 = 2
                if (r0 != r1) goto L_0x0034
                r0 = 1
                return r0
            L_0x0034:
                r0 = r11
                if (r0 != 0) goto L_0x0052
                r0 = r10
                if (r0 == 0) goto L_0x0047
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x004f
                goto L_0x004c
            L_0x0047:
                r0 = r9
                if (r0 <= 0) goto L_0x004f
            L_0x004c:
                r0 = 1
                r8 = r0
            L_0x004f:
                r0 = r8
                return r0
            L_0x0052:
                r0 = r6
                r8 = r0
                r0 = r11
                r1 = 1
                if (r0 != r1) goto L_0x0077
                r0 = r10
                if (r0 == 0) goto L_0x006b
                r0 = r6
                r8 = r0
                r0 = r9
                if (r0 <= 0) goto L_0x0077
                goto L_0x0074
            L_0x006b:
                r0 = r6
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0077
            L_0x0074:
                r0 = 1
                r8 = r0
            L_0x0077:
                r0 = r8
                return r0
            L_0x007a:
                r0 = r4
                int r0 = r0.getLeft()
                r10 = r0
                r0 = r3
                int r0 = r0.f7310a
                r9 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r1 = r1.f7306g
                float r0 = r0 * r1
                int r0 = java.lang.Math.round(r0)
                r11 = r0
                r0 = r7
                r8 = r0
                r0 = r10
                r1 = r9
                int r0 = r0 - r1
                int r0 = java.lang.Math.abs(r0)
                r1 = r11
                if (r0 < r1) goto L_0x00ac
                r0 = 1
                r8 = r0
            L_0x00ac:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C3600a.m31540a(android.view.View, float):boolean");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i5 = SwipeDismissBehavior.this.f7305f;
            if (i5 == 0) {
                if (z) {
                    i3 = this.f7310a - view.getWidth();
                    i4 = this.f7310a;
                } else {
                    i3 = this.f7310a;
                    width = view.getWidth();
                    i4 = width + i3;
                }
            } else if (i5 != 1) {
                i3 = this.f7310a - view.getWidth();
                i4 = view.getWidth() + this.f7310a;
            } else if (z) {
                i3 = this.f7310a;
                width = view.getWidth();
                i4 = width + i3;
            } else {
                i3 = this.f7310a - view.getWidth();
                i4 = this.f7310a;
            }
            return SwipeDismissBehavior.m31544a(i3, i, i4);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            this.f7311b = i;
            this.f7310a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            AbstractC3601b bVar = SwipeDismissBehavior.this.f7301b;
            if (bVar != null) {
                bVar.m31539a(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = this.f7310a + (view.getWidth() * SwipeDismissBehavior.this.f7307h);
            float width2 = this.f7310a + (view.getWidth() * SwipeDismissBehavior.this.f7308i);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m31546a(0.0f, 1.0f - SwipeDismissBehavior.m31541b(width, width2, f), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            boolean z;
            int i;
            AbstractC3601b bVar;
            this.f7311b = -1;
            int width = view.getWidth();
            if (m31540a(view, f)) {
                int left = view.getLeft();
                int i2 = this.f7310a;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f7310a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f7300a.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new RunnableC3602c(view, z));
            } else if (z && (bVar = SwipeDismissBehavior.this.f7301b) != null) {
                bVar.m31538a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return this.f7311b == -1 && SwipeDismissBehavior.this.mo31318a(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    public interface AbstractC3601b {
        /* renamed from: a */
        void m31539a(int i);

        /* renamed from: a */
        void m31538a(View view);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$c.class */
    public class RunnableC3602c implements Runnable {

        /* renamed from: a */
        public final View f7313a;

        /* renamed from: b */
        public final boolean f7314b;

        public RunnableC3602c(View view, boolean z) {
            this.f7313a = view;
            this.f7314b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3601b bVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f7300a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f7313a, this);
            } else if (this.f7314b && (bVar = SwipeDismissBehavior.this.f7301b) != null) {
                bVar.m31538a(this.f7313a);
            }
        }
    }

    /* renamed from: a */
    public static float m31546a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: a */
    public static int m31544a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: b */
    public static float m31541b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: a */
    public void m31547a(float f) {
        this.f7308i = m31546a(0.0f, f, 1.0f);
    }

    /* renamed from: a */
    public void m31545a(int i) {
        this.f7305f = i;
    }

    /* renamed from: a */
    public final void m31543a(ViewGroup viewGroup) {
        if (this.f7300a == null) {
            this.f7300a = this.f7304e ? ViewDragHelper.create(viewGroup, this.f7303d, this.f7309j) : ViewDragHelper.create(viewGroup, this.f7309j);
        }
    }

    /* renamed from: a */
    public boolean mo31318a(@NonNull View view) {
        return true;
    }

    /* renamed from: b */
    public void m31542b(float f) {
        this.f7307h = m31546a(0.0f, f, 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f7302c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f7302c = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            z = this.f7302c;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f7302c = false;
        }
        if (!z) {
            return false;
        }
        m31543a((ViewGroup) coordinatorLayout);
        return this.f7300a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f7300a;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }
}
