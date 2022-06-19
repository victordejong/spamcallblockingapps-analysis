package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.AbstractC0878f;
import androidx.core.view.p038a.C0869c;
import androidx.customview.p039a.C0972c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    C0972c f52516a;

    /* renamed from: b */
    public AbstractC14423a f52517b;

    /* renamed from: g */
    private boolean f52522g;

    /* renamed from: i */
    private boolean f52524i;

    /* renamed from: h */
    private float f52523h = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c */
    public int f52518c = 2;

    /* renamed from: d */
    float f52519d = 0.5f;

    /* renamed from: e */
    public float f52520e = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: f */
    public float f52521f = 0.5f;

    /* renamed from: j */
    private final C0972c.AbstractC0975a f52525j = new C0972c.AbstractC0975a() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* renamed from: b */
        private int f52527b;

        /* renamed from: c */
        private int f52528c = -1;

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final int mo11217a(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11096a(int i) {
            if (SwipeDismissBehavior.this.f52517b != null) {
                SwipeDismissBehavior.this.f52517b.mo10178a(i);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
            if (java.lang.Math.abs(r8.getLeft() - r7.f52527b) >= java.lang.Math.round(r8.getWidth() * com.google.android.material.behavior.SwipeDismissBehavior.this.f52519d)) goto L28;
         */
        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo11095a(android.view.View r8, float r9, float r10) {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C144211.mo11095a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11216a(View view, int i) {
            this.f52528c = i;
            this.f52527b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: a */
        public final void mo11094a(View view, int i, int i2) {
            float width = this.f52527b + (view.getWidth() * SwipeDismissBehavior.this.f52520e);
            float width2 = this.f52527b + (view.getWidth() * SwipeDismissBehavior.this.f52521f);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            } else {
                view.setAlpha(SwipeDismissBehavior.m11220a(1.0f - SwipeDismissBehavior.m11219a(width, width2, f)));
            }
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: b */
        public final boolean mo11092b(View view, int i) {
            int i2 = this.f52528c;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo10176a(view);
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: c */
        public final int mo11091c(View view, int i) {
            int i2;
            int i3;
            int width;
            boolean z = C0926v.m44097f(view) == 1;
            if (SwipeDismissBehavior.this.f52518c == 0) {
                if (z) {
                    i3 = this.f52527b - view.getWidth();
                    i2 = this.f52527b;
                } else {
                    i3 = this.f52527b;
                    width = view.getWidth();
                    i2 = width + i3;
                }
            } else if (SwipeDismissBehavior.this.f52518c != 1) {
                i3 = this.f52527b - view.getWidth();
                i2 = view.getWidth() + this.f52527b;
            } else if (z) {
                i3 = this.f52527b;
                width = view.getWidth();
                i2 = width + i3;
            } else {
                i3 = this.f52527b - view.getWidth();
                i2 = this.f52527b;
            }
            return SwipeDismissBehavior.m11218a(i3, i, i2);
        }

        @Override // androidx.customview.p039a.C0972c.AbstractC0975a
        /* renamed from: d */
        public final int mo11090d(View view, int i) {
            return view.getTop();
        }
    };

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public interface AbstractC14423a {
        /* renamed from: a */
        void mo10178a(int i);

        /* renamed from: a */
        void mo10177a(View view);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    final class RunnableC14424b implements Runnable {

        /* renamed from: b */
        private final View f52531b;

        /* renamed from: c */
        private final boolean f52532c;

        RunnableC14424b(View view, boolean z) {
            SwipeDismissBehavior.this = r4;
            this.f52531b = view;
            this.f52532c = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SwipeDismissBehavior.this.f52516a != null && SwipeDismissBehavior.this.f52516a.m43885c()) {
                C0926v.m44117a(this.f52531b, this);
            } else if (!this.f52532c || SwipeDismissBehavior.this.f52517b == null) {
            } else {
                SwipeDismissBehavior.this.f52517b.mo10177a(this.f52531b);
            }
        }
    }

    /* renamed from: a */
    public static float m11220a(float f) {
        return Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, f), 1.0f);
    }

    /* renamed from: a */
    static float m11219a(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: a */
    static int m11218a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: a */
    public boolean mo10176a(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean mo9852a = super.mo9852a(coordinatorLayout, (CoordinatorLayout) v, i);
        if (C0926v.m44099e(v) == 0) {
            C0926v.m44102c((View) v, 1);
            C0926v.m44100d(v, 1048576);
            if (mo10176a(v)) {
                C0926v.m44125a(v, C0869c.C0870a.f3678u, new AbstractC0878f() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
                        if (r7 == false) goto L16;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
                    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
                    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
                    @Override // androidx.core.view.p038a.AbstractC0878f
                    /* renamed from: a */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final boolean mo11089a(android.view.View r4) {
                        /*
                            r3 = this;
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            r1 = r4
                            boolean r0 = r0.mo10176a(r1)
                            r5 = r0
                            r0 = 0
                            r6 = r0
                            r0 = r5
                            if (r0 == 0) goto L7d
                            r0 = r4
                            int r0 = androidx.core.view.C0926v.m44097f(r0)
                            r1 = 1
                            if (r0 != r1) goto L1d
                            r0 = 1
                            r7 = r0
                            goto L20
                        L1d:
                            r0 = 0
                            r7 = r0
                        L20:
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            int r0 = r0.f52518c
                            if (r0 != 0) goto L2f
                            r0 = r7
                            if (r0 != 0) goto L45
                        L2f:
                            r0 = r6
                            r8 = r0
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            int r0 = r0.f52518c
                            r1 = 1
                            if (r0 != r1) goto L48
                            r0 = r6
                            r8 = r0
                            r0 = r7
                            if (r0 != 0) goto L48
                        L45:
                            r0 = 1
                            r8 = r0
                        L48:
                            r0 = r4
                            int r0 = r0.getWidth()
                            r6 = r0
                            r0 = r6
                            r7 = r0
                            r0 = r8
                            if (r0 == 0) goto L59
                            r0 = r6
                            int r0 = -r0
                            r7 = r0
                        L59:
                            r0 = r4
                            r1 = r7
                            androidx.core.view.C0926v.m44096f(r0, r1)
                            r0 = r4
                            r1 = 0
                            r0.setAlpha(r1)
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            com.google.android.material.behavior.SwipeDismissBehavior$a r0 = r0.f52517b
                            if (r0 == 0) goto L7b
                            r0 = r3
                            com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                            com.google.android.material.behavior.SwipeDismissBehavior$a r0 = r0.f52517b
                            r1 = r4
                            r0.mo10177a(r1)
                        L7b:
                            r0 = 1
                            return r0
                        L7d:
                            r0 = 0
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C144222.mo11089a(android.view.View):boolean");
                    }
                });
            }
        }
        return mo9852a;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo10175a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f52522g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m44663a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f52522g = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f52522g = false;
        }
        if (z) {
            if (this.f52516a == null) {
                this.f52516a = this.f52524i ? C0972c.m43895a(coordinatorLayout, this.f52523h, this.f52525j) : C0972c.m43894a(coordinatorLayout, this.f52525j);
            }
            return this.f52516a.m43900a(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo9836b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C0972c c0972c = this.f52516a;
        if (c0972c != null) {
            c0972c.m43888b(motionEvent);
            return true;
        }
        return false;
    }
}
