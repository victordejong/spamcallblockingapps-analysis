package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a.c;
import androidx.core.view.a.f;
import androidx.core.view.v;
import androidx.customview.a.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    c f30257a;

    /* renamed from: b  reason: collision with root package name */
    public a f30258b;
    private boolean g;
    private boolean i;
    private float h = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c  reason: collision with root package name */
    public int f30259c = 2;

    /* renamed from: d  reason: collision with root package name */
    float f30260d = 0.5f;
    public float e = BitmapDescriptorFactory.HUE_RED;
    public float f = 0.5f;
    private final c.a j = new c.a() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* renamed from: b  reason: collision with root package name */
        private int f30262b;

        /* renamed from: c  reason: collision with root package name */
        private int f30263c = -1;

        @Override // androidx.customview.a.c.a
        public final int a(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.a.c.a
        public final void a(int i) {
            if (SwipeDismissBehavior.this.f30258b != null) {
                SwipeDismissBehavior.this.f30258b.a(i);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
            if (java.lang.Math.abs(r8.getLeft() - r7.f30262b) >= java.lang.Math.round(r8.getWidth() * r7.f30261a.f30260d)) goto L_0x00a3;
         */
        @Override // androidx.customview.a.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.view.View r8, float r9, float r10) {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass1.a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i) {
            this.f30263c = i;
            this.f30262b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i, int i2) {
            float width = this.f30262b + (view.getWidth() * SwipeDismissBehavior.this.e);
            float width2 = this.f30262b + (view.getWidth() * SwipeDismissBehavior.this.f);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(1.0f - SwipeDismissBehavior.a(width, width2, f)));
            }
        }

        @Override // androidx.customview.a.c.a
        public final boolean b(View view, int i) {
            int i2 = this.f30263c;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.a(view);
        }

        @Override // androidx.customview.a.c.a
        public final int c(View view, int i) {
            int i2;
            int i3;
            int width;
            boolean z = v.f(view) == 1;
            if (SwipeDismissBehavior.this.f30259c == 0) {
                if (z) {
                    i3 = this.f30262b - view.getWidth();
                    i2 = this.f30262b;
                } else {
                    i3 = this.f30262b;
                    width = view.getWidth();
                    i2 = width + i3;
                }
            } else if (SwipeDismissBehavior.this.f30259c != 1) {
                i3 = this.f30262b - view.getWidth();
                i2 = view.getWidth() + this.f30262b;
            } else if (z) {
                i3 = this.f30262b;
                width = view.getWidth();
                i2 = width + i3;
            } else {
                i3 = this.f30262b - view.getWidth();
                i2 = this.f30262b;
            }
            return SwipeDismissBehavior.a(i3, i, i2);
        }

        @Override // androidx.customview.a.c.a
        public final int d(View view, int i) {
            return view.getTop();
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public interface a {
        void a(int i);

        void a(View view);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final View f30266b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f30267c;

        b(View view, boolean z) {
            this.f30266b = view;
            this.f30267c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SwipeDismissBehavior.this.f30257a != null && SwipeDismissBehavior.this.f30257a.c()) {
                v.a(this.f30266b, this);
            } else if (this.f30267c && SwipeDismissBehavior.this.f30258b != null) {
                SwipeDismissBehavior.this.f30258b.a(this.f30266b);
            }
        }
    }

    public static float a(float f) {
        return Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, f), 1.0f);
    }

    static float a(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    public boolean a(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean a2 = super.a(coordinatorLayout, (CoordinatorLayout) v, i);
        if (v.e(v) == 0) {
            v.c((View) v, 1);
            v.d(v, 1048576);
            if (a(v)) {
                v.a(v, c.a.u, new f() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
                        if (r7 == false) goto L_0x0045;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
                    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
                    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
                    @Override // androidx.core.view.a.f
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean a(android.view.View r4) {
                        /*
                            r3 = this;
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            r1 = r4
                            boolean r0 = r0.a(r1)
                            r5 = r0
                            r0 = 0
                            r6 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x007d
                            r0 = r4
                            int r0 = androidx.core.view.v.f(r0)
                            r1 = 1
                            if (r0 != r1) goto L_0x001d
                            r0 = 1
                            r7 = r0
                            goto L_0x0020
                        L_0x001d:
                            r0 = 0
                            r7 = r0
                        L_0x0020:
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            int r0 = r0.f30259c
                            if (r0 != 0) goto L_0x002f
                            r0 = r7
                            if (r0 != 0) goto L_0x0045
                        L_0x002f:
                            r0 = r6
                            r8 = r0
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            int r0 = r0.f30259c
                            r1 = 1
                            if (r0 != r1) goto L_0x0048
                            r0 = r6
                            r8 = r0
                            r0 = r7
                            if (r0 != 0) goto L_0x0048
                        L_0x0045:
                            r0 = 1
                            r8 = r0
                        L_0x0048:
                            r0 = r4
                            int r0 = r0.getWidth()
                            r6 = r0
                            r0 = r6
                            r7 = r0
                            r0 = r8
                            if (r0 == 0) goto L_0x0059
                            r0 = r6
                            int r0 = -r0
                            r7 = r0
                        L_0x0059:
                            r0 = r4
                            r1 = r7
                            androidx.core.view.v.f(r0, r1)
                            r0 = r4
                            r1 = 0
                            r0.setAlpha(r1)
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            com.google.android.material.behavior.SwipeDismissBehavior$a r0 = r0.f30258b
                            if (r0 == 0) goto L_0x007b
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            com.google.android.material.behavior.SwipeDismissBehavior$a r0 = r0.f30258b
                            r1 = r4
                            r0.a(r1)
                        L_0x007b:
                            r0 = 1
                            return r0
                        L_0x007d:
                            r0 = 0
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass2.a(android.view.View):boolean");
                    }
                });
            }
        }
        return a2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.g = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.g = false;
        }
        if (!z) {
            return false;
        }
        if (this.f30257a == null) {
            this.f30257a = this.i ? androidx.customview.a.c.a(coordinatorLayout, this.h, this.j) : androidx.customview.a.c.a(coordinatorLayout, this.j);
        }
        return this.f30257a.a(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        androidx.customview.a.c cVar = this.f30257a;
        if (cVar == null) {
            return false;
        }
        cVar.b(motionEvent);
        return true;
    }
}
