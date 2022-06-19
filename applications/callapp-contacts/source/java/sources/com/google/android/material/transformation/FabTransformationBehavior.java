package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
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
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.circularreveal.AbstractC14490c;
import com.google.android.material.circularreveal.C14486a;
import com.google.android.material.circularreveal.C14488b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p364a.C14390b;
import com.google.android.material.p364a.C14391c;
import com.google.android.material.p364a.C14392d;
import com.google.android.material.p364a.C14393e;
import com.google.android.material.p364a.C14396h;
import com.google.android.material.p364a.C14397i;
import com.google.android.material.p364a.C14398j;
import com.google.android.material.p370g.C14594a;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final Rect f54272a;

    /* renamed from: b */
    private final RectF f54273b;

    /* renamed from: c */
    private final RectF f54274c;

    /* renamed from: d */
    private final int[] f54275d;

    /* renamed from: e */
    private float f54276e;

    /* renamed from: f */
    private float f54277f;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public static final class C14867a {

        /* renamed from: a */
        public C14396h f54289a;

        /* renamed from: b */
        public C14398j f54290b;
    }

    public FabTransformationBehavior() {
        this.f54272a = new Rect();
        this.f54273b = new RectF();
        this.f54274c = new RectF();
        this.f54275d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54272a = new Rect();
        this.f54273b = new RectF();
        this.f54274c = new RectF();
        this.f54275d = new int[2];
    }

    /* renamed from: a */
    private float m9843a(View view, View view2, C14398j c14398j) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f54273b;
        RectF rectF2 = this.f54274c;
        m9840b(view, rectF);
        m9844a(view2, rectF2);
        int i = c14398j.f52388a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + c14398j.f52389b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + c14398j.f52389b;
    }

    /* renamed from: a */
    private static float m9841a(C14867a c14867a, C14397i c14397i, float f, float f2) {
        long j = c14397i.f52383a;
        long j2 = c14397i.f52384b;
        C14397i m11330a = c14867a.f54289a.m11330a("expansion");
        return C14389a.m11339a(f, (float) BitmapDescriptorFactory.HUE_RED, c14397i.m11322a().getInterpolation(((float) (((m11330a.f52383a + m11330a.f52384b) + 17) - j)) / ((float) j2)));
    }

    /* renamed from: a */
    private static Pair<C14397i, C14397i> m9847a(float f, float f2, boolean z, C14867a c14867a) {
        C14397i c14397i;
        C14397i c14397i2;
        int i;
        if (f == BitmapDescriptorFactory.HUE_RED || f2 == BitmapDescriptorFactory.HUE_RED) {
            C14397i m11330a = c14867a.f54289a.m11330a("translationXLinear");
            c14397i = c14867a.f54289a.m11330a("translationYLinear");
            c14397i2 = m11330a;
        } else if ((!z || f2 >= BitmapDescriptorFactory.HUE_RED) && (z || i <= 0)) {
            c14397i2 = c14867a.f54289a.m11330a("translationXCurveDownwards");
            c14397i = c14867a.f54289a.m11330a("translationYCurveDownwards");
        } else {
            c14397i2 = c14867a.f54289a.m11330a("translationXCurveUpwards");
            c14397i = c14867a.f54289a.m11330a("translationYCurveUpwards");
        }
        return new Pair<>(c14397i2, c14397i);
    }

    /* renamed from: a */
    private static ViewGroup m9846a(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* renamed from: a */
    private static void m9845a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j);
        list.add(createCircularReveal);
    }

    /* renamed from: a */
    private void m9844a(View view, RectF rectF) {
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight());
        int[] iArr = this.f54275d;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: b */
    private float m9839b(View view, View view2, C14398j c14398j) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f54273b;
        RectF rectF2 = this.f54274c;
        m9840b(view, rectF);
        m9844a(view2, rectF2);
        int i = c14398j.f52388a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + c14398j.f52390c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + c14398j.f52390c;
    }

    /* renamed from: b */
    private void m9840b(View view, RectF rectF) {
        m9844a(view, rectF);
        rectF.offset(this.f54276e, this.f54277f);
    }

    /* renamed from: a */
    protected abstract C14867a mo9835a(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo9842a(CoordinatorLayout.C0702d c0702d) {
        if (c0702d.f3207h == 0) {
            c0702d.f3207h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9838a(View view, View view2) {
        if (view.getVisibility() != 8) {
            if (!(view2 instanceof FloatingActionButton)) {
                return false;
            }
            int i = ((FloatingActionButton) view2).f53114c.f53074c;
            return i == 0 || i == view.getId();
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: b */
    protected final AnimatorSet mo9837b(final View view, final View view2, final boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        ObjectAnimator objectAnimator3;
        ObjectAnimator objectAnimator4;
        Animator animator;
        ObjectAnimator objectAnimator5;
        ObjectAnimator objectAnimator6;
        C14867a mo9835a = mo9835a(view2.getContext(), z);
        if (z) {
            this.f54276e = view.getTranslationX();
            this.f54277f = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            float m44085n = C0926v.m44085n(view2) - C0926v.m44085n(view);
            if (z) {
                if (!z2) {
                    view2.setTranslationZ(-m44085n);
                }
                objectAnimator6 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED);
            } else {
                objectAnimator6 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -m44085n);
            }
            mo9835a.f54289a.m11330a("elevation").m11321a((Animator) objectAnimator6);
            arrayList.add(objectAnimator6);
        }
        RectF rectF = this.f54273b;
        float m9843a = m9843a(view, view2, mo9835a.f54290b);
        float m9839b = m9839b(view, view2, mo9835a.f54290b);
        Pair<C14397i, C14397i> m9847a = m9847a(m9843a, m9839b, z, mo9835a);
        C14397i c14397i = (C14397i) m9847a.first;
        C14397i c14397i2 = (C14397i) m9847a.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m9843a);
                view2.setTranslationY(-m9839b);
            }
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED);
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
            float f = -m9843a;
            float f2 = -m9839b;
            float m9841a = m9841a(mo9835a, c14397i, f, (float) BitmapDescriptorFactory.HUE_RED);
            float m9841a2 = m9841a(mo9835a, c14397i2, f2, (float) BitmapDescriptorFactory.HUE_RED);
            Rect rect = this.f54272a;
            view2.getWindowVisibleDisplayFrame(rect);
            RectF rectF2 = this.f54273b;
            rectF2.set(rect);
            RectF rectF3 = this.f54274c;
            m9844a(view2, rectF3);
            rectF3.offset(m9841a, m9841a2);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
        } else {
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -m9843a);
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -m9839b);
        }
        c14397i.m11321a((Animator) objectAnimator2);
        c14397i2.m11321a((Animator) objectAnimator);
        arrayList.add(objectAnimator2);
        arrayList.add(objectAnimator);
        float width = rectF.width();
        float height = rectF.height();
        float m9843a2 = m9843a(view, view2, mo9835a.f54290b);
        float m9839b2 = m9839b(view, view2, mo9835a.f54290b);
        Pair<C14397i, C14397i> m9847a2 = m9847a(m9843a2, m9839b2, z, mo9835a);
        C14397i c14397i3 = (C14397i) m9847a2.first;
        C14397i c14397i4 = (C14397i) m9847a2.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            m9843a2 = this.f54276e;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, m9843a2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? m9839b2 : this.f54277f);
        c14397i3.m11321a((Animator) ofFloat);
        c14397i4.m11321a((Animator) ofFloat2);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        boolean z3 = view2 instanceof AbstractC14490c;
        if (z3 && (view instanceof ImageView)) {
            final AbstractC14490c abstractC14490c = (AbstractC14490c) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimator5 = ObjectAnimator.ofInt(drawable, C14393e.f52375a, 0);
                } else {
                    objectAnimator5 = ObjectAnimator.ofInt(drawable, C14393e.f52375a, 255);
                }
                objectAnimator5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        view2.invalidate();
                    }
                });
                mo9835a.f54289a.m11330a("iconFade").m11321a((Animator) objectAnimator5);
                arrayList.add(objectAnimator5);
                arrayList2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        abstractC14490c.setCircularRevealOverlayDrawable(null);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator2) {
                        abstractC14490c.setCircularRevealOverlayDrawable(drawable);
                    }
                });
            }
        }
        if (z3) {
            final AbstractC14490c abstractC14490c2 = (AbstractC14490c) view2;
            C14398j c14398j = mo9835a.f54290b;
            RectF rectF4 = this.f54273b;
            RectF rectF5 = this.f54274c;
            m9840b(view, rectF4);
            m9844a(view2, rectF5);
            rectF5.offset(-m9843a(view, view2, c14398j), BitmapDescriptorFactory.HUE_RED);
            float centerX = rectF4.centerX() - rectF5.left;
            C14398j c14398j2 = mo9835a.f54290b;
            RectF rectF6 = this.f54273b;
            RectF rectF7 = this.f54274c;
            m9840b(view, rectF6);
            m9844a(view2, rectF7);
            rectF7.offset(BitmapDescriptorFactory.HUE_RED, -m9839b(view, view2, c14398j2));
            float centerY = rectF6.centerY() - rectF7.top;
            ((FloatingActionButton) view).m10745a(this.f54272a);
            float width2 = this.f54272a.width() / 2.0f;
            C14397i m11330a = mo9835a.f54289a.m11330a("expansion");
            if (z) {
                if (!z2) {
                    abstractC14490c2.setRevealInfo(new AbstractC14490c.C14495d(centerX, centerY, width2));
                }
                if (z2) {
                    width2 = abstractC14490c2.mo10867c().f52930c;
                }
                animator = C14486a.m10888a(abstractC14490c2, centerX, centerY, C14594a.m10662a(centerX, centerY, width, height));
                animator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        AbstractC14490c.C14495d mo10867c = abstractC14490c2.mo10867c();
                        mo10867c.f52930c = Float.MAX_VALUE;
                        abstractC14490c2.setRevealInfo(mo10867c);
                    }
                });
                m9845a(view2, m11330a.f52383a, (int) centerX, (int) centerY, width2, arrayList);
            } else {
                float f3 = abstractC14490c2.mo10867c().f52930c;
                animator = C14486a.m10888a(abstractC14490c2, centerX, centerY, width2);
                long j = m11330a.f52383a;
                int i = (int) centerX;
                int i2 = (int) centerY;
                m9845a(view2, j, i, i2, f3, arrayList);
                long j2 = m11330a.f52383a;
                long j3 = m11330a.f52384b;
                long m11334a = mo9835a.f54289a.m11334a();
                if (Build.VERSION.SDK_INT >= 21) {
                    long j4 = j2 + j3;
                    if (j4 < m11334a) {
                        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i, i2, width2, width2);
                        createCircularReveal.setStartDelay(j4);
                        createCircularReveal.setDuration(m11334a - j4);
                        arrayList.add(createCircularReveal);
                    }
                }
            }
            m11330a.m11321a(animator);
            arrayList.add(animator);
            arrayList2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.circularreveal.a.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator2) {
                    abstractC14490c2.mo10868b();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator2) {
                    abstractC14490c2.mo10870a();
                }
            });
        }
        if (z3) {
            AbstractC14490c abstractC14490c3 = (AbstractC14490c) view2;
            ColorStateList m44076w = C0926v.m44076w(view);
            int colorForState = m44076w != null ? m44076w.getColorForState(view.getDrawableState(), m44076w.getDefaultColor()) : 0;
            if (z) {
                if (!z2) {
                    abstractC14490c3.setCircularRevealScrimColor(colorForState);
                }
                objectAnimator4 = ObjectAnimator.ofInt(abstractC14490c3, AbstractC14490c.C14494c.f52927a, 16777215 & colorForState);
            } else {
                objectAnimator4 = ObjectAnimator.ofInt(abstractC14490c3, AbstractC14490c.C14494c.f52927a, colorForState);
            }
            objectAnimator4.setEvaluator(C14391c.m11336a());
            mo9835a.f54289a.m11330a("color").m11321a((Animator) objectAnimator4);
            arrayList.add(objectAnimator4);
        }
        if ((view2 instanceof ViewGroup) && (!z3 || C14488b.f52914a != 0)) {
            View findViewById = view2.findViewById(C14376a.C14382f.mtrl_child_content_container);
            ViewGroup m9846a = findViewById != null ? m9846a(findViewById) : ((view2 instanceof TransformationChildLayout) || (view2 instanceof TransformationChildCard)) ? m9846a(((ViewGroup) view2).getChildAt(0)) : m9846a(view2);
            if (m9846a != null) {
                if (z) {
                    if (!z2) {
                        C14392d.f52374a.set(m9846a, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
                    }
                    objectAnimator3 = ObjectAnimator.ofFloat(m9846a, C14392d.f52374a, 1.0f);
                } else {
                    objectAnimator3 = ObjectAnimator.ofFloat(m9846a, C14392d.f52374a, BitmapDescriptorFactory.HUE_RED);
                }
                mo9835a.f54289a.m11330a("contentFade").m11321a((Animator) objectAnimator3);
                arrayList.add(objectAnimator3);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C14390b.m11337a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                if (!z) {
                    view2.setVisibility(4);
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                if (z) {
                    view2.setVisibility(0);
                    view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    view.setVisibility(4);
                }
            }
        });
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList2.get(i3));
        }
        return animatorSet;
    }
}
