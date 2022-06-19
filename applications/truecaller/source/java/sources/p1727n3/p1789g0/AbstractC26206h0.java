package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p1727n3.p1789g0.AbstractC26214m;
/* renamed from: n3.g0.h0 */
/* loaded from: classes-dex2jar.jar:n3/g0/h0.class */
public abstract class AbstractC26206h0 extends AbstractC26214m {

    /* renamed from: z */
    public static final String[] f73062z = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: y */
    public int f73063y = 3;

    /* renamed from: n3.g0.h0$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/h0$a.class */
    public static class C26207a extends AnimatorListenerAdapter implements AbstractC26214m.AbstractC26218d {

        /* renamed from: a */
        public final View f73064a;

        /* renamed from: b */
        public final int f73065b;

        /* renamed from: c */
        public final ViewGroup f73066c;

        /* renamed from: d */
        public final boolean f73067d;

        /* renamed from: e */
        public boolean f73068e;

        /* renamed from: f */
        public boolean f73069f = false;

        public C26207a(View view, int i, boolean z) {
            this.f73064a = view;
            this.f73065b = i;
            this.f73066c = (ViewGroup) view.getParent();
            this.f73067d = z;
            m2545g(true);
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: a */
        public void mo2494a(AbstractC26214m abstractC26214m) {
            m2545g(true);
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: b */
        public void mo2493b(AbstractC26214m abstractC26214m) {
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: c */
        public void mo2492c(AbstractC26214m abstractC26214m) {
            m2545g(false);
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            m2546f();
            abstractC26214m.mo2497y(this);
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: e */
        public void mo2490e(AbstractC26214m abstractC26214m) {
        }

        /* renamed from: f */
        public final void m2546f() {
            if (!this.f73069f) {
                C26233z.f73143a.m2554f(this.f73064a, this.f73065b);
                ViewGroup viewGroup = this.f73066c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m2545g(false);
        }

        /* renamed from: g */
        public final void m2545g(boolean z) {
            ViewGroup viewGroup;
            if (!this.f73067d || this.f73068e == z || (viewGroup = this.f73066c) == null) {
                return;
            }
            this.f73068e = z;
            C26231x.m2489a(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f73069f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m2546f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            if (!this.f73069f) {
                C26233z.f73143a.m2554f(this.f73064a, this.f73065b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (!this.f73069f) {
                C26233z.f73143a.m2554f(this.f73064a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: n3.g0.h0$b */
    /* loaded from: classes-dex2jar.jar:n3/g0/h0$b.class */
    public static class C26208b {

        /* renamed from: a */
        public boolean f73070a;

        /* renamed from: b */
        public boolean f73071b;

        /* renamed from: c */
        public int f73072c;

        /* renamed from: d */
        public int f73073d;

        /* renamed from: e */
        public ViewGroup f73074e;

        /* renamed from: f */
        public ViewGroup f73075f;
    }

    /* renamed from: L */
    public final void m2550L(C26227u c26227u) {
        c26227u.f73123a.put("android:visibility:visibility", Integer.valueOf(c26227u.f73124b.getVisibility()));
        c26227u.f73123a.put("android:visibility:parent", c26227u.f73124b.getParent());
        int[] iArr = new int[2];
        c26227u.f73124b.getLocationOnScreen(iArr);
        c26227u.f73123a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: M */
    public final C26208b m2549M(C26227u c26227u, C26227u c26227u2) {
        C26208b c26208b = new C26208b();
        c26208b.f73070a = false;
        c26208b.f73071b = false;
        if (c26227u == null || !c26227u.f73123a.containsKey("android:visibility:visibility")) {
            c26208b.f73072c = -1;
            c26208b.f73074e = null;
        } else {
            c26208b.f73072c = ((Integer) c26227u.f73123a.get("android:visibility:visibility")).intValue();
            c26208b.f73074e = (ViewGroup) c26227u.f73123a.get("android:visibility:parent");
        }
        if (c26227u2 == null || !c26227u2.f73123a.containsKey("android:visibility:visibility")) {
            c26208b.f73073d = -1;
            c26208b.f73075f = null;
        } else {
            c26208b.f73073d = ((Integer) c26227u2.f73123a.get("android:visibility:visibility")).intValue();
            c26208b.f73075f = (ViewGroup) c26227u2.f73123a.get("android:visibility:parent");
        }
        if (c26227u != null && c26227u2 != null) {
            int i = c26208b.f73072c;
            int i2 = c26208b.f73073d;
            if (i == i2 && c26208b.f73074e == c26208b.f73075f) {
                return c26208b;
            }
            if (i != i2) {
                if (i == 0) {
                    c26208b.f73071b = false;
                    c26208b.f73070a = true;
                } else if (i2 == 0) {
                    c26208b.f73071b = true;
                    c26208b.f73070a = true;
                }
            } else if (c26208b.f73075f == null) {
                c26208b.f73071b = false;
                c26208b.f73070a = true;
            } else if (c26208b.f73074e == null) {
                c26208b.f73071b = true;
                c26208b.f73070a = true;
            }
        } else if (c26227u == null && c26208b.f73073d == 0) {
            c26208b.f73071b = true;
            c26208b.f73070a = true;
        } else if (c26227u2 == null && c26208b.f73072c == 0) {
            c26208b.f73071b = false;
            c26208b.f73070a = true;
        }
        return c26208b;
    }

    /* renamed from: N */
    public abstract Animator m2548N(ViewGroup viewGroup, View view, C26227u c26227u, C26227u c26227u2);

    /* renamed from: O */
    public abstract Animator m2547O(ViewGroup viewGroup, View view, C26227u c26227u, C26227u c26227u2);

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: f */
    public void mo2503f(C26227u c26227u) {
        m2550L(c26227u);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0065, code lost:
        if (m2549M(m2532q(r0, false), m2529t(r0, false)).f73070a != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0344  */
    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo2535m(android.view.ViewGroup r9, p1727n3.p1789g0.C26227u r10, p1727n3.p1789g0.C26227u r11) {
        /*
            Method dump skipped, instructions count: 1193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.AbstractC26206h0.mo2535m(android.view.ViewGroup, n3.g0.u, n3.g0.u):android.animation.Animator");
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: s */
    public String[] mo2530s() {
        return f73062z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0.f73073d == 0) goto L20;
     */
    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2528u(p1727n3.p1789g0.C26227u r5, p1727n3.p1789g0.C26227u r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = r5
            if (r0 != 0) goto Lc
            r0 = r6
            if (r0 != 0) goto Lc
            r0 = 0
            return r0
        Lc:
            r0 = r5
            if (r0 == 0) goto L2f
            r0 = r6
            if (r0 == 0) goto L2f
            r0 = r6
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f73123a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f73123a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L2f
            r0 = 0
            return r0
        L2f:
            r0 = r4
            r1 = r5
            r2 = r6
            n3.g0.h0$b r0 = r0.m2549M(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f73070a
            if (r0 == 0) goto L54
            r0 = r5
            int r0 = r0.f73072c
            if (r0 == 0) goto L51
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f73073d
            if (r0 != 0) goto L54
        L51:
            r0 = 1
            r8 = r0
        L54:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.AbstractC26206h0.mo2528u(n3.g0.u, n3.g0.u):boolean");
    }
}
