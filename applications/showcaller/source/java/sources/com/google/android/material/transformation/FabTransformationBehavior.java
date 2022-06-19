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
import com.google.android.material.circularreveal.AbstractC8067c;
import com.google.android.material.circularreveal.C8063a;
import com.google.android.material.circularreveal.C8065b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p097m.C1898b;
import p078c.p084c.p085a.p096b.p097m.C1899c;
import p078c.p084c.p085a.p096b.p097m.C1900d;
import p078c.p084c.p085a.p096b.p097m.C1901e;
import p078c.p084c.p085a.p096b.p097m.C1904h;
import p078c.p084c.p085a.p096b.p097m.C1905i;
import p078c.p084c.p085a.p096b.p097m.C1906j;
import p078c.p084c.p085a.p096b.p104t.C1915a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    private final Rect f37620c;

    /* renamed from: d */
    private final RectF f37621d;

    /* renamed from: e */
    private final RectF f37622e;

    /* renamed from: f */
    private final int[] f37623f;

    /* renamed from: g */
    private float f37624g;

    /* renamed from: h */
    private float f37625h;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    class C8349a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f37626a;

        /* renamed from: b */
        final /* synthetic */ View f37627b;

        /* renamed from: c */
        final /* synthetic */ View f37628c;

        C8349a(boolean z, View view, View view2) {
            FabTransformationBehavior.this = r4;
            this.f37626a = z;
            this.f37627b = view;
            this.f37628c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f37626a) {
                this.f37627b.setVisibility(4);
                this.f37628c.setAlpha(1.0f);
                this.f37628c.setVisibility(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f37626a) {
                this.f37627b.setVisibility(0);
                this.f37628c.setAlpha(0.0f);
                this.f37628c.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$b.class */
    public class C8350b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ View f37630a;

        C8350b(View view) {
            FabTransformationBehavior.this = r4;
            this.f37630a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f37630a.invalidate();
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$c.class */
    public class C8351c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ AbstractC8067c f37632a;

        /* renamed from: b */
        final /* synthetic */ Drawable f37633b;

        C8351c(AbstractC8067c abstractC8067c, Drawable drawable) {
            FabTransformationBehavior.this = r4;
            this.f37632a = abstractC8067c;
            this.f37633b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f37632a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f37632a.setCircularRevealOverlayDrawable(this.f37633b);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$d.class */
    public class C8352d extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ AbstractC8067c f37635a;

        C8352d(AbstractC8067c abstractC8067c) {
            FabTransformationBehavior.this = r4;
            this.f37635a = abstractC8067c;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractC8067c.C8072e revealInfo = this.f37635a.getRevealInfo();
            revealInfo.f36542c = Float.MAX_VALUE;
            this.f37635a.setRevealInfo(revealInfo);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$e.class */
    public static class C8353e {

        /* renamed from: a */
        public C1904h f37637a;

        /* renamed from: b */
        public C1906j f37638b;
    }

    public FabTransformationBehavior() {
        this.f37620c = new Rect();
        this.f37621d = new RectF();
        this.f37622e = new RectF();
        this.f37623f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37620c = new Rect();
        this.f37621d = new RectF();
        this.f37622e = new RectF();
        this.f37623f = new int[2];
    }

    /* renamed from: K */
    private ViewGroup m3826K(View view) {
        View findViewById = view.findViewById(C1890f.mtrl_child_content_container);
        return findViewById != null ? m3806f0(findViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? m3806f0(((ViewGroup) view).getChildAt(0)) : m3806f0(view);
    }

    /* renamed from: L */
    private void m3825L(View view, C8353e c8353e, C1905i c1905i, C1905i c1905i2, float f, float f2, float f3, float f4, RectF rectF) {
        float m3818S = m3818S(c8353e, c1905i, f, f3);
        float m3818S2 = m3818S(c8353e, c1905i2, f2, f4);
        Rect rect = this.f37620c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f37621d;
        rectF2.set(rect);
        RectF rectF3 = this.f37622e;
        m3817T(view, rectF3);
        rectF3.offset(m3818S, m3818S2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: M */
    private void m3824M(View view, RectF rectF) {
        m3817T(view, rectF);
        rectF.offset(this.f37624g, this.f37625h);
    }

    /* renamed from: N */
    private Pair<C1905i, C1905i> m3823N(float f, float f2, boolean z, C8353e c8353e) {
        C1905i c1905i;
        C1905i c1905i2;
        int i;
        if (f == 0.0f || f2 == 0.0f) {
            C1905i m28733h = c8353e.f37637a.m28733h("translationXLinear");
            c1905i = c8353e.f37637a.m28733h("translationYLinear");
            c1905i2 = m28733h;
        } else if ((!z || f2 >= 0.0f) && (z || i <= 0)) {
            C1905i m28733h2 = c8353e.f37637a.m28733h("translationXCurveDownwards");
            c1905i = c8353e.f37637a.m28733h("translationYCurveDownwards");
            c1905i2 = m28733h2;
        } else {
            C1905i m28733h3 = c8353e.f37637a.m28733h("translationXCurveUpwards");
            c1905i = c8353e.f37637a.m28733h("translationYCurveUpwards");
            c1905i2 = m28733h3;
        }
        return new Pair<>(c1905i2, c1905i);
    }

    /* renamed from: O */
    private float m3822O(View view, View view2, C1906j c1906j) {
        RectF rectF = this.f37621d;
        RectF rectF2 = this.f37622e;
        m3824M(view, rectF);
        m3817T(view2, rectF2);
        rectF2.offset(-m3820Q(view, view2, c1906j), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: P */
    private float m3821P(View view, View view2, C1906j c1906j) {
        RectF rectF = this.f37621d;
        RectF rectF2 = this.f37622e;
        m3824M(view, rectF);
        m3817T(view2, rectF2);
        rectF2.offset(0.0f, -m3819R(view, view2, c1906j));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: Q */
    private float m3820Q(View view, View view2, C1906j c1906j) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f37621d;
        RectF rectF2 = this.f37622e;
        m3824M(view, rectF);
        m3817T(view2, rectF2);
        int i = c1906j.f6833a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + c1906j.f6834b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + c1906j.f6834b;
    }

    /* renamed from: R */
    private float m3819R(View view, View view2, C1906j c1906j) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f37621d;
        RectF rectF2 = this.f37622e;
        m3824M(view, rectF);
        m3817T(view2, rectF2);
        int i = c1906j.f6833a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + c1906j.f6835c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + c1906j.f6835c;
    }

    /* renamed from: S */
    private float m3818S(C8353e c8353e, C1905i c1905i, float f, float f2) {
        long m28725c = c1905i.m28725c();
        long m28724d = c1905i.m28724d();
        C1905i m28733h = c8353e.f37637a.m28733h("expansion");
        return C1897a.m28752a(f, f2, c1905i.m28723e().getInterpolation(((float) (((m28733h.m28725c() + m28733h.m28724d()) + 17) - m28725c)) / ((float) m28724d)));
    }

    /* renamed from: T */
    private void m3817T(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f37623f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: U */
    private void m3816U(View view, View view2, boolean z, boolean z2, C8353e c8353e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup m3826K;
        ObjectAnimator objectAnimator;
        if (!(view2 instanceof ViewGroup)) {
            return;
        }
        if (((view2 instanceof AbstractC8067c) && C8065b.f36526a == 0) || (m3826K = m3826K(view2)) == null) {
            return;
        }
        if (z) {
            if (!z2) {
                C1900d.f6819a.set(m3826K, Float.valueOf(0.0f));
            }
            objectAnimator = ObjectAnimator.ofFloat(m3826K, C1900d.f6819a, 1.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(m3826K, C1900d.f6819a, 0.0f);
        }
        c8353e.f37637a.m28733h("contentFade").m28727a(objectAnimator);
        list.add(objectAnimator);
    }

    /* renamed from: V */
    private void m3815V(View view, View view2, boolean z, boolean z2, C8353e c8353e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if (!(view2 instanceof AbstractC8067c)) {
            return;
        }
        AbstractC8067c abstractC8067c = (AbstractC8067c) view2;
        int m3807d0 = m3807d0(view);
        if (z) {
            if (!z2) {
                abstractC8067c.setCircularRevealScrimColor(m3807d0);
            }
            objectAnimator = ObjectAnimator.ofInt(abstractC8067c, AbstractC8067c.C8071d.f36539a, 16777215 & m3807d0);
        } else {
            objectAnimator = ObjectAnimator.ofInt(abstractC8067c, AbstractC8067c.C8071d.f36539a, m3807d0);
        }
        objectAnimator.setEvaluator(C1899c.m28747b());
        c8353e.f37637a.m28733h("color").m28727a(objectAnimator);
        list.add(objectAnimator);
    }

    /* renamed from: W */
    private void m3814W(View view, View view2, boolean z, C8353e c8353e, List<Animator> list) {
        float m3820Q = m3820Q(view, view2, c8353e.f37638b);
        float m3819R = m3819R(view, view2, c8353e.f37638b);
        Pair<C1905i, C1905i> m3823N = m3823N(m3820Q, m3819R, z, c8353e);
        C1905i c1905i = (C1905i) m3823N.first;
        C1905i c1905i2 = (C1905i) m3823N.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            m3820Q = this.f37624g;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, m3820Q);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? m3819R : this.f37625h);
        c1905i.m28727a(ofFloat);
        c1905i2.m28727a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    @TargetApi(21)
    /* renamed from: X */
    private void m3813X(View view, View view2, boolean z, boolean z2, C8353e c8353e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        float m29264w = C1679w.m29264w(view2) - C1679w.m29264w(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-m29264w);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -m29264w);
        }
        c8353e.f37637a.m28733h("elevation").m28727a(objectAnimator);
        list.add(objectAnimator);
    }

    /* renamed from: Y */
    private void m3812Y(View view, View view2, boolean z, boolean z2, C8353e c8353e, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (!(view2 instanceof AbstractC8067c)) {
            return;
        }
        AbstractC8067c abstractC8067c = (AbstractC8067c) view2;
        float m3822O = m3822O(view, view2, c8353e.f37638b);
        float m3821P = m3821P(view, view2, c8353e.f37638b);
        ((FloatingActionButton) view).m4783i(this.f37620c);
        float width = this.f37620c.width() / 2.0f;
        C1905i m28733h = c8353e.f37637a.m28733h("expansion");
        if (z) {
            if (!z2) {
                abstractC8067c.setRevealInfo(new AbstractC8067c.C8072e(m3822O, m3821P, width));
            }
            if (z2) {
                width = abstractC8067c.getRevealInfo().f36542c;
            }
            animator = C8063a.m5064a(abstractC8067c, m3822O, m3821P, C1915a.m28696b(m3822O, m3821P, 0.0f, 0.0f, f, f2));
            animator.addListener(new C8352d(abstractC8067c));
            m3809b0(view2, m28733h.m28725c(), (int) m3822O, (int) m3821P, width, list);
        } else {
            float f3 = abstractC8067c.getRevealInfo().f36542c;
            animator = C8063a.m5064a(abstractC8067c, m3822O, m3821P, width);
            long m28725c = m28733h.m28725c();
            int i = (int) m3822O;
            int i2 = (int) m3821P;
            m3809b0(view2, m28725c, i, i2, f3, list);
            m3810a0(view2, m28733h.m28725c(), m28733h.m28724d(), c8353e.f37637a.m28732i(), i, i2, width, list);
        }
        m28733h.m28727a(animator);
        list.add(animator);
        list2.add(C8063a.m5063b(abstractC8067c));
    }

    /* renamed from: Z */
    private void m3811Z(View view, View view2, boolean z, boolean z2, C8353e c8353e, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if (!(view2 instanceof AbstractC8067c) || !(view instanceof ImageView)) {
            return;
        }
        AbstractC8067c abstractC8067c = (AbstractC8067c) view2;
        Drawable drawable = ((ImageView) view).getDrawable();
        if (drawable == null) {
            return;
        }
        drawable.mutate();
        if (z) {
            if (!z2) {
                drawable.setAlpha(255);
            }
            objectAnimator = ObjectAnimator.ofInt(drawable, C1901e.f6820a, 0);
        } else {
            objectAnimator = ObjectAnimator.ofInt(drawable, C1901e.f6820a, 255);
        }
        objectAnimator.addUpdateListener(new C8350b(view2));
        c8353e.f37637a.m28733h("iconFade").m28727a(objectAnimator);
        list.add(objectAnimator);
        list2.add(new C8351c(abstractC8067c, drawable));
    }

    /* renamed from: a0 */
    private void m3810a0(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 >= j3) {
                return;
            }
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(j4);
            createCircularReveal.setDuration(j3 - j4);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: b0 */
    private void m3809b0(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j);
        list.add(createCircularReveal);
    }

    /* renamed from: c0 */
    private void m3808c0(View view, View view2, boolean z, boolean z2, C8353e c8353e, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        float m3820Q = m3820Q(view, view2, c8353e.f37638b);
        float m3819R = m3819R(view, view2, c8353e.f37638b);
        Pair<C1905i, C1905i> m3823N = m3823N(m3820Q, m3819R, z, c8353e);
        C1905i c1905i = (C1905i) m3823N.first;
        C1905i c1905i2 = (C1905i) m3823N.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-m3820Q);
                view2.setTranslationY(-m3819R);
            }
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            m3825L(view2, c8353e, c1905i, c1905i2, -m3820Q, -m3819R, 0.0f, 0.0f, rectF);
            objectAnimator = ofFloat;
        } else {
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -m3820Q);
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -m3819R);
        }
        c1905i.m28727a(objectAnimator2);
        c1905i2.m28727a(objectAnimator);
        list.add(objectAnimator2);
        list.add(objectAnimator);
    }

    /* renamed from: d0 */
    private int m3807d0(View view) {
        ColorStateList m29272s = C1679w.m29272s(view);
        if (m29272s != null) {
            return m29272s.getColorForState(view.getDrawableState(), m29272s.getDefaultColor());
        }
        return 0;
    }

    /* renamed from: f0 */
    private ViewGroup m3806f0(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: J */
    protected AnimatorSet mo3803J(View view, View view2, boolean z, boolean z2) {
        C8353e mo3799e0 = mo3799e0(view2.getContext(), z);
        if (z) {
            this.f37624g = view.getTranslationX();
            this.f37625h = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m3813X(view, view2, z, z2, mo3799e0, arrayList, arrayList2);
        }
        RectF rectF = this.f37621d;
        m3808c0(view, view2, z, z2, mo3799e0, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m3814W(view, view2, z, mo3799e0, arrayList);
        m3811Z(view, view2, z, z2, mo3799e0, arrayList, arrayList2);
        m3812Y(view, view2, z, z2, mo3799e0, width, height, arrayList, arrayList2);
        m3815V(view, view2, z, z2, mo3799e0, arrayList, arrayList2);
        m3816U(view, view2, z, z2, mo3799e0, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C1898b.m28749a(animatorSet, arrayList);
        animatorSet.addListener(new C8349a(z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
        if (r0 == r6.getId()) goto L10;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3801e(androidx.coordinatorlayout.widget.CoordinatorLayout r5, android.view.View r6, android.view.View r7) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.mo3801e(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View):boolean");
    }

    /* renamed from: e0 */
    protected abstract C8353e mo3799e0(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: g */
    public void mo3805g(CoordinatorLayout.C0532e c0532e) {
        if (c0532e.f2769h == 0) {
            c0532e.f2769h = 80;
        }
    }
}
