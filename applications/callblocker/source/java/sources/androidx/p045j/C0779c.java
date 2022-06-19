package androidx.p045j;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.j.c */
/* loaded from: classes-dex2jar.jar:androidx/j/c.class */
public class C0779c extends AbstractC0807m {

    /* renamed from: h */
    private static final String[] f2696h = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: i */
    private static final Property<Drawable, PointF> f2697i = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.j.c.1

        /* renamed from: a */
        private Rect f2707a = new Rect();

        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2707a);
            return new PointF(this.f2707a.left, this.f2707a.top);
        }

        /* renamed from: a */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2707a);
            this.f2707a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2707a);
        }
    };

    /* renamed from: j */
    private static final Property<C0790a, PointF> f2698j = new Property<C0790a, PointF>(PointF.class, "topLeft") { // from class: androidx.j.c.3
        /* renamed from: a */
        public PointF get(C0790a c0790a) {
            return null;
        }

        /* renamed from: a */
        public void set(C0790a c0790a, PointF pointF) {
            c0790a.m19454a(pointF);
        }
    };

    /* renamed from: k */
    private static final Property<C0790a, PointF> f2699k = new Property<C0790a, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.c.4
        /* renamed from: a */
        public PointF get(C0790a c0790a) {
            return null;
        }

        /* renamed from: a */
        public void set(C0790a c0790a, PointF pointF) {
            c0790a.m19453b(pointF);
        }
    };

    /* renamed from: l */
    private static final Property<View, PointF> f2700l = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.j.c.5
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0762ac.m19497a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };

    /* renamed from: m */
    private static final Property<View, PointF> f2701m = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.j.c.6
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            C0762ac.m19497a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };

    /* renamed from: n */
    private static final Property<View, PointF> f2702n = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.j.c.7
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: a */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            C0762ac.m19497a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };

    /* renamed from: r */
    private static C0805k f2703r = new C0805k();

    /* renamed from: o */
    private int[] f2704o = new int[2];

    /* renamed from: p */
    private boolean f2705p = false;

    /* renamed from: q */
    private boolean f2706q = false;

    /* renamed from: androidx.j.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/c$a.class */
    public static class C0790a {

        /* renamed from: a */
        private int f2726a;

        /* renamed from: b */
        private int f2727b;

        /* renamed from: c */
        private int f2728c;

        /* renamed from: d */
        private int f2729d;

        /* renamed from: e */
        private View f2730e;

        /* renamed from: f */
        private int f2731f;

        /* renamed from: g */
        private int f2732g;

        C0790a(View view) {
            this.f2730e = view;
        }

        /* renamed from: a */
        private void m19455a() {
            C0762ac.m19497a(this.f2730e, this.f2726a, this.f2727b, this.f2728c, this.f2729d);
            this.f2731f = 0;
            this.f2732g = 0;
        }

        /* renamed from: a */
        void m19454a(PointF pointF) {
            this.f2726a = Math.round(pointF.x);
            this.f2727b = Math.round(pointF.y);
            this.f2731f++;
            if (this.f2731f == this.f2732g) {
                m19455a();
            }
        }

        /* renamed from: b */
        void m19453b(PointF pointF) {
            this.f2728c = Math.round(pointF.x);
            this.f2729d = Math.round(pointF.y);
            this.f2732g++;
            if (this.f2731f == this.f2732g) {
                m19455a();
            }
        }
    }

    /* renamed from: a */
    private boolean m19469a(View view, View view2) {
        boolean z = true;
        if (this.f2706q) {
            C0823s b = m19406b(view, true);
            if (b == null) {
                z = view == view2;
            } else {
                z = true;
                if (view2 != b.f2823b) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    private void m19468d(C0823s c0823s) {
        View view = c0823s.f2823b;
        if (!C0595u.m20299y(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c0823s.f2822a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c0823s.f2822a.put("android:changeBounds:parent", c0823s.f2823b.getParent());
        if (this.f2706q) {
            c0823s.f2823b.getLocationInWindow(this.f2704o);
            c0823s.f2822a.put("android:changeBounds:windowX", Integer.valueOf(this.f2704o[0]));
            c0823s.f2822a.put("android:changeBounds:windowY", Integer.valueOf(this.f2704o[1]));
        }
        if (!this.f2705p) {
            return;
        }
        c0823s.f2822a.put("android:changeBounds:clip", C0595u.m20371A(view));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0101, code lost:
        if (r0 != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0124, code lost:
        if (r0 != r0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0148, code lost:
        if (r0 != null) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0156  */
    /* JADX WARN: Type inference failed for: r0v117, types: [android.animation.Animator] */
    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo2832a(final android.view.ViewGroup r12, androidx.p045j.C0823s r13, androidx.p045j.C0823s r14) {
        /*
            Method dump skipped, instructions count: 1101
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.C0779c.mo2832a(android.view.ViewGroup, androidx.j.s, androidx.j.s):android.animation.Animator");
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public void mo2831a(C0823s c0823s) {
        m19468d(c0823s);
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: a */
    public String[] mo19423a() {
        return f2696h;
    }

    @Override // androidx.p045j.AbstractC0807m
    /* renamed from: b */
    public void mo2830b(C0823s c0823s) {
        m19468d(c0823s);
    }
}
