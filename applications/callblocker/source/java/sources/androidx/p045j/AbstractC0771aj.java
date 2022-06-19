package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.p045j.AbstractC0807m;
import androidx.p045j.C0758a;
import androidx.p045j.C0803j;
/* renamed from: androidx.j.aj */
/* loaded from: classes-dex2jar.jar:androidx/j/aj.class */
public abstract class AbstractC0771aj extends AbstractC0807m {

    /* renamed from: h */
    private static final String[] f2676h = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: i */
    private int f2677i = 3;

    /* renamed from: androidx.j.aj$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/aj$a.class */
    public static class C0773a extends AnimatorListenerAdapter implements C0758a.AbstractC0759a, AbstractC0807m.AbstractC0813c {

        /* renamed from: a */
        boolean f2682a = false;

        /* renamed from: b */
        private final View f2683b;

        /* renamed from: c */
        private final int f2684c;

        /* renamed from: d */
        private final ViewGroup f2685d;

        /* renamed from: e */
        private final boolean f2686e;

        /* renamed from: f */
        private boolean f2687f;

        C0773a(View view, int i, boolean z) {
            this.f2683b = view;
            this.f2684c = i;
            this.f2685d = (ViewGroup) view.getParent();
            this.f2686e = z;
            m19471a(true);
        }

        /* renamed from: a */
        private void m19472a() {
            if (!this.f2682a) {
                C0762ac.m19498a(this.f2683b, this.f2684c);
                if (this.f2685d != null) {
                    this.f2685d.invalidate();
                }
            }
            m19471a(false);
        }

        /* renamed from: a */
        private void m19471a(boolean z) {
            if (!this.f2686e || this.f2687f == z || this.f2685d == null) {
                return;
            }
            this.f2687f = z;
            C0828x.m19338a(this.f2685d, z);
        }

        @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: a */
        public void mo19389a(AbstractC0807m abstractC0807m) {
        }

        @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: b */
        public void mo19347b(AbstractC0807m abstractC0807m) {
            m19472a();
            abstractC0807m.mo19364b(this);
        }

        @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: c */
        public void mo19388c(AbstractC0807m abstractC0807m) {
            m19471a(false);
        }

        @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: d */
        public void mo19387d(AbstractC0807m abstractC0807m) {
            m19471a(true);
        }

        @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
        /* renamed from: e */
        public void mo19346e(AbstractC0807m abstractC0807m) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2682a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            m19472a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.p045j.C0758a.AbstractC0759a
        public void onAnimationPause(Animator animator) {
            if (!this.f2682a) {
                C0762ac.m19498a(this.f2683b, this.f2684c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.p045j.C0758a.AbstractC0759a
        public void onAnimationResume(Animator animator) {
            if (!this.f2682a) {
                C0762ac.m19498a(this.f2683b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: androidx.j.aj$b */
    /* loaded from: classes-dex2jar.jar:androidx/j/aj$b.class */
    public static class C0774b {

        /* renamed from: a */
        boolean f2688a;

        /* renamed from: b */
        boolean f2689b;

        /* renamed from: c */
        int f2690c;

        /* renamed from: d */
        int f2691d;

        /* renamed from: e */
        ViewGroup f2692e;

        /* renamed from: f */
        ViewGroup f2693f;

        C0774b() {
        }
    }

    /* renamed from: b */
    private C0774b m19474b(C0823s c0823s, C0823s c0823s2) {
        C0774b c0774b = new C0774b();
        c0774b.f2688a = false;
        c0774b.f2689b = false;
        if (c0823s == null || !c0823s.f2822a.containsKey("android:visibility:visibility")) {
            c0774b.f2690c = -1;
            c0774b.f2692e = null;
        } else {
            c0774b.f2690c = ((Integer) c0823s.f2822a.get("android:visibility:visibility")).intValue();
            c0774b.f2692e = (ViewGroup) c0823s.f2822a.get("android:visibility:parent");
        }
        if (c0823s2 == null || !c0823s2.f2822a.containsKey("android:visibility:visibility")) {
            c0774b.f2691d = -1;
            c0774b.f2693f = null;
        } else {
            c0774b.f2691d = ((Integer) c0823s2.f2822a.get("android:visibility:visibility")).intValue();
            c0774b.f2693f = (ViewGroup) c0823s2.f2822a.get("android:visibility:parent");
        }
        if (c0823s == null || c0823s2 == null) {
            if (c0823s == null && c0774b.f2691d == 0) {
                c0774b.f2689b = true;
                c0774b.f2688a = true;
            } else if (c0823s2 == null && c0774b.f2690c == 0) {
                c0774b.f2689b = false;
                c0774b.f2688a = true;
            }
        } else if (c0774b.f2690c != c0774b.f2691d || c0774b.f2692e != c0774b.f2693f) {
            if (c0774b.f2690c != c0774b.f2691d) {
                if (c0774b.f2690c == 0) {
                    c0774b.f2689b = false;
                    c0774b.f2688a = true;
                } else if (c0774b.f2691d == 0) {
                    c0774b.f2689b = true;
                    c0774b.f2688a = true;
                }
            } else if (c0774b.f2693f == null) {
                c0774b.f2689b = false;
                c0774b.f2688a = true;
            } else if (c0774b.f2692e == null) {
                c0774b.f2689b = true;
                c0774b.f2688a = true;
            }
        }
        return c0774b;
    }

    /* renamed from: d */
    private void m19473d(C0823s c0823s) {
        c0823s.f2822a.put("android:visibility:visibility", Integer.valueOf(c0823s.f2823b.getVisibility()));
        c0823s.f2822a.put("android:visibility:parent", c0823s.f2823b.getParent());
        int[] iArr = new int[2];
        c0823s.f2823b.getLocationOnScreen(iArr);
        c0823s.f2822a.put("android:visibility:screenLocation", iArr);
    }

    /* renamed from: a */
    public Animator mo19451a(ViewGroup viewGroup, View view, C0823s c0823s, C0823s c0823s2) {
        return null;
    }

    /* renamed from: a */
    public Animator m19476a(ViewGroup viewGroup, C0823s c0823s, int i, C0823s c0823s2, int i2) {
        Animator animator;
        if ((this.f2677i & 1) != 1 || c0823s2 == null) {
            animator = null;
        } else {
            if (c0823s == null) {
                View view = (View) c0823s2.f2823b.getParent();
                if (m19474b(m19406b(view, false), m19419a(view, false)).f2688a) {
                    animator = null;
                }
            }
            animator = mo19451a(viewGroup, c0823s2.f2823b, c0823s, c0823s2);
        }
        return animator;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public Animator mo2832a(ViewGroup viewGroup, C0823s c0823s, C0823s c0823s2) {
        C0774b m19474b = m19474b(c0823s, c0823s2);
        return (!m19474b.f2688a || (m19474b.f2692e == null && m19474b.f2693f == null)) ? null : m19474b.f2689b ? m19476a(viewGroup, c0823s, m19474b.f2690c, c0823s2, m19474b.f2691d) : m19475b(viewGroup, c0823s, m19474b.f2690c, c0823s2, m19474b.f2691d);
    }

    /* renamed from: a */
    public void m19477a(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f2677i = i;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo2831a(C0823s c0823s) {
        m19473d(c0823s);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r6.f2822a.containsKey("android:visibility:visibility") == r5.f2822a.containsKey("android:visibility:visibility")) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
        if (r0.f2691d == 0) goto L21;
     */
    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo19412a(androidx.p045j.C0823s r5, androidx.p045j.C0823s r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L10
            r0 = r6
            if (r0 != 0) goto L10
            r0 = r7
            r8 = r0
        Ld:
            r0 = r8
            return r0
        L10:
            r0 = r5
            if (r0 == 0) goto L34
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r7
            r8 = r0
            r0 = r6
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f2822a
            java.lang.String r1 = "android:visibility:visibility"
            boolean r0 = r0.containsKey(r1)
            r1 = r5
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.f2822a
            java.lang.String r2 = "android:visibility:visibility"
            boolean r1 = r1.containsKey(r2)
            if (r0 != r1) goto Ld
        L34:
            r0 = r4
            r1 = r5
            r2 = r6
            androidx.j.aj$b r0 = r0.m19474b(r1, r2)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            boolean r0 = r0.f2688a
            if (r0 == 0) goto Ld
            r0 = r5
            int r0 = r0.f2690c
            if (r0 == 0) goto L56
            r0 = r7
            r8 = r0
            r0 = r5
            int r0 = r0.f2691d
            if (r0 != 0) goto Ld
        L56:
            r0 = 1
            r8 = r0
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0771aj.mo19412a(androidx.j.s, androidx.j.s):boolean");
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public String[] mo19423a() {
        return f2676h;
    }

    /* renamed from: b */
    public Animator mo19449b(ViewGroup viewGroup, View view, C0823s c0823s, C0823s c0823s2) {
        return null;
    }

    /* renamed from: b */
    public Animator m19475b(final ViewGroup viewGroup, C0823s c0823s, int i, C0823s c0823s2, int i2) {
        Animator animator;
        boolean z;
        boolean z2;
        View view;
        if ((this.f2677i & 2) != 2) {
            animator = null;
        } else {
            animator = null;
            if (c0823s != null) {
                final View view2 = c0823s.f2823b;
                View view3 = c0823s2 != null ? c0823s2.f2823b : null;
                View view4 = (View) view2.getTag(C0803j.C0804a.save_overlay_view);
                if (view4 != null) {
                    z2 = true;
                    view = null;
                } else {
                    if (view3 == null || view3.getParent() == null) {
                        if (view3 != null) {
                            z = false;
                            view4 = view3;
                            view3 = null;
                        } else {
                            z = true;
                            view3 = null;
                            view4 = null;
                        }
                    } else if (i2 == 4) {
                        z = false;
                        view4 = null;
                    } else if (view2 == view3) {
                        z = false;
                        view4 = null;
                    } else {
                        z = true;
                        view3 = null;
                        view4 = null;
                    }
                    if (z) {
                        if (view2.getParent() == null) {
                            z2 = false;
                            view4 = view2;
                            view = view3;
                        } else if (view2.getParent() instanceof View) {
                            View view5 = (View) view2.getParent();
                            if (!m19474b(m19419a(view5, true), m19406b(view5, true)).f2688a) {
                                view4 = C0822r.m19343a(viewGroup, view2, view5);
                                z2 = false;
                                view = view3;
                            } else {
                                int id = view5.getId();
                                if (view5.getParent() == null && id != -1 && viewGroup.findViewById(id) != null && this.f2776e) {
                                    z2 = false;
                                    view4 = view2;
                                    view = view3;
                                }
                            }
                        }
                    }
                    z2 = false;
                    view = view3;
                }
                if (view4 != null) {
                    if (!z2) {
                        int[] iArr = (int[]) c0823s.f2822a.get("android:visibility:screenLocation");
                        int i3 = iArr[0];
                        int i4 = iArr[1];
                        int[] iArr2 = new int[2];
                        viewGroup.getLocationOnScreen(iArr2);
                        view4.offsetLeftAndRight((i3 - iArr2[0]) - view4.getLeft());
                        view4.offsetTopAndBottom((i4 - iArr2[1]) - view4.getTop());
                        C0828x.m19339a(viewGroup).mo19341a(view4);
                    }
                    Animator mo19449b = mo19449b(viewGroup, view4, c0823s, c0823s2);
                    animator = mo19449b;
                    if (!z2) {
                        if (mo19449b == null) {
                            C0828x.m19339a(viewGroup).mo19340b(view4);
                            animator = mo19449b;
                        } else {
                            view2.setTag(C0803j.C0804a.save_overlay_view, view4);
                            final View view6 = view4;
                            mo19372a(new C0814n() { // from class: androidx.j.aj.1
                                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                                /* renamed from: b */
                                public void mo19347b(AbstractC0807m abstractC0807m) {
                                    view2.setTag(C0803j.C0804a.save_overlay_view, null);
                                    C0828x.m19339a(viewGroup).mo19340b(view6);
                                    abstractC0807m.mo19364b(this);
                                }

                                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                                /* renamed from: c */
                                public void mo19388c(AbstractC0807m abstractC0807m) {
                                    C0828x.m19339a(viewGroup).mo19340b(view6);
                                }

                                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                                /* renamed from: d */
                                public void mo19387d(AbstractC0807m abstractC0807m) {
                                    if (view6.getParent() == null) {
                                        C0828x.m19339a(viewGroup).mo19341a(view6);
                                    } else {
                                        AbstractC0771aj.this.mo19351l();
                                    }
                                }
                            });
                            animator = mo19449b;
                        }
                    }
                } else {
                    animator = null;
                    if (view != null) {
                        int visibility = view.getVisibility();
                        C0762ac.m19498a(view, 0);
                        animator = mo19449b(viewGroup, view, c0823s, c0823s2);
                        if (animator != null) {
                            C0773a c0773a = new C0773a(view, i2, true);
                            animator.addListener(c0773a);
                            C0758a.m19502a(animator, c0773a);
                            mo19372a(c0773a);
                        } else {
                            C0762ac.m19498a(view, visibility);
                        }
                    }
                }
            }
        }
        return animator;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: b */
    public void mo2830b(C0823s c0823s) {
        m19473d(c0823s);
    }
}
