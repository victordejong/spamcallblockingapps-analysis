package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.animation.ChildrenAlphaProperty;
import com.google.android.material.animation.DrawableAlphaProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.MotionTiming;
import com.google.android.material.animation.Positioning;
import com.google.android.material.circularreveal.CircularRevealCompat;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.math.MathUtils;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    private final Rect f11622c;

    /* renamed from: d */
    private final RectF f11623d;

    /* renamed from: e */
    private final RectF f11624e;

    /* renamed from: f */
    private final int[] f11625f;

    /* renamed from: g */
    private float f11626g;

    /* renamed from: h */
    private float f11627h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec.class */
    public static class FabTransformationSpec {
        @Nullable

        /* renamed from: a */
        public MotionSpec f11635a;

        /* renamed from: b */
        public Positioning f11636b;
    }

    public FabTransformationBehavior() {
        this.f11622c = new Rect();
        this.f11623d = new RectF();
        this.f11624e = new RectF();
        this.f11625f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11622c = new Rect();
        this.f11623d = new RectF();
        this.f11624e = new RectF();
        this.f11625f = new int[2];
    }

    @Nullable
    /* renamed from: K */
    private ViewGroup m8676K(@NonNull View view) {
        View findViewById = view.findViewById(C1027R.C1030id.mtrl_child_content_container);
        return findViewById != null ? m8656f0(findViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? m8656f0(((ViewGroup) view).getChildAt(0)) : m8656f0(view);
    }

    /* renamed from: L */
    private void m8675L(@NonNull View view, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull MotionTiming motionTiming, @NonNull MotionTiming motionTiming2, float f, float f2, float f3, float f4, @NonNull RectF rectF) {
        float S = m8668S(fabTransformationSpec, motionTiming, f, f3);
        float S2 = m8668S(fabTransformationSpec, motionTiming2, f2, f4);
        Rect rect = this.f11622c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f11623d;
        rectF2.set(rect);
        RectF rectF3 = this.f11624e;
        m8667T(view, rectF3);
        rectF3.offset(S, S2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: M */
    private void m8674M(@NonNull View view, @NonNull RectF rectF) {
        m8667T(view, rectF);
        rectF.offset(this.f11626g, this.f11627h);
    }

    @NonNull
    /* renamed from: N */
    private Pair<MotionTiming, MotionTiming> m8673N(float f, float f2, boolean z, @NonNull FabTransformationSpec fabTransformationSpec) {
        MotionTiming motionTiming;
        MotionTiming motionTiming2;
        int i;
        if (f == 0.0f || f2 == 0.0f) {
            motionTiming2 = fabTransformationSpec.f11635a.m10751h("translationXLinear");
            motionTiming = fabTransformationSpec.f11635a.m10751h("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || i <= 0)) {
            motionTiming2 = fabTransformationSpec.f11635a.m10751h("translationXCurveDownwards");
            motionTiming = fabTransformationSpec.f11635a.m10751h("translationYCurveDownwards");
        } else {
            motionTiming2 = fabTransformationSpec.f11635a.m10751h("translationXCurveUpwards");
            motionTiming = fabTransformationSpec.f11635a.m10751h("translationYCurveUpwards");
        }
        return new Pair<>(motionTiming2, motionTiming);
    }

    /* renamed from: O */
    private float m8672O(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        RectF rectF = this.f11623d;
        RectF rectF2 = this.f11624e;
        m8674M(view, rectF);
        m8667T(view2, rectF2);
        rectF2.offset(-m8670Q(view, view2, positioning), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: P */
    private float m8671P(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        RectF rectF = this.f11623d;
        RectF rectF2 = this.f11624e;
        m8674M(view, rectF);
        m8667T(view2, rectF2);
        rectF2.offset(0.0f, -m8669R(view, view2, positioning));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: Q */
    private float m8670Q(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f11623d;
        RectF rectF2 = this.f11624e;
        m8674M(view, rectF);
        m8667T(view2, rectF2);
        int i = positioning.f9943a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + positioning.f9944b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + positioning.f9944b;
    }

    /* renamed from: R */
    private float m8669R(@NonNull View view, @NonNull View view2, @NonNull Positioning positioning) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f11623d;
        RectF rectF2 = this.f11624e;
        m8674M(view, rectF);
        m8667T(view2, rectF2);
        int i = positioning.f9943a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + positioning.f9945c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + positioning.f9945c;
    }

    /* renamed from: S */
    private float m8668S(@NonNull FabTransformationSpec fabTransformationSpec, @NonNull MotionTiming motionTiming, float f, float f2) {
        long c = motionTiming.m10743c();
        long d = motionTiming.m10742d();
        MotionTiming h = fabTransformationSpec.f11635a.m10751h("expansion");
        return AnimationUtils.m10769a(f, f2, motionTiming.m10741e().getInterpolation(((float) (((h.m10743c() + h.m10742d()) + 17) - c)) / ((float) d)));
    }

    /* renamed from: T */
    private void m8667T(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f11625f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: U */
    private void m8666U(View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup K;
        ObjectAnimator objectAnimator;
        if (view2 instanceof ViewGroup) {
            if ((!(view2 instanceof CircularRevealWidget) || CircularRevealHelper.f10468j != 0) && (K = m8676K(view2)) != null) {
                if (z) {
                    if (!z2) {
                        ChildrenAlphaProperty.f9929a.set(K, Float.valueOf(0.0f));
                    }
                    objectAnimator = ObjectAnimator.ofFloat(K, ChildrenAlphaProperty.f9929a, 1.0f);
                } else {
                    objectAnimator = ObjectAnimator.ofFloat(K, ChildrenAlphaProperty.f9929a, 0.0f);
                }
                fabTransformationSpec.f11635a.m10751h("contentFade").m10745a(objectAnimator);
                list.add(objectAnimator);
            }
        }
    }

    /* renamed from: V */
    private void m8665V(@NonNull View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if (view2 instanceof CircularRevealWidget) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            int d0 = m8657d0(view);
            if (z) {
                if (!z2) {
                    circularRevealWidget.setCircularRevealScrimColor(d0);
                }
                objectAnimator = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.CircularRevealScrimColorProperty.f10483a, 16777215 & d0);
            } else {
                objectAnimator = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.CircularRevealScrimColorProperty.f10483a, d0);
            }
            objectAnimator.setEvaluator(ArgbEvaluatorCompat.m10765b());
            fabTransformationSpec.f11635a.m10751h("color").m10745a(objectAnimator);
            list.add(objectAnimator);
        }
    }

    /* renamed from: W */
    private void m8664W(@NonNull View view, @NonNull View view2, boolean z, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list) {
        float Q = m8670Q(view, view2, fabTransformationSpec.f11636b);
        float R = m8669R(view, view2, fabTransformationSpec.f11636b);
        Pair<MotionTiming, MotionTiming> N = m8673N(Q, R, z, fabTransformationSpec);
        MotionTiming motionTiming = (MotionTiming) N.first;
        MotionTiming motionTiming2 = (MotionTiming) N.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            Q = this.f11626g;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, Q);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? R : this.f11627h);
        motionTiming.m10745a(ofFloat);
        motionTiming2.m10745a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    @TargetApi(21)
    /* renamed from: X */
    private void m8663X(View view, @NonNull View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        float v = ViewCompat.m19168v(view2) - ViewCompat.m19168v(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-v);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -v);
        }
        fabTransformationSpec.f11635a.m10751h("elevation").m10745a(objectAnimator);
        list.add(objectAnimator);
    }

    /* renamed from: Y */
    private void m8662Y(@NonNull View view, View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, float f, float f2, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof CircularRevealWidget) {
            final CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            float O = m8672O(view, view2, fabTransformationSpec.f11636b);
            float P = m8671P(view, view2, fabTransformationSpec.f11636b);
            ((FloatingActionButton) view).m9732i(this.f11622c);
            float width = this.f11622c.width() / 2.0f;
            MotionTiming h = fabTransformationSpec.f11635a.m10751h("expansion");
            if (z) {
                if (!z2) {
                    circularRevealWidget.setRevealInfo(new CircularRevealWidget.RevealInfo(O, P, width));
                }
                if (z2) {
                    width = circularRevealWidget.getRevealInfo().f10486c;
                }
                animator = CircularRevealCompat.m10046a(circularRevealWidget, O, P, MathUtils.m9420b(O, P, 0.0f, 0.0f, f, f2));
                animator.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator2) {
                        CircularRevealWidget.RevealInfo revealInfo = circularRevealWidget.getRevealInfo();
                        revealInfo.f10486c = Float.MAX_VALUE;
                        circularRevealWidget.setRevealInfo(revealInfo);
                    }
                });
                m8659b0(view2, h.m10743c(), (int) O, (int) P, width, list);
            } else {
                float f3 = circularRevealWidget.getRevealInfo().f10486c;
                animator = CircularRevealCompat.m10046a(circularRevealWidget, O, P, width);
                long c = h.m10743c();
                int i = (int) O;
                int i2 = (int) P;
                m8659b0(view2, c, i, i2, f3, list);
                m8660a0(view2, h.m10743c(), h.m10742d(), fabTransformationSpec.f11635a.m10750i(), i, i2, width, list);
            }
            h.m10745a(animator);
            list.add(animator);
            list2.add(CircularRevealCompat.m10045b(circularRevealWidget));
        }
    }

    /* renamed from: Z */
    private void m8661Z(View view, final View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if ((view2 instanceof CircularRevealWidget) && (view instanceof ImageView)) {
            final CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimator = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.f9930b, 0);
                } else {
                    objectAnimator = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.f9930b, 255);
                }
                objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        view2.invalidate();
                    }
                });
                fabTransformationSpec.f11635a.m10751h("iconFade").m10745a(objectAnimator);
                list.add(objectAnimator);
                list2.add(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        circularRevealWidget.setCircularRevealOverlayDrawable(null);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        circularRevealWidget.setCircularRevealOverlayDrawable(drawable);
                    }
                });
            }
        }
    }

    /* renamed from: a0 */
    private void m8660a0(View view, long j, long j2, long j3, int i, int i2, float f, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                createCircularReveal.setStartDelay(j4);
                createCircularReveal.setDuration(j3 - j4);
                list.add(createCircularReveal);
            }
        }
    }

    /* renamed from: b0 */
    private void m8659b0(View view, long j, int i, int i2, float f, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: c0 */
    private void m8658c0(@NonNull View view, @NonNull View view2, boolean z, boolean z2, @NonNull FabTransformationSpec fabTransformationSpec, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        float Q = m8670Q(view, view2, fabTransformationSpec.f11636b);
        float R = m8669R(view, view2, fabTransformationSpec.f11636b);
        Pair<MotionTiming, MotionTiming> N = m8673N(Q, R, z, fabTransformationSpec);
        MotionTiming motionTiming = (MotionTiming) N.first;
        MotionTiming motionTiming2 = (MotionTiming) N.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-Q);
                view2.setTranslationY(-R);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            m8675L(view2, fabTransformationSpec, motionTiming, motionTiming2, -Q, -R, 0.0f, 0.0f, rectF);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -Q);
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -R);
        }
        motionTiming.m10745a(objectAnimator);
        motionTiming2.m10745a(objectAnimator2);
        list.add(objectAnimator);
        list.add(objectAnimator2);
    }

    /* renamed from: d0 */
    private int m8657d0(@NonNull View view) {
        ColorStateList r = ViewCompat.m19176r(view);
        if (r != null) {
            return r.getColorForState(view.getDrawableState(), r.getDefaultColor());
        }
        return 0;
    }

    @Nullable
    /* renamed from: f0 */
    private ViewGroup m8656f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: J */
    protected AnimatorSet mo8653J(@NonNull final View view, @NonNull final View view2, final boolean z, boolean z2) {
        FabTransformationSpec e0 = mo8649e0(view2.getContext(), z);
        if (z) {
            this.f11626g = view.getTranslationX();
            this.f11627h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m8663X(view, view2, z, z2, e0, arrayList, arrayList2);
        }
        RectF rectF = this.f11623d;
        m8658c0(view, view2, z, z2, e0, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m8664W(view, view2, z, e0, arrayList);
        m8661Z(view, view2, z, z2, e0, arrayList, arrayList2);
        m8662Y(view, view2, z, z2, e0, width, height, arrayList, arrayList2);
        m8665V(view, view2, z, z2, e0, arrayList, arrayList2);
        m8666U(view, view2, z, z2, e0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.m10767a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    view2.setVisibility(4);
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    view.setAlpha(0.0f);
                    view.setVisibility(4);
                }
            }
        });
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
        if (r0 == r6.getId()) goto L_0x0036;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @androidx.annotation.CallSuper
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8651e(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r5, @androidx.annotation.NonNull android.view.View r6, @androidx.annotation.NonNull android.view.View r7) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 == r1) goto L_0x003c
            r0 = r7
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0039
            r0 = r7
            com.google.android.material.floatingactionbutton.FloatingActionButton r0 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r0
            int r0 = r0.getExpandedComponentIdHint()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0036
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r6
            int r1 = r1.getId()
            if (r0 != r1) goto L_0x0039
        L_0x0036:
            r0 = 1
            r10 = r0
        L_0x0039:
            r0 = r10
            return r0
        L_0x003c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo8651e(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View):boolean");
    }

    /* renamed from: e0 */
    protected abstract FabTransformationSpec mo8649e0(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    /* renamed from: g */
    public void mo8655g(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.f2784h == 0) {
            layoutParams.f2784h = 80;
        }
    }
}
