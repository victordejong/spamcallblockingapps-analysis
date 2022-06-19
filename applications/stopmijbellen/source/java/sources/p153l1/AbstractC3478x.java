package p153l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p153l1.AbstractC3451g;
/* renamed from: l1.x */
/* loaded from: classes-dex2jar.jar:l1/x.class */
public abstract class AbstractC3478x extends AbstractC3451g {

    /* renamed from: y */
    public static final String[] f11582y = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: x */
    public int f11583x = 3;

    /* renamed from: l1.x$a */
    /* loaded from: classes-dex2jar.jar:l1/x$a.class */
    public static class C3479a extends AnimatorListenerAdapter implements AbstractC3451g.AbstractC3455d {

        /* renamed from: a */
        public final View f11584a;

        /* renamed from: b */
        public final int f11585b;

        /* renamed from: c */
        public final ViewGroup f11586c;

        /* renamed from: d */
        public final boolean f11587d;

        /* renamed from: e */
        public boolean f11588e;

        /* renamed from: f */
        public boolean f11589f = false;

        public C3479a(View view, int i, boolean z) {
            this.f11584a = view;
            this.f11585b = i;
            this.f11586c = (ViewGroup) view.getParent();
            this.f11587d = z;
            m2230g(true);
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: a */
        public void mo2236a(AbstractC3451g abstractC3451g) {
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: b */
        public void mo2235b(AbstractC3451g abstractC3451g) {
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: c */
        public void mo2234c(AbstractC3451g abstractC3451g) {
            m2230g(false);
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            m2231f();
            abstractC3451g.mo2251v(this);
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: e */
        public void mo2232e(AbstractC3451g abstractC3451g) {
            m2230g(true);
        }

        /* renamed from: f */
        public final void m2231f() {
            if (!this.f11589f) {
                C3469q.f11571a.mo190m(this.f11584a, this.f11585b);
                ViewGroup viewGroup = this.f11586c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m2230g(false);
        }

        /* renamed from: g */
        public final void m2230g(boolean z) {
            ViewGroup viewGroup;
            if (!this.f11587d || this.f11588e == z || (viewGroup = this.f11586c) == null) {
                return;
            }
            this.f11588e = z;
            C3467o.m2246a(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f11589f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m2231f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            if (!this.f11589f) {
                C3469q.f11571a.mo190m(this.f11584a, this.f11585b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (!this.f11589f) {
                C3469q.f11571a.mo190m(this.f11584a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: l1.x$b */
    /* loaded from: classes-dex2jar.jar:l1/x$b.class */
    public static class C3480b {

        /* renamed from: a */
        public boolean f11590a;

        /* renamed from: b */
        public boolean f11591b;

        /* renamed from: c */
        public int f11592c;

        /* renamed from: d */
        public int f11593d;

        /* renamed from: e */
        public ViewGroup f11594e;

        /* renamed from: f */
        public ViewGroup f11595f;
    }

    /* renamed from: H */
    public final void m2243H(C3466n c3466n) {
        c3466n.f11566a.put("android:visibility:visibility", Integer.valueOf(c3466n.f11567b.getVisibility()));
        c3466n.f11566a.put("android:visibility:parent", c3466n.f11567b.getParent());
        int[] iArr = new int[2];
        c3466n.f11567b.getLocationOnScreen(iArr);
        c3466n.f11566a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: I */
    public final C3480b m2242I(C3466n c3466n, C3466n c3466n2) {
        C3480b c3480b = new C3480b();
        c3480b.f11590a = false;
        c3480b.f11591b = false;
        if (c3466n == null || !c3466n.f11566a.containsKey("android:visibility:visibility")) {
            c3480b.f11592c = -1;
            c3480b.f11594e = null;
        } else {
            c3480b.f11592c = ((Integer) c3466n.f11566a.get("android:visibility:visibility")).intValue();
            c3480b.f11594e = (ViewGroup) c3466n.f11566a.get("android:visibility:parent");
        }
        if (c3466n2 == null || !c3466n2.f11566a.containsKey("android:visibility:visibility")) {
            c3480b.f11593d = -1;
            c3480b.f11595f = null;
        } else {
            c3480b.f11593d = ((Integer) c3466n2.f11566a.get("android:visibility:visibility")).intValue();
            c3480b.f11595f = (ViewGroup) c3466n2.f11566a.get("android:visibility:parent");
        }
        if (c3466n != null && c3466n2 != null) {
            int i = c3480b.f11592c;
            int i2 = c3480b.f11593d;
            if (i == i2 && c3480b.f11594e == c3480b.f11595f) {
                return c3480b;
            }
            if (i != i2) {
                if (i == 0) {
                    c3480b.f11591b = false;
                    c3480b.f11590a = true;
                } else if (i2 == 0) {
                    c3480b.f11591b = true;
                    c3480b.f11590a = true;
                }
            } else if (c3480b.f11595f == null) {
                c3480b.f11591b = false;
                c3480b.f11590a = true;
            } else if (c3480b.f11594e == null) {
                c3480b.f11591b = true;
                c3480b.f11590a = true;
            }
        } else if (c3466n == null && c3480b.f11593d == 0) {
            c3480b.f11591b = true;
            c3480b.f11590a = true;
        } else if (c3466n2 == null && c3480b.f11592c == 0) {
            c3480b.f11591b = false;
            c3480b.f11590a = true;
        }
        return c3480b;
    }

    /* renamed from: J */
    public abstract Animator mo2241J(ViewGroup viewGroup, View view, C3466n c3466n, C3466n c3466n2);

    @Override // p153l1.AbstractC3451g
    /* renamed from: d */
    public void mo2240d(C3466n c3466n) {
        m2243H(c3466n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0065, code lost:
        if (m2242I(m2275n(r0, false), m2273q(r0, false)).f11590a != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:94:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x036f  */
    @Override // p153l1.AbstractC3451g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo2239k(android.view.ViewGroup r9, p153l1.C3466n r10, p153l1.C3466n r11) {
        /*
            Method dump skipped, instructions count: 1228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p153l1.AbstractC3478x.mo2239k(android.view.ViewGroup, l1.n, l1.n):android.animation.Animator");
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: p */
    public String[] mo2238p() {
        return f11582y;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0.f11593d == 0) goto L20;
     */
    @Override // p153l1.AbstractC3451g
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2237r(p153l1.C3466n r5, p153l1.C3466n r6) {
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
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f11566a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f11566a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L2f
            r0 = 0
            return r0
        L2f:
            r0 = r4
            r1 = r5
            r2 = r6
            l1.x$b r0 = r0.m2242I(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f11590a
            if (r0 == 0) goto L54
            r0 = r5
            int r0 = r0.f11592c
            if (r0 == 0) goto L51
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f11593d
            if (r0 != 0) goto L54
        L51:
            r0 = 1
            r8 = r0
        L54:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p153l1.AbstractC3478x.mo2237r(l1.n, l1.n):boolean");
    }
}
