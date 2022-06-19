package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.p007d.C0614g;
import org.xmlpull.v1.XmlPullParser;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {

    /* renamed from: N */
    private static final String[] f4758N = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};

    /* renamed from: O */
    private static final Property<C1092e, float[]> f4759O = new C1088a(float[].class, "nonTranslations");

    /* renamed from: P */
    private static final Property<C1092e, PointF> f4760P = new C1089b(PointF.class, "translations");

    /* renamed from: Q */
    private static final boolean f4761Q;

    /* renamed from: R */
    boolean f4762R;

    /* renamed from: S */
    private boolean f4763S;

    /* renamed from: T */
    private Matrix f4764T;

    /* renamed from: androidx.transition.ChangeTransform$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$a.class */
    static final class C1088a extends Property<C1092e, float[]> {
        C1088a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public float[] get(C1092e c1092e) {
            return null;
        }

        /* renamed from: b */
        public void set(C1092e c1092e, float[] fArr) {
            c1092e.m31034d(fArr);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$b.class */
    static final class C1089b extends Property<C1092e, PointF> {
        C1089b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public PointF get(C1092e c1092e) {
            return null;
        }

        /* renamed from: b */
        public void set(C1092e c1092e, PointF pointF) {
            c1092e.m31035c(pointF);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
    public class C1090c extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f4765a;

        /* renamed from: b */
        private Matrix f4766b = new Matrix();

        /* renamed from: c */
        final /* synthetic */ boolean f4767c;

        /* renamed from: d */
        final /* synthetic */ Matrix f4768d;

        /* renamed from: e */
        final /* synthetic */ View f4769e;

        /* renamed from: f */
        final /* synthetic */ C1093f f4770f;

        /* renamed from: g */
        final /* synthetic */ C1092e f4771g;

        C1090c(boolean z, Matrix matrix, View view, C1093f c1093f, C1092e c1092e) {
            ChangeTransform.this = r5;
            this.f4767c = z;
            this.f4768d = matrix;
            this.f4769e = view;
            this.f4770f = c1093f;
            this.f4771g = c1092e;
        }

        /* renamed from: a */
        private void m31038a(Matrix matrix) {
            this.f4766b.set(matrix);
            this.f4769e.setTag(C1158p.transition_transform, this.f4766b);
            this.f4770f.m31033a(this.f4769e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4765a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f4765a) {
                if (!this.f4767c || !ChangeTransform.this.f4762R) {
                    this.f4769e.setTag(C1158p.transition_transform, null);
                    this.f4769e.setTag(C1158p.parent_matrix, null);
                } else {
                    m31038a(this.f4768d);
                }
            }
            C1144j0.m30869f(this.f4769e, null);
            this.f4770f.m31033a(this.f4769e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            m31038a(this.f4771g.m31037a());
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            ChangeTransform.m31045q0(this.f4769e);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$d.class */
    public static class C1091d extends C1168u {

        /* renamed from: a */
        private View f4773a;

        /* renamed from: b */
        private AbstractC1132f f4774b;

        C1091d(View view, AbstractC1132f abstractC1132f) {
            this.f4773a = view;
            this.f4774b = abstractC1132f;
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: b */
        public void mo30829b(Transition transition) {
            this.f4774b.setVisibility(4);
        }

        @Override // androidx.transition.Transition.AbstractC1110f
        /* renamed from: c */
        public void mo30821c(Transition transition) {
            transition.mo30982Y(this);
            C1143j.m30875b(this.f4773a);
            this.f4773a.setTag(C1158p.transition_transform, null);
            this.f4773a.setTag(C1158p.parent_matrix, null);
        }

        @Override // androidx.transition.C1168u, androidx.transition.Transition.AbstractC1110f
        /* renamed from: e */
        public void mo30827e(Transition transition) {
            this.f4774b.setVisibility(0);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$e.class */
    public static class C1092e {

        /* renamed from: a */
        private final Matrix f4775a = new Matrix();

        /* renamed from: b */
        private final View f4776b;

        /* renamed from: c */
        private final float[] f4777c;

        /* renamed from: d */
        private float f4778d;

        /* renamed from: e */
        private float f4779e;

        C1092e(View view, float[] fArr) {
            this.f4776b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f4777c = fArr2;
            this.f4778d = fArr2[2];
            this.f4779e = fArr2[5];
            m31036b();
        }

        /* renamed from: b */
        private void m31036b() {
            float[] fArr = this.f4777c;
            fArr[2] = this.f4778d;
            fArr[5] = this.f4779e;
            this.f4775a.setValues(fArr);
            C1144j0.m30869f(this.f4776b, this.f4775a);
        }

        /* renamed from: a */
        Matrix m31037a() {
            return this.f4775a;
        }

        /* renamed from: c */
        void m31035c(PointF pointF) {
            this.f4778d = pointF.x;
            this.f4779e = pointF.y;
            m31036b();
        }

        /* renamed from: d */
        void m31034d(float[] fArr) {
            System.arraycopy(fArr, 0, this.f4777c, 0, fArr.length);
            m31036b();
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$f.class */
    public static class C1093f {

        /* renamed from: a */
        final float f4780a;

        /* renamed from: b */
        final float f4781b;

        /* renamed from: c */
        final float f4782c;

        /* renamed from: d */
        final float f4783d;

        /* renamed from: e */
        final float f4784e;

        /* renamed from: f */
        final float f4785f;

        /* renamed from: g */
        final float f4786g;

        /* renamed from: h */
        final float f4787h;

        C1093f(View view) {
            this.f4780a = view.getTranslationX();
            this.f4781b = view.getTranslationY();
            this.f4782c = C1679w.m29324N(view);
            this.f4783d = view.getScaleX();
            this.f4784e = view.getScaleY();
            this.f4785f = view.getRotationX();
            this.f4786g = view.getRotationY();
            this.f4787h = view.getRotation();
        }

        /* renamed from: a */
        public void m31033a(View view) {
            ChangeTransform.m31043s0(view, this.f4780a, this.f4781b, this.f4782c, this.f4783d, this.f4784e, this.f4785f, this.f4786g, this.f4787h);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1093f)) {
                return false;
            }
            C1093f c1093f = (C1093f) obj;
            boolean z = false;
            if (c1093f.f4780a == this.f4780a) {
                z = false;
                if (c1093f.f4781b == this.f4781b) {
                    z = false;
                    if (c1093f.f4782c == this.f4782c) {
                        z = false;
                        if (c1093f.f4783d == this.f4783d) {
                            z = false;
                            if (c1093f.f4784e == this.f4784e) {
                                z = false;
                                if (c1093f.f4785f == this.f4785f) {
                                    z = false;
                                    if (c1093f.f4786g == this.f4786g) {
                                        z = false;
                                        if (c1093f.f4787h == this.f4787h) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            float f = this.f4780a;
            int i = 0;
            int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
            float f2 = this.f4781b;
            int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
            float f3 = this.f4782c;
            int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
            float f4 = this.f4783d;
            int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
            float f5 = this.f4784e;
            int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
            float f6 = this.f4785f;
            int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
            float f7 = this.f4786g;
            int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
            float f8 = this.f4787h;
            if (f8 != 0.0f) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }
    }

    static {
        f4761Q = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f4762R = true;
        this.f4763S = true;
        this.f4764T = new Matrix();
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4762R = true;
        this.f4763S = true;
        this.f4764T = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4977g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f4762R = C0614g.m33259a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f4763S = C0614g.m33259a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: m0 */
    private void m31049m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        if (view.getVisibility() == 8) {
            return;
        }
        c1175y.f4995a.put("android:changeTransform:parent", view.getParent());
        c1175y.f4995a.put("android:changeTransform:transforms", new C1093f(view));
        Matrix matrix = view.getMatrix();
        c1175y.f4995a.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (!this.f4763S) {
            return;
        }
        Matrix matrix2 = new Matrix();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        C1144j0.m30865j(viewGroup, matrix2);
        matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
        c1175y.f4995a.put("android:changeTransform:parentMatrix", matrix2);
        c1175y.f4995a.put("android:changeTransform:intermediateMatrix", view.getTag(C1158p.transition_transform));
        c1175y.f4995a.put("android:changeTransform:intermediateParentMatrix", view.getTag(C1158p.parent_matrix));
    }

    /* renamed from: n0 */
    private void m31048n0(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        Transition transition;
        View view = c1175y2.f4996b;
        Matrix matrix = new Matrix((Matrix) c1175y2.f4995a.get("android:changeTransform:parentMatrix"));
        C1144j0.m30864k(viewGroup, matrix);
        AbstractC1132f m30876a = C1143j.m30876a(view, viewGroup, matrix);
        if (m30876a == null) {
            return;
        }
        m30876a.mo30886a((ViewGroup) c1175y.f4995a.get("android:changeTransform:parent"), c1175y.f4996b);
        Transition transition2 = this;
        while (true) {
            transition = transition2;
            Transition transition3 = transition.f4841x;
            if (transition3 == null) {
                break;
            }
            transition2 = transition3;
        }
        transition.mo30980a(new C1091d(view, m30876a));
        if (!f4761Q) {
            return;
        }
        View view2 = c1175y.f4996b;
        if (view2 != c1175y2.f4996b) {
            C1144j0.m30867h(view2, 0.0f);
        }
        C1144j0.m30867h(view, 1.0f);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [float[], java.lang.Object[]] */
    /* renamed from: o0 */
    private ObjectAnimator m31047o0(C1175y c1175y, C1175y c1175y2, boolean z) {
        Matrix matrix = (Matrix) c1175y.f4995a.get("android:changeTransform:matrix");
        Matrix matrix2 = (Matrix) c1175y2.f4995a.get("android:changeTransform:matrix");
        Matrix matrix3 = matrix;
        if (matrix == null) {
            matrix3 = C1149l.f4946a;
        }
        Matrix matrix4 = matrix2;
        if (matrix2 == null) {
            matrix4 = C1149l.f4946a;
        }
        if (matrix3.equals(matrix4)) {
            return null;
        }
        C1093f c1093f = (C1093f) c1175y2.f4995a.get("android:changeTransform:transforms");
        View view = c1175y2.f4996b;
        m31045q0(view);
        float[] fArr = new float[9];
        matrix3.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix4.getValues(fArr2);
        C1092e c1092e = new C1092e(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(c1092e, PropertyValuesHolder.ofObject(f4759O, new C1124d(new float[9]), (Object[]) new float[]{fArr, fArr2}), C1156o.m30852a(f4760P, m31019B().mo30984a(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        C1090c c1090c = new C1090c(z, matrix4, view, c1093f, c1092e);
        ofPropertyValuesHolder.addListener(c1090c);
        C1116a.m30941a(ofPropertyValuesHolder, c1090c);
        return ofPropertyValuesHolder;
    }

    /* renamed from: p0 */
    private boolean m31046p0(ViewGroup viewGroup, ViewGroup viewGroup2) {
        boolean z = false;
        if (!m31009N(viewGroup) || !m31009N(viewGroup2)) {
            if (viewGroup == viewGroup2) {
                z = true;
            }
            z = false;
        } else {
            C1175y m30985y = m30985y(viewGroup, true);
            if (m30985y != null) {
                if (viewGroup2 == m30985y.f4996b) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    /* renamed from: q0 */
    static void m31045q0(View view) {
        m31043s0(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: r0 */
    private void m31044r0(C1175y c1175y, C1175y c1175y2) {
        Matrix matrix = (Matrix) c1175y2.f4995a.get("android:changeTransform:parentMatrix");
        c1175y2.f4996b.setTag(C1158p.parent_matrix, matrix);
        Matrix matrix2 = this.f4764T;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) c1175y.f4995a.get("android:changeTransform:matrix");
        Matrix matrix4 = matrix3;
        if (matrix3 == null) {
            matrix4 = new Matrix();
            c1175y.f4995a.put("android:changeTransform:matrix", matrix4);
        }
        matrix4.postConcat((Matrix) c1175y.f4995a.get("android:changeTransform:parentMatrix"));
        matrix4.postConcat(matrix2);
    }

    /* renamed from: s0 */
    static void m31043s0(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        C1679w.m29329K0(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4758N;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m31049m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m31049m0(c1175y);
        if (!f4761Q) {
            ((ViewGroup) c1175y.f4996b.getParent()).startViewTransition(c1175y.f4996b);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        if (c1175y == null || c1175y2 == null || !c1175y.f4995a.containsKey("android:changeTransform:parent") || !c1175y2.f4995a.containsKey("android:changeTransform:parent")) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) c1175y.f4995a.get("android:changeTransform:parent");
        boolean z = this.f4763S && !m31046p0(viewGroup2, (ViewGroup) c1175y2.f4995a.get("android:changeTransform:parent"));
        Matrix matrix = (Matrix) c1175y.f4995a.get("android:changeTransform:intermediateMatrix");
        if (matrix != null) {
            c1175y.f4995a.put("android:changeTransform:matrix", matrix);
        }
        Matrix matrix2 = (Matrix) c1175y.f4995a.get("android:changeTransform:intermediateParentMatrix");
        if (matrix2 != null) {
            c1175y.f4995a.put("android:changeTransform:parentMatrix", matrix2);
        }
        if (z) {
            m31044r0(c1175y, c1175y2);
        }
        ObjectAnimator m31047o0 = m31047o0(c1175y, c1175y2, z);
        if (z && m31047o0 != null && this.f4762R) {
            m31048n0(viewGroup, c1175y, c1175y2);
        } else if (!f4761Q) {
            viewGroup2.endViewTransition(c1175y.f4996b);
        }
        return m31047o0;
    }
}
