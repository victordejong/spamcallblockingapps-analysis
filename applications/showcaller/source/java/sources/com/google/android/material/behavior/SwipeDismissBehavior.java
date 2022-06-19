package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.C1710c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    C1710c f36134a;

    /* renamed from: b */
    AbstractC8008c f36135b;

    /* renamed from: c */
    private boolean f36136c;

    /* renamed from: e */
    private boolean f36138e;

    /* renamed from: d */
    private float f36137d = 0.0f;

    /* renamed from: f */
    int f36139f = 2;

    /* renamed from: g */
    float f36140g = 0.5f;

    /* renamed from: h */
    float f36141h = 0.0f;

    /* renamed from: i */
    float f36142i = 0.5f;

    /* renamed from: j */
    private final C1710c.AbstractC1713c f36143j = new C8006a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public class C8006a extends C1710c.AbstractC1713c {

        /* renamed from: a */
        private int f36144a;

        /* renamed from: b */
        private int f36145b = -1;

        C8006a() {
            SwipeDismissBehavior.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
            if (r0 > 0) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
            if (r5 < 0.0f) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
            r8 = true;
         */
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m5584n(android.view.View r4, float r5) {
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
                if (r0 == 0) goto L7a
                r0 = r4
                int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
                r1 = 1
                if (r0 != r1) goto L20
                r0 = 1
                r10 = r0
                goto L23
            L20:
                r0 = 0
                r10 = r0
            L23:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.f36139f
                r11 = r0
                r0 = r11
                r1 = 2
                if (r0 != r1) goto L34
                r0 = 1
                return r0
            L34:
                r0 = r11
                if (r0 != 0) goto L52
                r0 = r10
                if (r0 == 0) goto L47
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L4f
                goto L4c
            L47:
                r0 = r9
                if (r0 <= 0) goto L4f
            L4c:
                r0 = 1
                r8 = r0
            L4f:
                r0 = r8
                return r0
            L52:
                r0 = r6
                r8 = r0
                r0 = r11
                r1 = 1
                if (r0 != r1) goto L77
                r0 = r10
                if (r0 == 0) goto L6b
                r0 = r6
                r8 = r0
                r0 = r9
                if (r0 <= 0) goto L77
                goto L74
            L6b:
                r0 = r6
                r8 = r0
                r0 = r5
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L77
            L74:
                r0 = 1
                r8 = r0
            L77:
                r0 = r8
                return r0
            L7a:
                r0 = r4
                int r0 = r0.getLeft()
                r10 = r0
                r0 = r3
                int r0 = r0.f36144a
                r9 = r0
                r0 = r4
                int r0 = r0.getWidth()
                float r0 = (float) r0
                r1 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r1 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r1 = r1.f36140g
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
                if (r0 < r1) goto Lac
                r0 = 1
                r8 = r0
            Lac:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C8006a.m5584n(android.view.View, float):boolean");
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: a */
        public int mo5407a(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            boolean z = C1679w.m29346C(view) == 1;
            int i5 = SwipeDismissBehavior.this.f36139f;
            if (i5 == 0) {
                if (z) {
                    i3 = this.f36144a - view.getWidth();
                    i4 = this.f36144a;
                } else {
                    i3 = this.f36144a;
                    width = view.getWidth();
                    i4 = width + i3;
                }
            } else if (i5 != 1) {
                i3 = this.f36144a - view.getWidth();
                i4 = view.getWidth() + this.f36144a;
            } else if (z) {
                i3 = this.f36144a;
                width = view.getWidth();
                i4 = width + i3;
            } else {
                i3 = this.f36144a - view.getWidth();
                i4 = this.f36144a;
            }
            return SwipeDismissBehavior.m5593G(i3, i, i4);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: b */
        public int mo5406b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: d */
        public int mo5586d(View view) {
            return view.getWidth();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: i */
        public void mo5585i(View view, int i) {
            this.f36145b = i;
            this.f36144a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: j */
        public void mo5404j(int i) {
            AbstractC8008c abstractC8008c = SwipeDismissBehavior.this.f36135b;
            if (abstractC8008c != null) {
                abstractC8008c.m5582b(i);
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: k */
        public void mo5403k(View view, int i, int i2, int i3, int i4) {
            float width = this.f36144a + (view.getWidth() * SwipeDismissBehavior.this.f36141h);
            float width2 = this.f36144a + (view.getWidth() * SwipeDismissBehavior.this.f36142i);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m5594F(0.0f, 1.0f - SwipeDismissBehavior.m5591I(width, width2, f), 1.0f));
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: l */
        public void mo5402l(View view, float f, float f2) {
            boolean z;
            int i;
            AbstractC8008c abstractC8008c;
            this.f36145b = -1;
            int width = view.getWidth();
            if (m5584n(view, f)) {
                int left = view.getLeft();
                int i2 = this.f36144a;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f36144a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f36134a.m29125N(i, view.getTop())) {
                C1679w.m29289j0(view, new RunnableC8009d(view, z));
            } else if (!z || (abstractC8008c = SwipeDismissBehavior.this.f36135b) == null) {
            } else {
                abstractC8008c.m5583a(view);
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: m */
        public boolean mo5401m(View view, int i) {
            int i2 = this.f36145b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.mo4207E(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    public class C8007b implements AbstractC1644f {
        C8007b() {
            SwipeDismissBehavior.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
            if (r8 == false) goto L16;
         */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
        @Override // p020b.p041h.p050l.p051f0.AbstractC1644f
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo5399a(android.view.View r4, p020b.p041h.p050l.p051f0.AbstractC1644f.AbstractC1645a r5) {
            /*
                r3 = this;
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r1 = r4
                boolean r0 = r0.mo4207E(r1)
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L7e
                r0 = r4
                int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
                r1 = 1
                if (r0 != r1) goto L1e
                r0 = 1
                r8 = r0
                goto L21
            L1e:
                r0 = 0
                r8 = r0
            L21:
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r0 = r0.f36139f
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L34
                r0 = r8
                if (r0 != 0) goto L47
            L34:
                r0 = r7
                r10 = r0
                r0 = r9
                r1 = 1
                if (r0 != r1) goto L4a
                r0 = r7
                r10 = r0
                r0 = r8
                if (r0 != 0) goto L4a
            L47:
                r0 = 1
                r10 = r0
            L4a:
                r0 = r4
                int r0 = r0.getWidth()
                r7 = r0
                r0 = r7
                r8 = r0
                r0 = r10
                if (r0 == 0) goto L5e
                r0 = r7
                int r0 = -r0
                r8 = r0
            L5e:
                r0 = r4
                r1 = r8
                p020b.p041h.p050l.C1679w.m29307a0(r0, r1)
                r0 = r4
                r1 = 0
                r0.setAlpha(r1)
                r0 = r3
                com.google.android.material.behavior.SwipeDismissBehavior r0 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$c r0 = r0.f36135b
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L7c
                r0 = r5
                r1 = r4
                r0.m5583a(r1)
            L7c:
                r0 = 1
                return r0
            L7e:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.C8007b.mo5399a(android.view.View, b.h.l.f0.f$a):boolean");
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$c.class */
    public interface AbstractC8008c {
        /* renamed from: a */
        void m5583a(View view);

        /* renamed from: b */
        void m5582b(int i);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$d.class */
    private class RunnableC8009d implements Runnable {

        /* renamed from: d */
        private final View f36148d;

        /* renamed from: e */
        private final boolean f36149e;

        RunnableC8009d(View view, boolean z) {
            SwipeDismissBehavior.this = r4;
            this.f36148d = view;
            this.f36149e = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC8008c abstractC8008c;
            C1710c c1710c = SwipeDismissBehavior.this.f36134a;
            if (c1710c != null && c1710c.m29108n(true)) {
                C1679w.m29289j0(this.f36148d, this);
            } else if (!this.f36149e || (abstractC8008c = SwipeDismissBehavior.this.f36135b) == null) {
            } else {
                abstractC8008c.m5583a(this.f36148d);
            }
        }
    }

    /* renamed from: F */
    static float m5594F(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: G */
    static int m5593G(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: H */
    private void m5592H(ViewGroup viewGroup) {
        if (this.f36134a == null) {
            this.f36134a = this.f36138e ? C1710c.m29107o(viewGroup, this.f36137d, this.f36143j) : C1710c.m29106p(viewGroup, this.f36143j);
        }
    }

    /* renamed from: I */
    static float m5591I(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: M */
    private void m5587M(View view) {
        C1679w.m29285l0(view, 1048576);
        if (mo4207E(view)) {
            C1679w.m29281n0(view, C1634c.C1635a.f6302u, null, new C8007b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    public boolean mo3804D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        C1710c c1710c = this.f36134a;
        if (c1710c != null) {
            c1710c.m29133F(motionEvent);
            return true;
        }
        return false;
    }

    /* renamed from: E */
    public boolean mo4207E(View view) {
        return true;
    }

    /* renamed from: J */
    public void m5590J(float f) {
        this.f36142i = m5594F(0.0f, f, 1.0f);
    }

    /* renamed from: K */
    public void m5589K(float f) {
        this.f36141h = m5594F(0.0f, f, 1.0f);
    }

    /* renamed from: L */
    public void m5588L(int i) {
        this.f36139f = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo4206k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f36136c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.m33593F(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f36136c = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f36136c = false;
        }
        if (z) {
            m5592H(coordinatorLayout);
            return this.f36134a.m29124O(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo3828l(CoordinatorLayout coordinatorLayout, V v, int i) {
        boolean mo3828l = super.mo3828l(coordinatorLayout, v, i);
        if (C1679w.m29350A(v) == 0) {
            C1679w.m29347B0(v, 1);
            m5587M(v);
        }
        return mo3828l;
    }
}
