package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.p045j.AbstractC0838n;
import androidx.p045j.C0787a;
/* renamed from: androidx.j.aj */
/* loaded from: classes-dex2jar.jar:androidx/j/aj.class */
public abstract class AbstractC0801aj extends AbstractC0838n {

    /* renamed from: a */
    private static final String[] f2577a = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: b */
    private int f2578b = 3;

    /* renamed from: androidx.j.aj$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/aj$a.class */
    public static class C0803a extends AnimatorListenerAdapter implements C0787a.AbstractC0788a, AbstractC0838n.AbstractC0845d {

        /* renamed from: a */
        boolean f2582a = false;

        /* renamed from: b */
        private final View f2583b;

        /* renamed from: c */
        private final int f2584c;

        /* renamed from: d */
        private final ViewGroup f2585d;

        /* renamed from: e */
        private final boolean f2586e;

        /* renamed from: f */
        private boolean f2587f;

        C0803a(View view, int i, boolean z) {
            this.f2583b = view;
            this.f2584c = i;
            this.f2585d = (ViewGroup) view.getParent();
            this.f2586e = z;
            m5306a(true);
        }

        /* renamed from: a */
        private void m5307a() {
            if (!this.f2582a) {
                C0794ae.m5336a(this.f2583b, this.f2584c);
                ViewGroup viewGroup = this.f2585d;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            m5306a(false);
        }

        /* renamed from: a */
        private void m5306a(boolean z) {
            ViewGroup viewGroup;
            if (!this.f2586e || this.f2587f == z || (viewGroup = this.f2585d) == null) {
                return;
            }
            this.f2587f = z;
            C0860y.m5213a(viewGroup, z);
        }

        @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: a */
        public void mo5254a(AbstractC0838n abstractC0838n) {
        }

        @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: b */
        public void mo5224b(AbstractC0838n abstractC0838n) {
            m5307a();
            abstractC0838n.removeListener(this);
        }

        @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: c */
        public void mo5253c(AbstractC0838n abstractC0838n) {
            m5306a(false);
        }

        @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: d */
        public void mo5252d(AbstractC0838n abstractC0838n) {
            m5306a(true);
        }

        @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
        /* renamed from: e */
        public void mo5223e(AbstractC0838n abstractC0838n) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2582a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m5307a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.p045j.C0787a.AbstractC0788a
        public void onAnimationPause(Animator animator) {
            if (!this.f2582a) {
                C0794ae.m5336a(this.f2583b, this.f2584c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.p045j.C0787a.AbstractC0788a
        public void onAnimationResume(Animator animator) {
            if (!this.f2582a) {
                C0794ae.m5336a(this.f2583b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: androidx.j.aj$b */
    /* loaded from: classes-dex2jar.jar:androidx/j/aj$b.class */
    public static class C0804b {

        /* renamed from: a */
        boolean f2588a;

        /* renamed from: b */
        boolean f2589b;

        /* renamed from: c */
        int f2590c;

        /* renamed from: d */
        int f2591d;

        /* renamed from: e */
        ViewGroup f2592e;

        /* renamed from: f */
        ViewGroup f2593f;

        C0804b() {
        }
    }

    /* renamed from: a */
    private C0804b m5309a(C0855t c0855t, C0855t c0855t2) {
        C0804b c0804b = new C0804b();
        c0804b.f2588a = false;
        c0804b.f2589b = false;
        if (c0855t == null || !c0855t.f2697a.containsKey("android:visibility:visibility")) {
            c0804b.f2590c = -1;
            c0804b.f2592e = null;
        } else {
            c0804b.f2590c = ((Integer) c0855t.f2697a.get("android:visibility:visibility")).intValue();
            c0804b.f2592e = (ViewGroup) c0855t.f2697a.get("android:visibility:parent");
        }
        if (c0855t2 == null || !c0855t2.f2697a.containsKey("android:visibility:visibility")) {
            c0804b.f2591d = -1;
            c0804b.f2593f = null;
        } else {
            c0804b.f2591d = ((Integer) c0855t2.f2697a.get("android:visibility:visibility")).intValue();
            c0804b.f2593f = (ViewGroup) c0855t2.f2697a.get("android:visibility:parent");
        }
        if (c0855t == null || c0855t2 == null) {
            if (c0855t == null && c0804b.f2591d == 0) {
                c0804b.f2589b = true;
                c0804b.f2588a = true;
            } else if (c0855t2 == null && c0804b.f2590c == 0) {
                c0804b.f2589b = false;
                c0804b.f2588a = true;
            }
        } else if (c0804b.f2590c == c0804b.f2591d && c0804b.f2592e == c0804b.f2593f) {
            return c0804b;
        } else {
            if (c0804b.f2590c != c0804b.f2591d) {
                if (c0804b.f2590c == 0) {
                    c0804b.f2589b = false;
                    c0804b.f2588a = true;
                } else if (c0804b.f2591d == 0) {
                    c0804b.f2589b = true;
                    c0804b.f2588a = true;
                }
            } else if (c0804b.f2593f == null) {
                c0804b.f2589b = false;
                c0804b.f2588a = true;
            } else if (c0804b.f2592e == null) {
                c0804b.f2589b = true;
                c0804b.f2588a = true;
            }
        }
        return c0804b;
    }

    /* renamed from: a */
    private void m5310a(C0855t c0855t) {
        c0855t.f2697a.put("android:visibility:visibility", Integer.valueOf(c0855t.f2698b.getVisibility()));
        c0855t.f2697a.put("android:visibility:parent", c0855t.f2698b.getParent());
        int[] iArr = new int[2];
        c0855t.f2698b.getLocationOnScreen(iArr);
        c0855t.f2697a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: a */
    public Animator mo5286a(ViewGroup viewGroup, View view, C0855t c0855t, C0855t c0855t2) {
        return null;
    }

    /* renamed from: a */
    public Animator m5311a(ViewGroup viewGroup, C0855t c0855t, int i, C0855t c0855t2, int i2) {
        if ((this.f2578b & 1) != 1 || c0855t2 == null) {
            return null;
        }
        if (c0855t == null) {
            View view = (View) c0855t2.f2698b.getParent();
            if (m5309a(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).f2588a) {
                return null;
            }
        }
        return mo5286a(viewGroup, c0855t2.f2698b, c0855t, c0855t2);
    }

    /* renamed from: a */
    public void m5312a(int i) {
        if ((i & (-4)) == 0) {
            this.f2578b = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    /* renamed from: b */
    public Animator mo5284b(ViewGroup viewGroup, View view, C0855t c0855t, C0855t c0855t2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01de A[RETURN] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator m5308b(android.view.ViewGroup r8, androidx.p045j.C0855t r9, int r10, androidx.p045j.C0855t r11, int r12) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0801aj.m5308b(android.view.ViewGroup, androidx.j.t, int, androidx.j.t, int):android.animation.Animator");
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureEndValues(C0855t c0855t) {
        m5310a(c0855t);
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureStartValues(C0855t c0855t) {
        m5310a(c0855t);
    }

    @Override // androidx.p045j.AbstractC0838n
    public Animator createAnimator(ViewGroup viewGroup, C0855t c0855t, C0855t c0855t2) {
        C0804b m5309a = m5309a(c0855t, c0855t2);
        if (m5309a.f2588a) {
            if (m5309a.f2592e == null && m5309a.f2593f == null) {
                return null;
            }
            return m5309a.f2589b ? m5311a(viewGroup, c0855t, m5309a.f2590c, c0855t2, m5309a.f2591d) : m5308b(viewGroup, c0855t, m5309a.f2590c, c0855t2, m5309a.f2591d);
        }
        return null;
    }

    @Override // androidx.p045j.AbstractC0838n
    public String[] getTransitionProperties() {
        return f2577a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0.f2591d == 0) goto L20;
     */
    @Override // androidx.p045j.AbstractC0838n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isTransitionRequired(androidx.p045j.C0855t r5, androidx.p045j.C0855t r6) {
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
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f2697a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f2697a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 == r1) goto L2f
            r0 = 0
            return r0
        L2f:
            r0 = r4
            r1 = r5
            r2 = r6
            androidx.j.aj$b r0 = r0.m5309a(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f2588a
            if (r0 == 0) goto L54
            r0 = r5
            int r0 = r0.f2590c
            if (r0 == 0) goto L51
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f2591d
            if (r0 != 0) goto L54
        L51:
            r0 = 1
            r8 = r0
        L54:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0801aj.isTransitionRequired(androidx.j.t, androidx.j.t):boolean");
    }
}
