package androidx.p045j;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import androidx.core.p023g.C0552u;
/* renamed from: androidx.j.c */
/* loaded from: classes-dex2jar.jar:androidx/j/c.class */
public class C0809c extends AbstractC0838n {

    /* renamed from: a */
    private static final String[] f2596a = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: b */
    private static final Property<Drawable, PointF> f2597b = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.j.c.1

        /* renamed from: a */
        private Rect f2607a = new Rect();

        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2607a);
            return new PointF(this.f2607a.left, this.f2607a.top);
        }

        /* renamed from: a */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2607a);
            this.f2607a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2607a);
        }
    };

    /* renamed from: c */
    private static final Property<C0820a, PointF> f2598c = new Property<C0820a, PointF>(PointF.class, "topLeft") { // from class: androidx.j.c.3
        /* renamed from: a */
        public PointF get(C0820a c0820a) {
            return null;
        }

        /* renamed from: a */
        public void set(C0820a c0820a, PointF pointF) {
            c0820a.m5289a(pointF);
        }
    };

    /* renamed from: d */
    private static final Property<C0820a, PointF> f2599d = new Property<C0820a, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.c.4
        /* renamed from: a */
        public PointF get(C0820a c0820a) {
            return null;
        }

        /* renamed from: a */
        public void set(C0820a c0820a, PointF pointF) {
            c0820a.m5288b(pointF);
        }
    };

    /* renamed from: e */
    private static final Property<View, PointF> f2600e = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.c.5
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0794ae.m5335a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };

    /* renamed from: f */
    private static final Property<View, PointF> f2601f = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.j.c.6
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0794ae.m5335a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };

    /* renamed from: g */
    private static final Property<View, PointF> f2602g = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.j.c.7
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            C0794ae.m5335a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };

    /* renamed from: k */
    private static C0835k f2603k = new C0835k();

    /* renamed from: h */
    private int[] f2604h = new int[2];

    /* renamed from: i */
    private boolean f2605i = false;

    /* renamed from: j */
    private boolean f2606j = false;

    /* renamed from: androidx.j.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/c$a.class */
    public static class C0820a {

        /* renamed from: a */
        private int f2626a;

        /* renamed from: b */
        private int f2627b;

        /* renamed from: c */
        private int f2628c;

        /* renamed from: d */
        private int f2629d;

        /* renamed from: e */
        private View f2630e;

        /* renamed from: f */
        private int f2631f;

        /* renamed from: g */
        private int f2632g;

        C0820a(View view) {
            this.f2630e = view;
        }

        /* renamed from: a */
        private void m5290a() {
            C0794ae.m5335a(this.f2630e, this.f2626a, this.f2627b, this.f2628c, this.f2629d);
            this.f2631f = 0;
            this.f2632g = 0;
        }

        /* renamed from: a */
        void m5289a(PointF pointF) {
            this.f2626a = Math.round(pointF.x);
            this.f2627b = Math.round(pointF.y);
            this.f2631f++;
            if (this.f2631f == this.f2632g) {
                m5290a();
            }
        }

        /* renamed from: b */
        void m5288b(PointF pointF) {
            this.f2628c = Math.round(pointF.x);
            this.f2629d = Math.round(pointF.y);
            this.f2632g++;
            if (this.f2631f == this.f2632g) {
                m5290a();
            }
        }
    }

    /* renamed from: a */
    private void m5303a(C0855t c0855t) {
        View view = c0855t.f2698b;
        if (!C0552u.m6295A(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c0855t.f2697a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c0855t.f2697a.put("android:changeBounds:parent", c0855t.f2698b.getParent());
        if (this.f2606j) {
            c0855t.f2698b.getLocationInWindow(this.f2604h);
            c0855t.f2697a.put("android:changeBounds:windowX", Integer.valueOf(this.f2604h[0]));
            c0855t.f2697a.put("android:changeBounds:windowY", Integer.valueOf(this.f2604h[1]));
        }
        if (!this.f2605i) {
            return;
        }
        c0855t.f2697a.put("android:changeBounds:clip", C0552u.m6293C(view));
    }

    /* renamed from: a */
    private boolean m5304a(View view, View view2) {
        boolean z = true;
        if (this.f2606j) {
            C0855t matchedTransitionValues = getMatchedTransitionValues(view, true);
            if (matchedTransitionValues == null) {
                if (view == view2) {
                    z = true;
                }
                z = false;
            } else {
                if (view2 == matchedTransitionValues.f2698b) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureEndValues(C0855t c0855t) {
        m5303a(c0855t);
    }

    @Override // androidx.p045j.AbstractC0838n
    public void captureStartValues(C0855t c0855t) {
        m5303a(c0855t);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x011c, code lost:
        if (r0 != r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0146, code lost:
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03ae A[ORIG_RETURN, RETURN] */
    @Override // androidx.p045j.AbstractC0838n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator createAnimator(final android.view.ViewGroup r12, androidx.p045j.C0855t r13, androidx.p045j.C0855t r14) {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.C0809c.createAnimator(android.view.ViewGroup, androidx.j.t, androidx.j.t):android.animation.Animator");
    }

    @Override // androidx.p045j.AbstractC0838n
    public String[] getTransitionProperties() {
        return f2596a;
    }
}
