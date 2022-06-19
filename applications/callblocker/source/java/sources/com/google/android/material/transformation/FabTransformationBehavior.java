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
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p142a.C4506b;
import com.google.android.material.p142a.C4507c;
import com.google.android.material.p142a.C4508d;
import com.google.android.material.p142a.C4509e;
import com.google.android.material.p142a.C4512h;
import com.google.android.material.p142a.C4513i;
import com.google.android.material.p142a.C4514j;
import com.google.android.material.p147f.AbstractC4647d;
import com.google.android.material.p147f.C4641a;
import com.google.android.material.p147f.C4645c;
import com.google.android.material.p154l.C4713a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final Rect f20891a;

    /* renamed from: b */
    private final RectF f20892b;

    /* renamed from: c */
    private final RectF f20893c;

    /* renamed from: d */
    private final int[] f20894d;

    /* renamed from: e */
    private float f20895e;

    /* renamed from: f */
    private float f20896f;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public static class C4849a {

        /* renamed from: a */
        public C4512h f20908a;

        /* renamed from: b */
        public C4514j f20909b;
    }

    public FabTransformationBehavior() {
        this.f20891a = new Rect();
        this.f20892b = new RectF();
        this.f20893c = new RectF();
        this.f20894d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20891a = new Rect();
        this.f20892b = new RectF();
        this.f20893c = new RectF();
        this.f20894d = new int[2];
    }

    /* renamed from: a */
    private float m2208a(View view, View view2, C4514j c4514j) {
        RectF rectF = this.f20892b;
        RectF rectF2 = this.f20893c;
        m2199b(view, rectF);
        m2209a(view2, rectF2);
        float f = 0.0f;
        switch (c4514j.f19589a & 7) {
            case 1:
                f = rectF2.centerX() - rectF.centerX();
                break;
            case 2:
            case 4:
                break;
            case 3:
                f = rectF2.left - rectF.left;
                break;
            case 5:
                f = rectF2.right - rectF.right;
                break;
            default:
                f = 0.0f;
                break;
        }
        return f + c4514j.f19590b;
    }

    /* renamed from: a */
    private float m2201a(C4849a c4849a, C4513i c4513i, float f, float f2) {
        long m3836a = c4513i.m3836a();
        long m3833b = c4513i.m3833b();
        C4513i m3837b = c4849a.f20908a.m3837b("expansion");
        long m3836a2 = m3837b.m3836a();
        return C4505a.m3856a(f, f2, c4513i.m3831c().getInterpolation(((float) (((m3837b.m3833b() + m3836a2) + 17) - m3836a)) / ((float) m3833b)));
    }

    /* renamed from: a */
    private Pair<C4513i, C4513i> m2213a(float f, float f2, boolean z, C4849a c4849a) {
        C4513i c4513i;
        C4513i c4513i2;
        if (f == 0.0f || f2 == 0.0f) {
            c4513i = c4849a.f20908a.m3837b("translationXLinear");
            c4513i2 = c4849a.f20908a.m3837b("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            c4513i = c4849a.f20908a.m3837b("translationXCurveDownwards");
            c4513i2 = c4849a.f20908a.m3837b("translationYCurveDownwards");
        } else {
            c4513i = c4849a.f20908a.m3837b("translationXCurveUpwards");
            c4513i2 = c4849a.f20908a.m3837b("translationYCurveUpwards");
        }
        return new Pair<>(c4513i, c4513i2);
    }

    /* renamed from: a */
    private ViewGroup m2212a(View view) {
        View findViewById = view.findViewById(C4492a.C4498f.mtrl_child_content_container);
        return findViewById != null ? m2200b(findViewById) : ((view instanceof C4852b) || (view instanceof C4851a)) ? m2200b(((ViewGroup) view).getChildAt(0)) : m2200b(view);
    }

    /* renamed from: a */
    private void m2211a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j);
        list.add(createCircularReveal);
    }

    /* renamed from: a */
    private void m2210a(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j + j2 >= j3) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        createCircularReveal.setStartDelay(j + j2);
        createCircularReveal.setDuration(j3 - (j + j2));
        list.add(createCircularReveal);
    }

    /* renamed from: a */
    private void m2209a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f20894d;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: a */
    private void m2207a(View view, View view2, boolean z, C4849a c4849a, List<Animator> list) {
        float m2208a = m2208a(view, view2, c4849a.f20909b);
        float m2198b = m2198b(view, view2, c4849a.f20909b);
        Pair<C4513i, C4513i> m2213a = m2213a(m2208a, m2198b, z, c4849a);
        C4513i c4513i = (C4513i) m2213a.first;
        C4513i c4513i2 = (C4513i) m2213a.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            m2208a = this.f20895e;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, m2208a);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? m2198b : this.f20896f);
        c4513i.m3835a((Animator) ofFloat);
        c4513i2.m3835a((Animator) ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    /* renamed from: a */
    private void m2206a(View view, View view2, boolean z, boolean z2, C4849a c4849a, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator m3090a;
        if (!(view2 instanceof AbstractC4647d)) {
            return;
        }
        final AbstractC4647d abstractC4647d = (AbstractC4647d) view2;
        float m2195c = m2195c(view, view2, c4849a.f20909b);
        float m2193d = m2193d(view, view2, c4849a.f20909b);
        ((FloatingActionButton) view).m3036a(this.f20891a);
        float width = this.f20891a.width() / 2.0f;
        C4513i m3837b = c4849a.f20908a.m3837b("expansion");
        if (z) {
            if (!z2) {
                abstractC4647d.setRevealInfo(new AbstractC4647d.C4652d(m2195c, m2193d, width));
            }
            if (z2) {
                width = abstractC4647d.getRevealInfo().f20169c;
            }
            m3090a = C4641a.m3090a(abstractC4647d, m2195c, m2193d, C4713a.m2794a(m2195c, m2193d, 0.0f, 0.0f, f, f2));
            m3090a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AbstractC4647d.C4652d revealInfo = abstractC4647d.getRevealInfo();
                    revealInfo.f20169c = Float.MAX_VALUE;
                    abstractC4647d.setRevealInfo(revealInfo);
                }
            });
            m2211a(view2, m3837b.m3836a(), (int) m2195c, (int) m2193d, width, list);
        } else {
            float f3 = abstractC4647d.getRevealInfo().f20169c;
            m3090a = C4641a.m3090a(abstractC4647d, m2195c, m2193d, width);
            m2211a(view2, m3837b.m3836a(), (int) m2195c, (int) m2193d, f3, list);
            m2210a(view2, m3837b.m3836a(), m3837b.m3833b(), c4849a.f20908a.m3845a(), (int) m2195c, (int) m2193d, width, list);
        }
        m3837b.m3835a(m3090a);
        list.add(m3090a);
        list2.add(C4641a.m3091a(abstractC4647d));
    }

    @TargetApi(21)
    /* renamed from: a */
    private void m2205a(View view, View view2, boolean z, boolean z2, C4849a c4849a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float m20310n = C0595u.m20310n(view2) - C0595u.m20310n(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-m20310n);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -m20310n);
        }
        c4849a.f20908a.m3837b("elevation").m3835a((Animator) ofFloat);
        list.add(ofFloat);
    }

    /* renamed from: a */
    private void m2204a(View view, View view2, boolean z, boolean z2, C4849a c4849a, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        ObjectAnimator ofFloat;
        ObjectAnimator objectAnimator;
        float m2208a = m2208a(view, view2, c4849a.f20909b);
        float m2198b = m2198b(view, view2, c4849a.f20909b);
        Pair<C4513i, C4513i> m2213a = m2213a(m2208a, m2198b, z, c4849a);
        C4513i c4513i = (C4513i) m2213a.first;
        C4513i c4513i2 = (C4513i) m2213a.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m2208a);
                view2.setTranslationY(-m2198b);
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            m2203a(view2, c4849a, c4513i, c4513i2, -m2208a, -m2198b, 0.0f, 0.0f, rectF);
            objectAnimator = ofFloat2;
        } else {
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -m2208a);
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -m2198b);
            objectAnimator = ofFloat3;
        }
        c4513i.m3835a((Animator) objectAnimator);
        c4513i2.m3835a((Animator) ofFloat);
        list.add(objectAnimator);
        list.add(ofFloat);
    }

    /* renamed from: a */
    private void m2203a(View view, C4849a c4849a, C4513i c4513i, C4513i c4513i2, float f, float f2, float f3, float f4, RectF rectF) {
        float m2201a = m2201a(c4849a, c4513i, f, f3);
        float m2201a2 = m2201a(c4849a, c4513i2, f2, f4);
        Rect rect = this.f20891a;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f20892b;
        rectF2.set(rect);
        RectF rectF3 = this.f20893c;
        m2209a(view, rectF3);
        rectF3.offset(m2201a, m2201a2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: b */
    private float m2198b(View view, View view2, C4514j c4514j) {
        RectF rectF = this.f20892b;
        RectF rectF2 = this.f20893c;
        m2199b(view, rectF);
        m2209a(view2, rectF2);
        float f = 0.0f;
        switch (c4514j.f19589a & 112) {
            case 16:
                f = rectF2.centerY() - rectF.centerY();
                break;
            case 48:
                f = rectF2.top - rectF.top;
                break;
            case 80:
                f = rectF2.bottom - rectF.bottom;
                break;
        }
        return f + c4514j.f19591c;
    }

    /* renamed from: b */
    private ViewGroup m2200b(View view) {
        return view instanceof ViewGroup ? (ViewGroup) view : null;
    }

    /* renamed from: b */
    private void m2199b(View view, RectF rectF) {
        m2209a(view, rectF);
        rectF.offset(this.f20895e, this.f20896f);
    }

    /* renamed from: b */
    private void m2197b(View view, final View view2, boolean z, boolean z2, C4849a c4849a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (!(view2 instanceof AbstractC4647d) || !(view instanceof ImageView)) {
            return;
        }
        final AbstractC4647d abstractC4647d = (AbstractC4647d) view2;
        final Drawable drawable = ((ImageView) view).getDrawable();
        if (drawable == null) {
            return;
        }
        drawable.mutate();
        if (z) {
            if (!z2) {
                drawable.setAlpha(255);
            }
            ofInt = ObjectAnimator.ofInt(drawable, C4509e.f19576a, 0);
        } else {
            ofInt = ObjectAnimator.ofInt(drawable, C4509e.f19576a, 255);
        }
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view2.invalidate();
            }
        });
        c4849a.f20908a.m3837b("iconFade").m3835a((Animator) ofInt);
        list.add(ofInt);
        list2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                abstractC4647d.setCircularRevealOverlayDrawable(null);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                abstractC4647d.setCircularRevealOverlayDrawable(drawable);
            }
        });
    }

    /* renamed from: c */
    private float m2195c(View view, View view2, C4514j c4514j) {
        RectF rectF = this.f20892b;
        RectF rectF2 = this.f20893c;
        m2199b(view, rectF);
        m2209a(view2, rectF2);
        rectF2.offset(-m2208a(view, view2, c4514j), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: c */
    private int m2196c(View view) {
        ColorStateList m20303u = C0595u.m20303u(view);
        return m20303u != null ? m20303u.getColorForState(view.getDrawableState(), m20303u.getDefaultColor()) : 0;
    }

    /* renamed from: c */
    private void m2194c(View view, View view2, boolean z, boolean z2, C4849a c4849a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (!(view2 instanceof AbstractC4647d)) {
            return;
        }
        AbstractC4647d abstractC4647d = (AbstractC4647d) view2;
        int m2196c = m2196c(view);
        if (z) {
            if (!z2) {
                abstractC4647d.setCircularRevealScrimColor(m2196c);
            }
            ofInt = ObjectAnimator.ofInt(abstractC4647d, AbstractC4647d.C4651c.f20166a, 16777215 & m2196c);
        } else {
            ofInt = ObjectAnimator.ofInt(abstractC4647d, AbstractC4647d.C4651c.f20166a, m2196c);
        }
        ofInt.setEvaluator(C4507c.m3853a());
        c4849a.f20908a.m3837b("color").m3835a((Animator) ofInt);
        list.add(ofInt);
    }

    /* renamed from: d */
    private float m2193d(View view, View view2, C4514j c4514j) {
        RectF rectF = this.f20892b;
        RectF rectF2 = this.f20893c;
        m2199b(view, rectF);
        m2209a(view2, rectF2);
        rectF2.offset(0.0f, -m2198b(view, view2, c4514j));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: d */
    private void m2192d(View view, View view2, boolean z, boolean z2, C4849a c4849a, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup m2212a;
        ObjectAnimator ofFloat;
        if (!(view2 instanceof ViewGroup)) {
            return;
        }
        if (((view2 instanceof AbstractC4647d) && C4645c.f20153a == 0) || (m2212a = m2212a(view2)) == null) {
            return;
        }
        if (z) {
            if (!z2) {
                C4508d.f19575a.set(m2212a, Float.valueOf(0.0f));
            }
            ofFloat = ObjectAnimator.ofFloat(m2212a, C4508d.f19575a, 1.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(m2212a, C4508d.f19575a, 0.0f);
        }
        c4849a.f20908a.m3837b("contentFade").m3835a((Animator) ofFloat);
        list.add(ofFloat);
    }

    /* renamed from: a */
    protected abstract C4849a mo2187a(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo2202a(CoordinatorLayout.C0426e c0426e) {
        if (c0426e.f1709h == 0) {
            c0426e.f1709h = 80;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
        if (r0 == r6.getId()) goto L12;
     */
    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2190a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, android.view.View r6, android.view.View r7) {
        /*
            r4 = this;
            r0 = 0
            r8 = r0
            r0 = r6
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 != r1) goto L17
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."
            r1.<init>(r2)
            throw r0
        L17:
            r0 = r8
            r9 = r0
            r0 = r7
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r0 == 0) goto L40
            r0 = r7
            com.google.android.material.floatingactionbutton.FloatingActionButton r0 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r0
            int r0 = r0.getExpandedComponentIdHint()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L3d
            r0 = r8
            r9 = r0
            r0 = r10
            r1 = r6
            int r1 = r1.getId()
            if (r0 != r1) goto L40
        L3d:
            r0 = 1
            r9 = r0
        L40:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo2190a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View):boolean");
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: b */
    protected AnimatorSet mo2189b(final View view, final View view2, final boolean z, boolean z2) {
        C4849a mo2187a = mo2187a(view2.getContext(), z);
        if (z) {
            this.f20895e = view.getTranslationX();
            this.f20896f = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m2205a(view, view2, z, z2, mo2187a, arrayList, arrayList2);
        }
        RectF rectF = this.f20892b;
        m2204a(view, view2, z, z2, mo2187a, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m2207a(view, view2, z, mo2187a, arrayList);
        m2197b(view, view2, z, z2, mo2187a, arrayList, arrayList2);
        m2206a(view, view2, z, z2, mo2187a, width, height, arrayList, arrayList2);
        m2194c(view, view2, z, z2, mo2187a, arrayList, arrayList2);
        m2192d(view, view2, z, z2, mo2187a, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C4506b.m3854a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
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
}
