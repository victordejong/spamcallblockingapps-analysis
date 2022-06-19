package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import p029c4.C0821e;
import p090f3.C2727a;
import p090f3.C2728b;
import p090f3.C2729c;
import p090f3.C2730d;
import p090f3.C2733g;
import p090f3.C2734h;
import p113h4.C3007a;
import p113h4.C3008b;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
import p188o3.AbstractC3850d;
import p188o3.C3847a;
import p188o3.C3848b;
import p291y.C4951d;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    public final Rect f6948c;

    /* renamed from: d */
    public final RectF f6949d;

    /* renamed from: e */
    public final RectF f6950e;

    /* renamed from: f */
    public final int[] f6951f;

    /* renamed from: g */
    public float f6952g;

    /* renamed from: h */
    public float f6953h;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public class C1845a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f6954a;

        /* renamed from: b */
        public final /* synthetic */ View f6955b;

        /* renamed from: c */
        public final /* synthetic */ View f6956c;

        public C1845a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.f6954a = z;
            this.f6955b = view;
            this.f6956c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f6954a) {
                this.f6955b.setVisibility(4);
                this.f6956c.setAlpha(1.0f);
                this.f6956c.setVisibility(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f6954a) {
                this.f6955b.setVisibility(0);
                this.f6956c.setAlpha(0.0f);
                this.f6956c.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$b.class */
    public static class C1846b {

        /* renamed from: a */
        public C2733g f6957a;

        /* renamed from: b */
        public C0821e f6958b;
    }

    public FabTransformationBehavior() {
        this.f6948c = new Rect();
        this.f6949d = new RectF();
        this.f6950e = new RectF();
        this.f6951f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6948c = new Rect();
        this.f6949d = new RectF();
        this.f6950e = new RectF();
        this.f6951f = new int[2];
    }

    /* renamed from: A */
    public abstract C1846b mo4479A(Context context, boolean z);

    /* renamed from: B */
    public final ViewGroup m4488B(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
        if (r0 == r6.getId()) goto L10;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo4481b(androidx.coordinatorlayout.widget.CoordinatorLayout r5, android.view.View r6, android.view.View r7) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 == r1) goto L3c
            r0 = r7
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L39
            r0 = r7
            com.google.android.material.floatingactionbutton.FloatingActionButton r0 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r0
            int r0 = r0.getExpandedComponentIdHint()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L36
            r0 = r9
            r10 = r0
            r0 = r11
            r1 = r6
            int r1 = r1.getId()
            if (r0 != r1) goto L39
        L36:
            r0 = 1
            r10 = r0
        L39:
            r0 = r10
            return r0
        L3c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo4481b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: c */
    public void mo4487c(CoordinatorLayout.C0324f c0324f) {
        if (c0324f.f1465h == 0) {
            c0324f.f1465h = 80;
        }
    }

    /* JADX WARN: Type inference failed for: r0v223, types: [long] */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: u */
    public AnimatorSet mo4480u(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        ObjectAnimator objectAnimator3;
        ArrayList arrayList;
        ArrayList arrayList2;
        ObjectAnimator objectAnimator4;
        ObjectAnimator objectAnimator5;
        Animator animator;
        C2734h c2734h;
        ObjectAnimator objectAnimator6;
        C1846b mo4479A = mo4479A(view2.getContext(), z);
        if (z) {
            this.f6952g = view.getTranslationX();
            this.f6953h = view.getTranslationY();
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        float m2042i = C3589v.C3598i.m2042i(view2) - C3589v.C3598i.m2042i(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-m2042i);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -m2042i);
        }
        mo4479A.f6957a.m3191d("elevation").m3190a(objectAnimator);
        arrayList3.add(objectAnimator);
        RectF rectF = this.f6949d;
        float m4485w = m4485w(view, view2, mo4479A.f6958b);
        float m4484x = m4484x(view, view2, mo4479A.f6958b);
        Pair<C2734h, C2734h> m4486v = m4486v(m4485w, m4484x, z, mo4479A);
        C2734h c2734h2 = (C2734h) m4486v.first;
        C2734h c2734h3 = (C2734h) m4486v.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m4485w);
                view2.setTranslationY(-m4484x);
            }
            objectAnimator3 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            float f = -m4485w;
            float f2 = -m4484x;
            float m4483y = m4483y(mo4479A, c2734h2, f, 0.0f);
            float m4483y2 = m4483y(mo4479A, c2734h3, f2, 0.0f);
            Rect rect = this.f6948c;
            view2.getWindowVisibleDisplayFrame(rect);
            RectF rectF2 = this.f6949d;
            rectF2.set(rect);
            RectF rectF3 = this.f6950e;
            m4482z(view2, rectF3);
            rectF3.offset(m4483y, m4483y2);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
            objectAnimator2 = ofFloat;
        } else {
            objectAnimator3 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -m4485w);
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -m4484x);
        }
        c2734h2.m3190a(objectAnimator3);
        c2734h3.m3190a(objectAnimator2);
        arrayList3.add(objectAnimator3);
        arrayList3.add(objectAnimator2);
        float width = rectF.width();
        float height = rectF.height();
        float m4485w2 = m4485w(view, view2, mo4479A.f6958b);
        float m4484x2 = m4484x(view, view2, mo4479A.f6958b);
        Pair<C2734h, C2734h> m4486v2 = m4486v(m4485w2, m4484x2, z, mo4479A);
        C2734h c2734h4 = (C2734h) m4486v2.first;
        C2734h c2734h5 = (C2734h) m4486v2.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            m4485w2 = this.f6952g;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, property, m4485w2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? m4484x2 : this.f6953h);
        c2734h4.m3190a(ofFloat2);
        c2734h5.m3190a(ofFloat3);
        arrayList3.add(ofFloat2);
        arrayList3.add(ofFloat3);
        boolean z3 = view2 instanceof AbstractC3850d;
        if (z3 && (view instanceof ImageView)) {
            AbstractC3850d abstractC3850d = (AbstractC3850d) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimator6 = ObjectAnimator.ofInt(drawable, C2730d.f9379a, 0);
                } else {
                    objectAnimator6 = ObjectAnimator.ofInt(drawable, C2730d.f9379a, 255);
                }
                objectAnimator6.addUpdateListener(new C1848a(this, view2));
                mo4479A.f6957a.m3191d("iconFade").m3190a(objectAnimator6);
                arrayList3.add(objectAnimator6);
                arrayList4.add(new C1849b(this, abstractC3850d, drawable));
            }
        }
        if (!z3) {
            arrayList = arrayList4;
            arrayList2 = arrayList3;
        } else {
            AbstractC3850d abstractC3850d2 = (AbstractC3850d) view2;
            C0821e c0821e = mo4479A.f6958b;
            RectF rectF4 = this.f6949d;
            RectF rectF5 = this.f6950e;
            m4482z(view, rectF4);
            rectF4.offset(this.f6952g, this.f6953h);
            m4482z(view2, rectF5);
            rectF5.offset(-m4485w(view, view2, c0821e), 0.0f);
            float centerX = rectF4.centerX() - rectF5.left;
            C0821e c0821e2 = mo4479A.f6958b;
            RectF rectF6 = this.f6949d;
            RectF rectF7 = this.f6950e;
            m4482z(view, rectF6);
            rectF6.offset(this.f6952g, this.f6953h);
            m4482z(view2, rectF7);
            rectF7.offset(0.0f, -m4484x(view, view2, c0821e2));
            float centerY = rectF6.centerY() - rectF7.top;
            ((FloatingActionButton) view).m4582g(this.f6948c);
            float width2 = this.f6948c.width() / 2.0f;
            C2734h m3191d = mo4479A.f6957a.m3191d("expansion");
            if (z) {
                if (!z2) {
                    abstractC3850d2.setRevealInfo(new AbstractC3850d.C3855e(centerX, centerY, width2));
                }
                if (z2) {
                    width2 = abstractC3850d2.getRevealInfo().f12344c;
                }
                float m196g = C4951d.m196g(centerX, centerY, 0.0f, 0.0f);
                float m196g2 = C4951d.m196g(centerX, centerY, width, 0.0f);
                float m196g3 = C4951d.m196g(centerX, centerY, width, height);
                float m196g4 = C4951d.m196g(centerX, centerY, 0.0f, height);
                if (m196g <= m196g2 || m196g <= m196g3 || m196g <= m196g4) {
                    m196g = (m196g2 <= m196g3 || m196g2 <= m196g4) ? m196g3 > m196g4 ? m196g3 : m196g4 : m196g2;
                }
                Animator m1763a = C3848b.m1763a(abstractC3850d2, centerX, centerY, m196g);
                m1763a.addListener(new C1850c(this, abstractC3850d2));
                long j = m3191d.f9386a;
                int i = (int) centerX;
                int i2 = (int) centerY;
                if (j > 0) {
                    Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i, i2, width2, width2);
                    createCircularReveal.setStartDelay(0L);
                    createCircularReveal.setDuration(j);
                    arrayList3.add(createCircularReveal);
                }
                c2734h = m3191d;
                animator = m1763a;
            } else {
                float f3 = abstractC3850d2.getRevealInfo().f12344c;
                Animator m1763a2 = C3848b.m1763a(abstractC3850d2, centerX, centerY, width2);
                long j2 = m3191d.f9386a;
                int i3 = (int) centerX;
                int i4 = (int) centerY;
                if (j2 > 0) {
                    Animator createCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, i3, i4, f3, f3);
                    createCircularReveal2.setStartDelay(0L);
                    createCircularReveal2.setDuration(j2);
                    arrayList3.add(createCircularReveal2);
                }
                long j3 = m3191d.f9386a;
                long j4 = m3191d.f9387b;
                C2733g c2733g = mo4479A.f6957a;
                int i5 = c2733g.f9384a.f13365c;
                char c = 0;
                for (int i6 = 0; i6 < i5; i6++) {
                    C2734h m1192k = c2733g.f9384a.m1192k(i6);
                    c = Math.max((long) c, m1192k.f9386a + m1192k.f9387b);
                }
                long j5 = j3 + j4;
                if (j5 < c) {
                    Animator createCircularReveal3 = ViewAnimationUtils.createCircularReveal(view2, i3, i4, width2, width2);
                    createCircularReveal3.setStartDelay(j5);
                    createCircularReveal3.setDuration(c - j5);
                    arrayList3.add(createCircularReveal3);
                }
                c2734h = m3191d;
                animator = m1763a2;
            }
            c2734h.m3190a(animator);
            arrayList3.add(animator);
            arrayList4.add(new C3847a(abstractC3850d2));
            arrayList = arrayList4;
            arrayList2 = arrayList3;
        }
        if (z3) {
            AbstractC3850d abstractC3850d3 = (AbstractC3850d) view2;
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            ColorStateList m2044g = C3589v.C3598i.m2044g(view);
            int colorForState = m2044g != null ? m2044g.getColorForState(view.getDrawableState(), m2044g.getDefaultColor()) : 0;
            if (z) {
                if (!z2) {
                    abstractC3850d3.setCircularRevealScrimColor(colorForState);
                }
                objectAnimator5 = ObjectAnimator.ofInt(abstractC3850d3, AbstractC3850d.C3854d.f12341a, 16777215 & colorForState);
            } else {
                objectAnimator5 = ObjectAnimator.ofInt(abstractC3850d3, AbstractC3850d.C3854d.f12341a, colorForState);
            }
            objectAnimator5.setEvaluator(C2728b.f9377a);
            mo4479A.f6957a.m3191d("color").m3190a(objectAnimator5);
            arrayList2.add(objectAnimator5);
        }
        if (view2 instanceof ViewGroup) {
            View findViewById = view2.findViewById(2131296825);
            ViewGroup m4488B = findViewById != null ? m4488B(findViewById) : ((view2 instanceof C3008b) || (view2 instanceof C3007a)) ? m4488B(((ViewGroup) view2).getChildAt(0)) : m4488B(view2);
            if (m4488B != null) {
                if (z) {
                    if (!z2) {
                        C2729c.f9378a.set(m4488B, Float.valueOf(0.0f));
                    }
                    objectAnimator4 = ObjectAnimator.ofFloat(m4488B, C2729c.f9378a, 1.0f);
                } else {
                    objectAnimator4 = ObjectAnimator.ofFloat(m4488B, C2729c.f9378a, 0.0f);
                }
                mo4479A.f6957a.m3191d("contentFade").m3190a(objectAnimator4);
                arrayList2.add(objectAnimator4);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C3102d.m2647E(animatorSet, arrayList2);
        animatorSet.addListener(new C1845a(this, z, view2, view));
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList.get(i7));
        }
        return animatorSet;
    }

    /* renamed from: v */
    public final Pair<C2734h, C2734h> m4486v(float f, float f2, boolean z, C1846b c1846b) {
        C2734h c2734h;
        C2734h c2734h2;
        int i;
        if (f == 0.0f || f2 == 0.0f) {
            C2734h m3191d = c1846b.f6957a.m3191d("translationXLinear");
            c2734h = c1846b.f6957a.m3191d("translationYLinear");
            c2734h2 = m3191d;
        } else if ((!z || f2 >= 0.0f) && (z || i <= 0)) {
            C2734h m3191d2 = c1846b.f6957a.m3191d("translationXCurveDownwards");
            c2734h = c1846b.f6957a.m3191d("translationYCurveDownwards");
            c2734h2 = m3191d2;
        } else {
            C2734h m3191d3 = c1846b.f6957a.m3191d("translationXCurveUpwards");
            c2734h = c1846b.f6957a.m3191d("translationYCurveUpwards");
            c2734h2 = m3191d3;
        }
        return new Pair<>(c2734h2, c2734h);
    }

    /* renamed from: w */
    public final float m4485w(View view, View view2, C0821e c0821e) {
        RectF rectF = this.f6949d;
        RectF rectF2 = this.f6950e;
        m4482z(view, rectF);
        rectF.offset(this.f6952g, this.f6953h);
        m4482z(view2, rectF2);
        Objects.requireNonNull(c0821e);
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    /* renamed from: x */
    public final float m4484x(View view, View view2, C0821e c0821e) {
        RectF rectF = this.f6949d;
        RectF rectF2 = this.f6950e;
        m4482z(view, rectF);
        rectF.offset(this.f6952g, this.f6953h);
        m4482z(view2, rectF2);
        Objects.requireNonNull(c0821e);
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    /* renamed from: y */
    public final float m4483y(C1846b c1846b, C2734h c2734h, float f, float f2) {
        long j = c2734h.f9386a;
        long j2 = c2734h.f9387b;
        C2734h m3191d = c1846b.f6957a.m3191d("expansion");
        return C2727a.m3196a(f, f2, c2734h.m3189b().getInterpolation(((float) (((m3191d.f9386a + m3191d.f9387b) + 17) - j)) / ((float) j2)));
    }

    /* renamed from: z */
    public final void m4482z(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f6951f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }
}
