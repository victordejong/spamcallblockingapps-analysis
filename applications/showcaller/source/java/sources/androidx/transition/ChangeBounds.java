package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p007d.C0614g;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {

    /* renamed from: N */
    private static final String[] f4713N = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: O */
    private static final Property<Drawable, PointF> f4714O = new C1074b(PointF.class, "boundsOrigin");

    /* renamed from: P */
    private static final Property<C1083k, PointF> f4715P = new C1075c(PointF.class, "topLeft");

    /* renamed from: Q */
    private static final Property<C1083k, PointF> f4716Q = new C1076d(PointF.class, "bottomRight");

    /* renamed from: R */
    private static final Property<View, PointF> f4717R = new C1077e(PointF.class, "bottomRight");

    /* renamed from: S */
    private static final Property<View, PointF> f4718S = new C1078f(PointF.class, "topLeft");

    /* renamed from: T */
    private static final Property<View, PointF> f4719T = new C1079g(PointF.class, "position");

    /* renamed from: U */
    private static C1160q f4720U = new C1160q();

    /* renamed from: V */
    private int[] f4721V;

    /* renamed from: W */
    private boolean f4722W;

    /* renamed from: X */
    private boolean f4723X;

    /* renamed from: androidx.transition.ChangeBounds$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
    class C1073a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f4724a;

        /* renamed from: b */
        final /* synthetic */ BitmapDrawable f4725b;

        /* renamed from: c */
        final /* synthetic */ View f4726c;

        /* renamed from: d */
        final /* synthetic */ float f4727d;

        C1073a(ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
            ChangeBounds.this = r4;
            this.f4724a = viewGroup;
            this.f4725b = bitmapDrawable;
            this.f4726c = view;
            this.f4727d = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1144j0.m30873b(this.f4724a).mo30877b(this.f4725b);
            C1144j0.m30867h(this.f4726c, this.f4727d);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$b.class */
    static final class C1074b extends Property<Drawable, PointF> {

        /* renamed from: a */
        private Rect f4729a = new Rect();

        C1074b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f4729a);
            Rect rect = this.f4729a;
            return new PointF(rect.left, rect.top);
        }

        /* renamed from: b */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f4729a);
            this.f4729a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f4729a);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$c.class */
    static final class C1075c extends Property<C1083k, PointF> {
        C1075c(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(C1083k c1083k) {
            return null;
        }

        /* renamed from: b */
        public void set(C1083k c1083k, PointF pointF) {
            c1083k.m31061c(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$d.class */
    static final class C1076d extends Property<C1083k, PointF> {
        C1076d(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(C1083k c1083k) {
            return null;
        }

        /* renamed from: b */
        public void set(C1083k c1083k, PointF pointF) {
            c1083k.m31063a(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$e.class */
    static final class C1077e extends Property<View, PointF> {
        C1077e(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            C1144j0.m30868g(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$f.class */
    static final class C1078f extends Property<View, PointF> {
        C1078f(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            C1144j0.m30868g(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$g */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$g.class */
    static final class C1079g extends Property<View, PointF> {
        C1079g(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            C1144j0.m30868g(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$h */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$h.class */
    class C1080h extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ C1083k f4730a;
        private C1083k mViewBounds;

        C1080h(C1083k c1083k) {
            ChangeBounds.this = r4;
            this.f4730a = c1083k;
            this.mViewBounds = c1083k;
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$i */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$i.class */
    class C1081i extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f4732a;

        /* renamed from: b */
        final /* synthetic */ View f4733b;

        /* renamed from: c */
        final /* synthetic */ Rect f4734c;

        /* renamed from: d */
        final /* synthetic */ int f4735d;

        /* renamed from: e */
        final /* synthetic */ int f4736e;

        /* renamed from: f */
        final /* synthetic */ int f4737f;

        /* renamed from: g */
        final /* synthetic */ int f4738g;

        C1081i(View view, Rect rect, int i, int i2, int i3, int i4) {
            ChangeBounds.this = r4;
            this.f4733b = view;
            this.f4734c = rect;
            this.f4735d = i;
            this.f4736e = i2;
            this.f4737f = i3;
            this.f4738g = i4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4732a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f4732a) {
                C1679w.m29261x0(this.f4733b, this.f4734c);
                C1144j0.m30868g(this.f4733b, this.f4735d, this.f4736e, this.f4737f, this.f4738g);
            }
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$j */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$j.class */
    class C1082j extends C1168u {

        /* renamed from: a */
        boolean f4740a = false;

        /* renamed from: b */
        final /* synthetic */ ViewGroup f4741b;

        C1082j(ViewGroup viewGroup) {
            ChangeBounds.this = r4;
            this.f4741b = viewGroup;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
            C1131e0.m30910d(this.f4741b, false);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            if (!this.f4740a) {
                C1131e0.m30910d(this.f4741b, false);
            }
            transition.mo30982Y(this);
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: d */
        public void mo30828d(Transition transition) {
            C1131e0.m30910d(this.f4741b, false);
            this.f4740a = true;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
            C1131e0.m30910d(this.f4741b, true);
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$k */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$k.class */
    public static class C1083k {

        /* renamed from: a */
        private int f4743a;

        /* renamed from: b */
        private int f4744b;

        /* renamed from: c */
        private int f4745c;

        /* renamed from: d */
        private int f4746d;

        /* renamed from: e */
        private View f4747e;

        /* renamed from: f */
        private int f4748f;

        /* renamed from: g */
        private int f4749g;

        C1083k(View view) {
            this.f4747e = view;
        }

        /* renamed from: b */
        private void m31062b() {
            C1144j0.m30868g(this.f4747e, this.f4743a, this.f4744b, this.f4745c, this.f4746d);
            this.f4748f = 0;
            this.f4749g = 0;
        }

        /* renamed from: a */
        void m31063a(PointF pointF) {
            this.f4745c = Math.round(pointF.x);
            this.f4746d = Math.round(pointF.y);
            int i = this.f4749g + 1;
            this.f4749g = i;
            if (this.f4748f == i) {
                m31062b();
            }
        }

        /* renamed from: c */
        void m31061c(PointF pointF) {
            this.f4743a = Math.round(pointF.x);
            this.f4744b = Math.round(pointF.y);
            int i = this.f4748f + 1;
            this.f4748f = i;
            if (i == this.f4749g) {
                m31062b();
            }
        }
    }

    public ChangeBounds() {
        this.f4721V = new int[2];
        this.f4722W = false;
        this.f4723X = false;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4721V = new int[2];
        this.f4722W = false;
        this.f4723X = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4974d);
        boolean m33259a = C0614g.m33259a(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        m31076o0(m33259a);
    }

    /* renamed from: m0 */
    private void m31078m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        if (!C1679w.m29313V(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c1175y.f4995a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c1175y.f4995a.put("android:changeBounds:parent", c1175y.f4996b.getParent());
        if (this.f4723X) {
            c1175y.f4996b.getLocationInWindow(this.f4721V);
            c1175y.f4995a.put("android:changeBounds:windowX", Integer.valueOf(this.f4721V[0]));
            c1175y.f4995a.put("android:changeBounds:windowY", Integer.valueOf(this.f4721V[1]));
        }
        if (!this.f4722W) {
            return;
        }
        c1175y.f4995a.put("android:changeBounds:clip", C1679w.m29268u(view));
    }

    /* renamed from: n0 */
    private boolean m31077n0(View view, View view2) {
        boolean z = true;
        if (this.f4723X) {
            C1175y m30985y = m30985y(view, true);
            if (m30985y == null) {
                if (view == view2) {
                    z = true;
                }
                z = false;
            } else {
                if (view2 == m30985y.f4996b) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4713N;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m31078m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m31078m0(c1175y);
    }

    /* renamed from: o0 */
    public void m31076o0(boolean z) {
        this.f4722W = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x011c, code lost:
        if (r0 != r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0146, code lost:
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03ae A[ORIG_RETURN, RETURN] */
    @Override // androidx.transition.Transition
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo4470q(android.view.ViewGroup r12, androidx.transition.C1175y r13, androidx.transition.C1175y r14) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.mo4470q(android.view.ViewGroup, androidx.transition.y, androidx.transition.y):android.animation.Animator");
    }
}
