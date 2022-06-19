package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p007d.C0614g;
import androidx.transition.C1116a;
import androidx.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/transition/Visibility.class */
public abstract class Visibility extends Transition {

    /* renamed from: N */
    private static final String[] f4860N = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: O */
    private int f4861O = 3;

    /* renamed from: androidx.transition.Visibility$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$a.class */
    public class C1113a extends C1168u {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f4862a;

        /* renamed from: b */
        final /* synthetic */ View f4863b;

        /* renamed from: c */
        final /* synthetic */ View f4864c;

        C1113a(ViewGroup viewGroup, View view, View view2) {
            Visibility.this = r4;
            this.f4862a = viewGroup;
            this.f4863b = view;
            this.f4864c = view2;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
            C1131e0.m30912b(this.f4862a).mo30932d(this.f4863b);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            this.f4864c.setTag(C1158p.save_overlay_view, null);
            C1131e0.m30912b(this.f4862a).mo30932d(this.f4863b);
            transition.mo30982Y(this);
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
            if (this.f4863b.getParent() == null) {
                C1131e0.m30912b(this.f4862a).mo30933c(this.f4863b);
            } else {
                Visibility.this.cancel();
            }
        }
    }

    /* renamed from: androidx.transition.Visibility$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$b.class */
    public static class C1114b extends AnimatorListenerAdapter implements Transition.AbstractC1110f, C1116a.AbstractC1117a {

        /* renamed from: a */
        private final View f4866a;

        /* renamed from: b */
        private final int f4867b;

        /* renamed from: c */
        private final ViewGroup f4868c;

        /* renamed from: d */
        private final boolean f4869d;

        /* renamed from: e */
        private boolean f4870e;

        /* renamed from: f */
        boolean f4871f = false;

        C1114b(View view, int i, boolean z) {
            this.f4866a = view;
            this.f4867b = i;
            this.f4868c = (ViewGroup) view.getParent();
            this.f4869d = z;
            m30942g(true);
        }

        /* renamed from: f */
        private void m30943f() {
            if (!this.f4871f) {
                C1144j0.m30866i(this.f4866a, this.f4867b);
                ViewGroup viewGroup = this.f4868c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m30942g(false);
        }

        /* renamed from: g */
        private void m30942g(boolean z) {
            ViewGroup viewGroup;
            if (!this.f4869d || this.f4870e == z || (viewGroup = this.f4868c) == null) {
                return;
            }
            this.f4870e = z;
            C1131e0.m30910d(viewGroup, z);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: a */
        public void mo30830a(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
            m30942g(false);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            m30943f();
            transition.mo30982Y(this);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: d */
        public void mo30828d(Transition transition) {
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
            m30942g(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4871f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m30943f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C1116a.AbstractC1117a
        public void onAnimationPause(Animator animator) {
            if (!this.f4871f) {
                C1144j0.m30866i(this.f4866a, this.f4867b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.transition.C1116a.AbstractC1117a
        public void onAnimationResume(Animator animator) {
            if (!this.f4871f) {
                C1144j0.m30866i(this.f4866a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: androidx.transition.Visibility$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Visibility$c.class */
    public static class C1115c {

        /* renamed from: a */
        boolean f4872a;

        /* renamed from: b */
        boolean f4873b;

        /* renamed from: c */
        int f4874c;

        /* renamed from: d */
        int f4875d;

        /* renamed from: e */
        ViewGroup f4876e;

        /* renamed from: f */
        ViewGroup f4877f;

        C1115c() {
        }
    }

    public Visibility() {
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4975e);
        int m33253g = C0614g.m33253g(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (m33253g != 0) {
            m30944t0(m33253g);
        }
    }

    /* renamed from: m0 */
    private void m30951m0(C1175y c1175y) {
        c1175y.f4995a.put("android:visibility:visibility", Integer.valueOf(c1175y.f4996b.getVisibility()));
        c1175y.f4995a.put("android:visibility:parent", c1175y.f4996b.getParent());
        int[] iArr = new int[2];
        c1175y.f4996b.getLocationOnScreen(iArr);
        c1175y.f4995a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: o0 */
    private C1115c m30949o0(C1175y c1175y, C1175y c1175y2) {
        C1115c c1115c = new C1115c();
        c1115c.f4872a = false;
        c1115c.f4873b = false;
        if (c1175y == null || !c1175y.f4995a.containsKey("android:visibility:visibility")) {
            c1115c.f4874c = -1;
            c1115c.f4876e = null;
        } else {
            c1115c.f4874c = ((Integer) c1175y.f4995a.get("android:visibility:visibility")).intValue();
            c1115c.f4876e = (ViewGroup) c1175y.f4995a.get("android:visibility:parent");
        }
        if (c1175y2 == null || !c1175y2.f4995a.containsKey("android:visibility:visibility")) {
            c1115c.f4875d = -1;
            c1115c.f4877f = null;
        } else {
            c1115c.f4875d = ((Integer) c1175y2.f4995a.get("android:visibility:visibility")).intValue();
            c1115c.f4877f = (ViewGroup) c1175y2.f4995a.get("android:visibility:parent");
        }
        if (c1175y != null && c1175y2 != null) {
            int i = c1115c.f4874c;
            int i2 = c1115c.f4875d;
            if (i == i2 && c1115c.f4876e == c1115c.f4877f) {
                return c1115c;
            }
            if (i != i2) {
                if (i == 0) {
                    c1115c.f4873b = false;
                    c1115c.f4872a = true;
                } else if (i2 == 0) {
                    c1115c.f4873b = true;
                    c1115c.f4872a = true;
                }
            } else if (c1115c.f4877f == null) {
                c1115c.f4873b = false;
                c1115c.f4872a = true;
            } else if (c1115c.f4876e == null) {
                c1115c.f4873b = true;
                c1115c.f4872a = true;
            }
        } else if (c1175y == null && c1115c.f4875d == 0) {
            c1115c.f4873b = true;
            c1115c.f4872a = true;
        } else if (c1175y2 == null && c1115c.f4874c == 0) {
            c1115c.f4873b = false;
            c1115c.f4872a = true;
        }
        return c1115c;
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4860N;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0.f4875d == 0) goto L20;
     */
    @Override // androidx.transition.Transition
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30952L(androidx.transition.C1175y r5, androidx.transition.C1175y r6) {
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
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f4995a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f4995a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L2f
            r0 = 0
            return r0
        L2f:
            r0 = r4
            r1 = r5
            r2 = r6
            androidx.transition.Visibility$c r0 = r0.m30949o0(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f4872a
            if (r0 == 0) goto L54
            r0 = r5
            int r0 = r0.f4874c
            if (r0 == 0) goto L51
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f4875d
            if (r0 != 0) goto L54
        L51:
            r0 = 1
            r8 = r0
        L54:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.mo30952L(androidx.transition.y, androidx.transition.y):boolean");
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m30951m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m30951m0(c1175y);
    }

    /* renamed from: n0 */
    public int m30950n0() {
        return this.f4861O;
    }

    /* renamed from: p0 */
    public Animator mo30948p0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        return null;
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        C1115c m30949o0 = m30949o0(c1175y, c1175y2);
        if (m30949o0.f4872a) {
            if (m30949o0.f4876e == null && m30949o0.f4877f == null) {
                return null;
            }
            return m30949o0.f4873b ? m30947q0(viewGroup, c1175y, m30949o0.f4874c, c1175y2, m30949o0.f4875d) : m30945s0(viewGroup, c1175y, m30949o0.f4874c, c1175y2, m30949o0.f4875d);
        }
        return null;
    }

    /* renamed from: q0 */
    public Animator m30947q0(ViewGroup viewGroup, C1175y c1175y, int i, C1175y c1175y2, int i2) {
        if ((this.f4861O & 1) != 1 || c1175y2 == null) {
            return null;
        }
        if (c1175y == null) {
            View view = (View) c1175y2.f4996b.getParent();
            if (m30949o0(m30985y(view, false), m31011K(view, false)).f4872a) {
                return null;
            }
        }
        return mo30948p0(viewGroup, c1175y2.f4996b, c1175y, c1175y2);
    }

    /* renamed from: r0 */
    public Animator mo30946r0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x010a, code lost:
        if (r8.f4813C != false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0092  */
    /* renamed from: s0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator m30945s0(android.view.ViewGroup r9, androidx.transition.C1175y r10, int r11, androidx.transition.C1175y r12, int r13) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.m30945s0(android.view.ViewGroup, androidx.transition.y, int, androidx.transition.y, int):android.animation.Animator");
    }

    /* renamed from: t0 */
    public void m30944t0(int i) {
        if ((i & (-4)) == 0) {
            this.f4861O = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }
}
