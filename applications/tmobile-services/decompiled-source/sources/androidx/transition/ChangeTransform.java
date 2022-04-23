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
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {

    /* renamed from: R */
    private static final String[] f5108R = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};

    /* renamed from: S */
    private static final Property<PathAnimatorMatrix, float[]> f5109S = new Property<PathAnimatorMatrix, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        /* renamed from: a */
        public float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        /* renamed from: b */
        public void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            pathAnimatorMatrix.m16859d(fArr);
        }
    };

    /* renamed from: T */
    private static final Property<PathAnimatorMatrix, PointF> f5110T = new Property<PathAnimatorMatrix, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        /* renamed from: a */
        public PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        /* renamed from: b */
        public void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            pathAnimatorMatrix.m16860c(pointF);
        }
    };

    /* renamed from: U */
    private static final boolean f5111U;

    /* renamed from: O */
    boolean f5112O;

    /* renamed from: P */
    private boolean f5113P;

    /* renamed from: Q */
    private Matrix f5114Q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$GhostListener.class */
    public static class GhostListener extends TransitionListenerAdapter {

        /* renamed from: a */
        private View f5123a;

        /* renamed from: b */
        private GhostView f5124b;

        GhostListener(View view, GhostView ghostView) {
            this.f5123a = view;
            this.f5124b = ghostView;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        /* renamed from: b */
        public void mo8574b(@NonNull Transition transition) {
            this.f5124b.setVisibility(4);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        /* renamed from: c */
        public void mo8573c(@NonNull Transition transition) {
            transition.mo16743Z(this);
            GhostViewUtils.m16811b(this.f5123a);
            this.f5123a.setTag(C0542R.C0545id.transition_transform, null);
            this.f5123a.setTag(C0542R.C0545id.parent_matrix, null);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        /* renamed from: e */
        public void mo8571e(@NonNull Transition transition) {
            this.f5124b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$PathAnimatorMatrix.class */
    public static class PathAnimatorMatrix {

        /* renamed from: a */
        private final Matrix f5125a = new Matrix();

        /* renamed from: b */
        private final View f5126b;

        /* renamed from: c */
        private final float[] f5127c;

        /* renamed from: d */
        private float f5128d;

        /* renamed from: e */
        private float f5129e;

        PathAnimatorMatrix(View view, float[] fArr) {
            this.f5126b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f5127c = fArr2;
            this.f5128d = fArr2[2];
            this.f5129e = fArr2[5];
            m16861b();
        }

        /* renamed from: b */
        private void m16861b() {
            float[] fArr = this.f5127c;
            fArr[2] = this.f5128d;
            fArr[5] = this.f5129e;
            this.f5125a.setValues(fArr);
            ViewUtils.m16686f(this.f5126b, this.f5125a);
        }

        /* renamed from: a */
        Matrix m16862a() {
            return this.f5125a;
        }

        /* renamed from: c */
        void m16860c(PointF pointF) {
            this.f5128d = pointF.x;
            this.f5129e = pointF.y;
            m16861b();
        }

        /* renamed from: d */
        void m16859d(float[] fArr) {
            System.arraycopy(fArr, 0, this.f5127c, 0, fArr.length);
            m16861b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$Transforms.class */
    public static class Transforms {

        /* renamed from: a */
        final float f5130a;

        /* renamed from: b */
        final float f5131b;

        /* renamed from: c */
        final float f5132c;

        /* renamed from: d */
        final float f5133d;

        /* renamed from: e */
        final float f5134e;

        /* renamed from: f */
        final float f5135f;

        /* renamed from: g */
        final float f5136g;

        /* renamed from: h */
        final float f5137h;

        Transforms(View view) {
            this.f5130a = view.getTranslationX();
            this.f5131b = view.getTranslationY();
            this.f5132c = ViewCompat.m19226K(view);
            this.f5133d = view.getScaleX();
            this.f5134e = view.getScaleY();
            this.f5135f = view.getRotationX();
            this.f5136g = view.getRotationY();
            this.f5137h = view.getRotation();
        }

        /* renamed from: a */
        public void m16858a(View view) {
            ChangeTransform.m16868v0(view, this.f5130a, this.f5131b, this.f5132c, this.f5133d, this.f5134e, this.f5135f, this.f5136g, this.f5137h);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            boolean z = false;
            if (transforms.f5130a == this.f5130a) {
                z = false;
                if (transforms.f5131b == this.f5131b) {
                    z = false;
                    if (transforms.f5132c == this.f5132c) {
                        z = false;
                        if (transforms.f5133d == this.f5133d) {
                            z = false;
                            if (transforms.f5134e == this.f5134e) {
                                z = false;
                                if (transforms.f5135f == this.f5135f) {
                                    z = false;
                                    if (transforms.f5136g == this.f5136g) {
                                        z = false;
                                        if (transforms.f5137h == this.f5137h) {
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
            float f = this.f5130a;
            int i = 0;
            int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
            float f2 = this.f5131b;
            int floatToIntBits2 = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
            float f3 = this.f5132c;
            int floatToIntBits3 = f3 != 0.0f ? Float.floatToIntBits(f3) : 0;
            float f4 = this.f5133d;
            int floatToIntBits4 = f4 != 0.0f ? Float.floatToIntBits(f4) : 0;
            float f5 = this.f5134e;
            int floatToIntBits5 = f5 != 0.0f ? Float.floatToIntBits(f5) : 0;
            float f6 = this.f5135f;
            int floatToIntBits6 = f6 != 0.0f ? Float.floatToIntBits(f6) : 0;
            float f7 = this.f5136g;
            int floatToIntBits7 = f7 != 0.0f ? Float.floatToIntBits(f7) : 0;
            float f8 = this.f5137h;
            if (f8 != 0.0f) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }
    }

    static {
        f5111U = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f5112O = true;
        this.f5113P = true;
        this.f5114Q = new Matrix();
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5112O = true;
        this.f5113P = true;
        this.f5114Q = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5203e);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f5112O = TypedArrayUtils.m19602a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f5113P = TypedArrayUtils.m19602a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: p0 */
    private void m16874p0(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        if (view.getVisibility() != 8) {
            transitionValues.f5271a.put("android:changeTransform:parent", view.getParent());
            transitionValues.f5271a.put("android:changeTransform:transforms", new Transforms(view));
            Matrix matrix = view.getMatrix();
            transitionValues.f5271a.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
            if (this.f5113P) {
                Matrix matrix2 = new Matrix();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                ViewUtils.m16682j(viewGroup, matrix2);
                matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
                transitionValues.f5271a.put("android:changeTransform:parentMatrix", matrix2);
                transitionValues.f5271a.put("android:changeTransform:intermediateMatrix", view.getTag(C0542R.C0545id.transition_transform));
                transitionValues.f5271a.put("android:changeTransform:intermediateParentMatrix", view.getTag(C0542R.C0545id.parent_matrix));
            }
        }
    }

    /* renamed from: q0 */
    private void m16873q0(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view = transitionValues2.f5272b;
        Matrix matrix = new Matrix((Matrix) transitionValues2.f5271a.get("android:changeTransform:parentMatrix"));
        ViewUtils.m16681k(viewGroup, matrix);
        GhostView a = GhostViewUtils.m16812a(view, viewGroup, matrix);
        if (a != null) {
            a.mo16820a((ViewGroup) transitionValues.f5271a.get("android:changeTransform:parent"), transitionValues.f5272b);
            Transition transition = this;
            while (true) {
                Transition transition2 = transition.f5239w;
                if (transition2 == null) {
                    break;
                }
                transition = transition2;
            }
            transition.mo16742a(new GhostListener(view, a));
            if (f5111U) {
                View view2 = transitionValues.f5272b;
                if (view2 != transitionValues2.f5272b) {
                    ViewUtils.m16684h(view2, 0.0f);
                }
                ViewUtils.m16684h(view, 1.0f);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [float[], java.lang.Object[]] */
    /* renamed from: r0 */
    private ObjectAnimator m16872r0(TransitionValues transitionValues, TransitionValues transitionValues2, final boolean z) {
        Matrix matrix = (Matrix) transitionValues.f5271a.get("android:changeTransform:matrix");
        Matrix matrix2 = (Matrix) transitionValues2.f5271a.get("android:changeTransform:matrix");
        Matrix matrix3 = matrix;
        if (matrix == null) {
            matrix3 = MatrixUtils.f5176a;
        }
        final Matrix matrix4 = matrix2;
        if (matrix2 == null) {
            matrix4 = MatrixUtils.f5176a;
        }
        if (matrix3.equals(matrix4)) {
            return null;
        }
        final Transforms transforms = (Transforms) transitionValues2.f5271a.get("android:changeTransform:transforms");
        final View view = transitionValues2.f5272b;
        m16870t0(view);
        float[] fArr = new float[9];
        matrix3.getValues(fArr);
        float[] fArr2 = new float[9];
        matrix4.getValues(fArr2);
        final PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(f5109S, new FloatArrayEvaluator(new float[9]), (Object[]) new float[]{fArr, fArr2}), PropertyValuesHolderUtils.m16801a(f5110T, m16754z().mo8631a(fArr[2], fArr[5], fArr2[2], fArr2[5])));
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeTransform.3

            /* renamed from: a */
            private boolean f5115a;

            /* renamed from: b */
            private Matrix f5116b = new Matrix();

            /* renamed from: a */
            private void m16863a(Matrix matrix5) {
                this.f5116b.set(matrix5);
                view.setTag(C0542R.C0545id.transition_transform, this.f5116b);
                transforms.m16858a(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f5115a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.f5115a) {
                    if (!z || !ChangeTransform.this.f5112O) {
                        view.setTag(C0542R.C0545id.transition_transform, null);
                        view.setTag(C0542R.C0545id.parent_matrix, null);
                    } else {
                        m16863a(matrix4);
                    }
                }
                ViewUtils.m16686f(view, null);
                transforms.m16858a(view);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(Animator animator) {
                m16863a(pathAnimatorMatrix.m16862a());
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(Animator animator) {
                ChangeTransform.m16870t0(view);
            }
        };
        ofPropertyValuesHolder.addListener(animatorListenerAdapter);
        AnimatorUtils.m16912a(ofPropertyValuesHolder, animatorListenerAdapter);
        return ofPropertyValuesHolder;
    }

    /* renamed from: s0 */
    private boolean m16871s0(ViewGroup viewGroup, ViewGroup viewGroup2) {
        boolean z = false;
        if (!m16780N(viewGroup) || !m16780N(viewGroup2)) {
            if (viewGroup == viewGroup2) {
                z = true;
            }
            z = false;
        } else {
            TransitionValues x = m16756x(viewGroup, true);
            if (x != null) {
                if (viewGroup2 == x.f5272b) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    /* renamed from: t0 */
    static void m16870t0(View view) {
        m16868v0(view, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: u0 */
    private void m16869u0(TransitionValues transitionValues, TransitionValues transitionValues2) {
        Matrix matrix = (Matrix) transitionValues2.f5271a.get("android:changeTransform:parentMatrix");
        transitionValues2.f5272b.setTag(C0542R.C0545id.parent_matrix, matrix);
        Matrix matrix2 = this.f5114Q;
        matrix2.reset();
        matrix.invert(matrix2);
        Matrix matrix3 = (Matrix) transitionValues.f5271a.get("android:changeTransform:matrix");
        Matrix matrix4 = matrix3;
        if (matrix3 == null) {
            matrix4 = new Matrix();
            transitionValues.f5271a.put("android:changeTransform:matrix", matrix4);
        }
        matrix4.postConcat((Matrix) transitionValues.f5271a.get("android:changeTransform:parentMatrix"));
        matrix4.postConcat(matrix2);
    }

    /* renamed from: v0 */
    static void m16868v0(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        ViewCompat.m19233F0(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo8629J() {
        return f5108R;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16874p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16874p0(transitionValues);
        if (!f5111U) {
            ((ViewGroup) transitionValues.f5272b.getParent()).startViewTransition(transitionValues.f5272b);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null || !transitionValues.f5271a.containsKey("android:changeTransform:parent") || !transitionValues2.f5271a.containsKey("android:changeTransform:parent")) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) transitionValues.f5271a.get("android:changeTransform:parent");
        boolean z = this.f5113P && !m16871s0(viewGroup2, (ViewGroup) transitionValues2.f5271a.get("android:changeTransform:parent"));
        Matrix matrix = (Matrix) transitionValues.f5271a.get("android:changeTransform:intermediateMatrix");
        if (matrix != null) {
            transitionValues.f5271a.put("android:changeTransform:matrix", matrix);
        }
        Matrix matrix2 = (Matrix) transitionValues.f5271a.get("android:changeTransform:intermediateParentMatrix");
        if (matrix2 != null) {
            transitionValues.f5271a.put("android:changeTransform:parentMatrix", matrix2);
        }
        if (z) {
            m16869u0(transitionValues, transitionValues2);
        }
        ObjectAnimator r0 = m16872r0(transitionValues, transitionValues2, z);
        if (z && r0 != null && this.f5112O) {
            m16873q0(viewGroup, transitionValues, transitionValues2);
        } else if (!f5111U) {
            viewGroup2.endViewTransition(transitionValues.f5272b);
        }
        return r0;
    }
}
