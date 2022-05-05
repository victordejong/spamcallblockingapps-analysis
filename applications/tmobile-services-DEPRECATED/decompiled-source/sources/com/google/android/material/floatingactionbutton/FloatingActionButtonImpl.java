package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MatrixEvaluator;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.StateListAnimator;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl.class */
public class FloatingActionButtonImpl {

    /* renamed from: F */
    static final TimeInterpolator f10722F = AnimationUtils.f9925c;

    /* renamed from: G */
    static final int[] f10723G = {16842919, 16842910};

    /* renamed from: H */
    static final int[] f10724H = {16843623, 16842908, 16842910};

    /* renamed from: I */
    static final int[] f10725I = {16842908, 16842910};

    /* renamed from: J */
    static final int[] f10726J = {16843623, 16842910};

    /* renamed from: K */
    static final int[] f10727K = {16842910};

    /* renamed from: L */
    static final int[] f10728L = new int[0];
    @Nullable

    /* renamed from: E */
    private ViewTreeObserver.OnPreDrawListener f10733E;
    @Nullable

    /* renamed from: a */
    ShapeAppearanceModel f10734a;
    @Nullable

    /* renamed from: b */
    MaterialShapeDrawable f10735b;
    @Nullable

    /* renamed from: c */
    Drawable f10736c;
    @Nullable

    /* renamed from: d */
    BorderDrawable f10737d;
    @Nullable

    /* renamed from: e */
    Drawable f10738e;

    /* renamed from: f */
    boolean f10739f;

    /* renamed from: h */
    float f10741h;

    /* renamed from: i */
    float f10742i;

    /* renamed from: j */
    float f10743j;

    /* renamed from: k */
    int f10744k;
    @NonNull

    /* renamed from: l */
    private final StateListAnimator f10745l;
    @Nullable

    /* renamed from: m */
    private MotionSpec f10746m;
    @Nullable

    /* renamed from: n */
    private MotionSpec f10747n;
    @Nullable

    /* renamed from: o */
    private Animator f10748o;
    @Nullable

    /* renamed from: p */
    private MotionSpec f10749p;
    @Nullable

    /* renamed from: q */
    private MotionSpec f10750q;

    /* renamed from: r */
    private float f10751r;

    /* renamed from: t */
    private int f10753t;

    /* renamed from: v */
    private ArrayList<Animator.AnimatorListener> f10755v;

    /* renamed from: w */
    private ArrayList<Animator.AnimatorListener> f10756w;

    /* renamed from: x */
    private ArrayList<InternalTransformationCallback> f10757x;

    /* renamed from: y */
    final FloatingActionButton f10758y;

    /* renamed from: z */
    final ShadowViewDelegate f10759z;

    /* renamed from: g */
    boolean f10740g = true;

    /* renamed from: s */
    private float f10752s = 1.0f;

    /* renamed from: u */
    private int f10754u = 0;

    /* renamed from: A */
    private final Rect f10729A = new Rect();

    /* renamed from: B */
    private final RectF f10730B = new RectF();

    /* renamed from: C */
    private final RectF f10731C = new RectF();

    /* renamed from: D */
    private final Matrix f10732D = new Matrix();

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$DisabledElevationAnimation.class */
    private class DisabledElevationAnimation extends ShadowAnimatorImpl {
        DisabledElevationAnimation(FloatingActionButtonImpl floatingActionButtonImpl) {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        /* renamed from: a */
        protected float mo9654a() {
            return 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToHoveredFocusedTranslationZAnimation.class */
    private class ElevateToHoveredFocusedTranslationZAnimation extends ShadowAnimatorImpl {
        ElevateToHoveredFocusedTranslationZAnimation() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        /* renamed from: a */
        protected float mo9654a() {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            return floatingActionButtonImpl.f10741h + floatingActionButtonImpl.f10742i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ElevateToPressedTranslationZAnimation.class */
    private class ElevateToPressedTranslationZAnimation extends ShadowAnimatorImpl {
        ElevateToPressedTranslationZAnimation() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        /* renamed from: a */
        protected float mo9654a() {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            return floatingActionButtonImpl.f10741h + floatingActionButtonImpl.f10743j;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback.class */
    interface InternalTransformationCallback {
        /* renamed from: a */
        void mo9658a();

        /* renamed from: b */
        void mo9657b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener.class */
    interface InternalVisibilityChangedListener {
        /* renamed from: a */
        void mo9656a();

        /* renamed from: b */
        void mo9655b();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ResetElevationAnimation.class */
    private class ResetElevationAnimation extends ShadowAnimatorImpl {
        ResetElevationAnimation() {
            super();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.ShadowAnimatorImpl
        /* renamed from: a */
        protected float mo9654a() {
            return FloatingActionButtonImpl.this.f10741h;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButtonImpl$ShadowAnimatorImpl.class */
    private abstract class ShadowAnimatorImpl extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        private boolean f10773a;

        /* renamed from: b */
        private float f10774b;

        /* renamed from: c */
        private float f10775c;

        private ShadowAnimatorImpl() {
        }

        /* renamed from: a */
        protected abstract float mo9654a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl.this.m9677g0((int) this.f10775c);
            this.f10773a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f10773a) {
                MaterialShapeDrawable materialShapeDrawable = FloatingActionButtonImpl.this.f10735b;
                this.f10774b = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.m9290w();
                this.f10775c = mo9654a();
                this.f10773a = true;
            }
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            float f = this.f10774b;
            floatingActionButtonImpl.m9677g0((int) (f + ((this.f10775c - f) * valueAnimator.getAnimatedFraction())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatingActionButtonImpl(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        this.f10758y = floatingActionButton;
        this.f10759z = shadowViewDelegate;
        StateListAnimator stateListAnimator = new StateListAnimator();
        this.f10745l = stateListAnimator;
        stateListAnimator.m9476a(f10723G, m9674i(new ElevateToPressedTranslationZAnimation()));
        this.f10745l.m9476a(f10724H, m9674i(new ElevateToHoveredFocusedTranslationZAnimation()));
        this.f10745l.m9476a(f10725I, m9674i(new ElevateToHoveredFocusedTranslationZAnimation()));
        this.f10745l.m9476a(f10726J, m9674i(new ElevateToHoveredFocusedTranslationZAnimation()));
        this.f10745l.m9476a(f10727K, m9674i(new ResetElevationAnimation()));
        this.f10745l.m9476a(f10728L, m9674i(new DisabledElevationAnimation(this)));
        this.f10751r = this.f10758y.getRotation();
    }

    /* renamed from: a0 */
    private boolean m9688a0() {
        return ViewCompat.m19218S(this.f10758y) && !this.f10758y.isInEditMode();
    }

    /* renamed from: g */
    private void m9678g(float f, @NonNull Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f10758y.getDrawable();
        if (drawable != null && this.f10753t != 0) {
            RectF rectF = this.f10730B;
            RectF rectF2 = this.f10731C;
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            int i = this.f10753t;
            rectF2.set(0.0f, 0.0f, i, i);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i2 = this.f10753t;
            matrix.postScale(f, f, i2 / 2.0f, i2 / 2.0f);
        }
    }

    @NonNull
    /* renamed from: h */
    private AnimatorSet m9676h(@NonNull MotionSpec motionSpec, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f10758y, View.ALPHA, f);
        motionSpec.m10751h("opacity").m10745a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f10758y, View.SCALE_X, f2);
        motionSpec.m10751h("scale").m10745a(ofFloat2);
        m9675h0(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f10758y, View.SCALE_Y, f2);
        motionSpec.m10751h("scale").m10745a(ofFloat3);
        m9675h0(ofFloat3);
        arrayList.add(ofFloat3);
        m9678g(f3, this.f10732D);
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this.f10758y, new ImageMatrixProperty(), new MatrixEvaluator() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.3
            @Override // com.google.android.material.animation.MatrixEvaluator
            /* renamed from: a */
            public Matrix evaluate(float f4, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
                FloatingActionButtonImpl.this.f10752s = f4;
                return super.evaluate(f4, matrix, matrix2);
            }
        }, new Matrix(this.f10732D));
        motionSpec.m10751h("iconScale").m10745a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.m10767a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: h0 */
    private void m9675h0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT == 26) {
            objectAnimator.setEvaluator(new TypeEvaluator<Float>(this) { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.4

                /* renamed from: a */
                FloatEvaluator f10768a = new FloatEvaluator();

                /* renamed from: a */
                public Float evaluate(float f, Float f2, Float f3) {
                    float floatValue = this.f10768a.evaluate(f, (Number) f2, (Number) f3).floatValue();
                    float f4 = floatValue;
                    if (floatValue < 0.1f) {
                        f4 = 0.0f;
                    }
                    return Float.valueOf(f4);
                }
            });
        }
    }

    @NonNull
    /* renamed from: i */
    private ValueAnimator m9674i(@NonNull ShadowAnimatorImpl shadowAnimatorImpl) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f10722F);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(shadowAnimatorImpl);
        valueAnimator.addUpdateListener(shadowAnimatorImpl);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    /* renamed from: l */
    private MotionSpec m9672l() {
        if (this.f10747n == null) {
            this.f10747n = MotionSpec.m10755d(this.f10758y.getContext(), C1027R.animator.design_fab_hide_motion_spec);
        }
        MotionSpec motionSpec = this.f10747n;
        Preconditions.m19337d(motionSpec);
        return motionSpec;
    }

    /* renamed from: m */
    private MotionSpec m9671m() {
        if (this.f10746m == null) {
            this.f10746m = MotionSpec.m10755d(this.f10758y.getContext(), C1027R.animator.design_fab_show_motion_spec);
        }
        MotionSpec motionSpec = this.f10746m;
        Preconditions.m19337d(motionSpec);
        return motionSpec;
    }

    @NonNull
    /* renamed from: r */
    private ViewTreeObserver.OnPreDrawListener m9667r() {
        if (this.f10733E == null) {
            this.f10733E = new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.5
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    FloatingActionButtonImpl.this.m9705H();
                    return true;
                }
            };
        }
        return this.f10733E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public void mo9653A() {
        this.f10745l.m9474c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public void m9708B() {
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            MaterialShapeUtils.m9281f(this.f10758y, materialShapeDrawable);
        }
        if (mo9649K()) {
            this.f10758y.getViewTreeObserver().addOnPreDrawListener(m9667r());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public void mo9652C() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public void m9707D() {
        ViewTreeObserver viewTreeObserver = this.f10758y.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f10733E;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f10733E = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public void mo9651E(int[] iArr) {
        this.f10745l.m9473d(iArr);
    }

    /* renamed from: F */
    void mo9650F(float f, float f2, float f3) {
        m9679f0();
        m9677g0(f);
    }

    /* renamed from: G */
    void m9706G(@NonNull Rect rect) {
        Preconditions.m19336e(this.f10738e, "Didn't initialize content background");
        if (mo9647Z()) {
            this.f10759z.mo9354c(new InsetDrawable(this.f10738e, rect.left, rect.top, rect.right, rect.bottom));
            return;
        }
        this.f10759z.mo9354c(this.f10738e);
    }

    /* renamed from: H */
    void m9705H() {
        float rotation = this.f10758y.getRotation();
        if (this.f10751r != rotation) {
            this.f10751r = rotation;
            mo9646d0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m9704I() {
        ArrayList<InternalTransformationCallback> arrayList = this.f10757x;
        if (arrayList != null) {
            Iterator<InternalTransformationCallback> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo9657b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public void m9703J() {
        ArrayList<InternalTransformationCallback> arrayList = this.f10757x;
        if (arrayList != null) {
            Iterator<InternalTransformationCallback> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo9658a();
            }
        }
    }

    /* renamed from: K */
    boolean mo9649K() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public void m9702L(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        BorderDrawable borderDrawable = this.f10737d;
        if (borderDrawable != null) {
            borderDrawable.m9777c(colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public void m9701M(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public final void m9700N(float f) {
        if (this.f10741h != f) {
            this.f10741h = f;
            mo9650F(f, this.f10742i, this.f10743j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public void m9699O(boolean z) {
        this.f10739f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: P */
    public final void m9698P(@Nullable MotionSpec motionSpec) {
        this.f10750q = motionSpec;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public final void m9697Q(float f) {
        if (this.f10742i != f) {
            this.f10742i = f;
            mo9650F(this.f10741h, f, this.f10743j);
        }
    }

    /* renamed from: R */
    final void m9696R(float f) {
        this.f10752s = f;
        Matrix matrix = this.f10732D;
        m9678g(f, matrix);
        this.f10758y.setImageMatrix(matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public final void m9695S(int i) {
        if (this.f10753t != i) {
            this.f10753t = i;
            m9681e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public void m9694T(int i) {
        this.f10744k = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public final void m9693U(float f) {
        if (this.f10743j != f) {
            this.f10743j = f;
            mo9650F(this.f10741h, this.f10742i, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public void mo9648V(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f10736c;
        if (drawable != null) {
            DrawableCompat.m19498o(drawable, RippleUtils.m9367d(colorStateList));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public void m9692W(boolean z) {
        this.f10740g = z;
        m9679f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public final void m9691X(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10734a = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Drawable drawable = this.f10736c;
        if (drawable instanceof Shapeable) {
            ((Shapeable) drawable).setShapeAppearanceModel(shapeAppearanceModel);
        }
        BorderDrawable borderDrawable = this.f10737d;
        if (borderDrawable != null) {
            borderDrawable.m9774f(shapeAppearanceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public final void m9690Y(@Nullable MotionSpec motionSpec) {
        this.f10749p = motionSpec;
    }

    /* renamed from: Z */
    boolean mo9647Z() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0 */
    public final boolean m9686b0() {
        return !this.f10739f || this.f10758y.getSizeDimension() >= this.f10744k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c0 */
    public void m9684c0(@Nullable final InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean z) {
        if (!m9661z()) {
            Animator animator = this.f10748o;
            if (animator != null) {
                animator.cancel();
            }
            if (m9688a0()) {
                if (this.f10758y.getVisibility() != 0) {
                    this.f10758y.setAlpha(0.0f);
                    this.f10758y.setScaleY(0.0f);
                    this.f10758y.setScaleX(0.0f);
                    m9696R(0.0f);
                }
                MotionSpec motionSpec = this.f10749p;
                if (motionSpec == null) {
                    motionSpec = m9671m();
                }
                AnimatorSet h = m9676h(motionSpec, 1.0f, 1.0f, 1.0f);
                h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        FloatingActionButtonImpl.this.f10754u = 0;
                        FloatingActionButtonImpl.this.f10748o = null;
                        InternalVisibilityChangedListener internalVisibilityChangedListener2 = internalVisibilityChangedListener;
                        if (internalVisibilityChangedListener2 != null) {
                            internalVisibilityChangedListener2.mo9656a();
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator2) {
                        FloatingActionButtonImpl.this.f10758y.m9422a(0, z);
                        FloatingActionButtonImpl.this.f10754u = 2;
                        FloatingActionButtonImpl.this.f10748o = animator2;
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.f10755v;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        h.addListener(it.next());
                    }
                }
                h.start();
                return;
            }
            this.f10758y.m9422a(0, z);
            this.f10758y.setAlpha(1.0f);
            this.f10758y.setScaleY(1.0f);
            this.f10758y.setScaleX(1.0f);
            m9696R(1.0f);
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.mo9656a();
            }
        }
    }

    /* renamed from: d */
    public void m9683d(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f10756w == null) {
            this.f10756w = new ArrayList<>();
        }
        this.f10756w.add(animatorListener);
    }

    /* renamed from: d0 */
    void mo9646d0() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f10751r % 90.0f != 0.0f) {
                if (this.f10758y.getLayerType() != 1) {
                    this.f10758y.setLayerType(1, null);
                }
            } else if (this.f10758y.getLayerType() != 0) {
                this.f10758y.setLayerType(0, null);
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.m9318d0((int) this.f10751r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m9682e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f10755v == null) {
            this.f10755v = new ArrayList<>();
        }
        this.f10755v.add(animatorListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e0 */
    public final void m9681e0() {
        m9696R(this.f10752s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m9680f(@NonNull InternalTransformationCallback internalTransformationCallback) {
        if (this.f10757x == null) {
            this.f10757x = new ArrayList<>();
        }
        this.f10757x.add(internalTransformationCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f0 */
    public final void m9679f0() {
        Rect rect = this.f10729A;
        mo9641s(rect);
        m9706G(rect);
        this.f10759z.mo9356a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g0 */
    public void m9677g0(float f) {
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.m9329V(f);
        }
    }

    /* renamed from: j */
    MaterialShapeDrawable mo9644j() {
        ShapeAppearanceModel shapeAppearanceModel = this.f10734a;
        Preconditions.m19337d(shapeAppearanceModel);
        return new MaterialShapeDrawable(shapeAppearanceModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: k */
    public final Drawable m9673k() {
        return this.f10738e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public float mo9642n() {
        return this.f10741h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m9670o() {
        return this.f10739f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: p */
    public final MotionSpec m9669p() {
        return this.f10750q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public float m9668q() {
        return this.f10742i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void mo9641s(@NonNull Rect rect) {
        int sizeDimension = this.f10739f ? (this.f10744k - this.f10758y.getSizeDimension()) / 2 : 0;
        float n = this.f10740g ? mo9642n() + this.f10743j : 0.0f;
        int max = Math.max(sizeDimension, (int) Math.ceil(n));
        int max2 = Math.max(sizeDimension, (int) Math.ceil(n * 1.5f));
        rect.set(max, max2, max, max2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public float m9666t() {
        return this.f10743j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: u */
    public final ShapeAppearanceModel m9665u() {
        return this.f10734a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: v */
    public final MotionSpec m9664v() {
        return this.f10749p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m9663w(@Nullable final InternalVisibilityChangedListener internalVisibilityChangedListener, final boolean z) {
        if (!m9662y()) {
            Animator animator = this.f10748o;
            if (animator != null) {
                animator.cancel();
            }
            if (m9688a0()) {
                MotionSpec motionSpec = this.f10750q;
                if (motionSpec == null) {
                    motionSpec = m9672l();
                }
                AnimatorSet h = m9676h(motionSpec, 0.0f, 0.0f, 0.0f);
                h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.1

                    /* renamed from: a */
                    private boolean f10760a;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator2) {
                        this.f10760a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        FloatingActionButtonImpl.this.f10754u = 0;
                        FloatingActionButtonImpl.this.f10748o = null;
                        if (!this.f10760a) {
                            FloatingActionButtonImpl.this.f10758y.m9422a(z ? 8 : 4, z);
                            InternalVisibilityChangedListener internalVisibilityChangedListener2 = internalVisibilityChangedListener;
                            if (internalVisibilityChangedListener2 != null) {
                                internalVisibilityChangedListener2.mo9655b();
                            }
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator2) {
                        FloatingActionButtonImpl.this.f10758y.m9422a(0, z);
                        FloatingActionButtonImpl.this.f10754u = 1;
                        FloatingActionButtonImpl.this.f10748o = animator2;
                        this.f10760a = false;
                    }
                });
                ArrayList<Animator.AnimatorListener> arrayList = this.f10756w;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        h.addListener(it.next());
                    }
                }
                h.start();
                return;
            }
            this.f10758y.m9422a(z ? 8 : 4, z);
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.mo9655b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void mo9640x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        MaterialShapeDrawable j = mo9644j();
        this.f10735b = j;
        j.setTintList(colorStateList);
        if (mode != null) {
            this.f10735b.setTintMode(mode);
        }
        this.f10735b.m9320c0(-12303292);
        this.f10735b.m9338M(this.f10758y.getContext());
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f10735b.getShapeAppearanceModel());
        rippleDrawableCompat.setTintList(RippleUtils.m9367d(colorStateList2));
        this.f10736c = rippleDrawableCompat;
        MaterialShapeDrawable materialShapeDrawable = this.f10735b;
        Preconditions.m19337d(materialShapeDrawable);
        this.f10738e = new LayerDrawable(new Drawable[]{materialShapeDrawable, rippleDrawableCompat});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public boolean m9662y() {
        boolean z = false;
        boolean z2 = false;
        if (this.f10758y.getVisibility() == 0) {
            if (this.f10754u == 1) {
                z2 = true;
            }
            return z2;
        }
        if (this.f10754u != 2) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public boolean m9661z() {
        boolean z = false;
        boolean z2 = false;
        if (this.f10758y.getVisibility() != 0) {
            if (this.f10754u == 2) {
                z2 = true;
            }
            return z2;
        }
        if (this.f10754u != 1) {
            z = true;
        }
        return z;
    }
}
