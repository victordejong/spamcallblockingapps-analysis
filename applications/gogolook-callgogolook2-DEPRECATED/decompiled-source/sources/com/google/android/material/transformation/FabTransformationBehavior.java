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
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.google.android.material.R$id;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p295a.C9168b;
import p081h.p203i.p204a.p294f.p295a.C9169c;
import p081h.p203i.p204a.p294f.p295a.C9170d;
import p081h.p203i.p204a.p294f.p295a.C9171e;
import p081h.p203i.p204a.p294f.p295a.C9174h;
import p081h.p203i.p204a.p294f.p295a.C9175i;
import p081h.p203i.p204a.p294f.p295a.C9176j;
import p081h.p203i.p204a.p294f.p304j.AbstractC9197c;
import p081h.p203i.p204a.p294f.p304j.C9193a;
import p081h.p203i.p204a.p294f.p304j.C9195b;
import p081h.p203i.p204a.p294f.p309o.C9247a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    public final Rect f7687c;

    /* renamed from: d */
    public final RectF f7688d;

    /* renamed from: e */
    public final RectF f7689e;

    /* renamed from: f */
    public final int[] f7690f;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public class C3657a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f7691a;

        /* renamed from: b */
        public final /* synthetic */ View f7692b;

        /* renamed from: c */
        public final /* synthetic */ View f7693c;

        public C3657a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.f7691a = z;
            this.f7692b = view;
            this.f7693c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f7691a) {
                this.f7692b.setVisibility(4);
                this.f7693c.setAlpha(1.0f);
                this.f7693c.setVisibility(0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f7691a) {
                this.f7692b.setVisibility(0);
                this.f7693c.setAlpha(0.0f);
                this.f7693c.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$b.class */
    public class C3658b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ View f7694a;

        public C3658b(FabTransformationBehavior fabTransformationBehavior, View view) {
            this.f7694a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f7694a.invalidate();
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$c.class */
    public class C3659c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9197c f7695a;

        /* renamed from: b */
        public final /* synthetic */ Drawable f7696b;

        public C3659c(FabTransformationBehavior fabTransformationBehavior, AbstractC9197c cVar, Drawable drawable) {
            this.f7695a = cVar;
            this.f7696b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7695a.mo15790a((Drawable) null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f7695a.mo15790a(this.f7696b);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$d.class */
    public class C3660d extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9197c f7697a;

        public C3660d(FabTransformationBehavior fabTransformationBehavior, AbstractC9197c cVar) {
            this.f7697a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractC9197c.C9202e a = this.f7697a.mo15792a();
            a.f21022c = Float.MAX_VALUE;
            this.f7697a.mo15789a(a);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$e.class */
    public static class C3661e {

        /* renamed from: a */
        public C9174h f7698a;

        /* renamed from: b */
        public C9176j f7699b;
    }

    public FabTransformationBehavior() {
        this.f7687c = new Rect();
        this.f7688d = new RectF();
        this.f7689e = new RectF();
        this.f7690f = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7687c = new Rect();
        this.f7688d = new RectF();
        this.f7689e = new RectF();
        this.f7690f = new int[2];
    }

    /* renamed from: a */
    public final float m31160a(View view, View view2, C9176j jVar) {
        RectF rectF = this.f7688d;
        RectF rectF2 = this.f7689e;
        m31161a(view, rectF);
        m31161a(view2, rectF2);
        rectF2.offset(-m31150c(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: a */
    public final float m31155a(C3661e eVar, C9175i iVar, float f, float f2) {
        long a = iVar.m15954a();
        long b = iVar.m15951b();
        C9175i a2 = eVar.f7698a.m15958a("expansion");
        return C9167a.m15974a(f, f2, iVar.m15949c().getInterpolation(((float) (((a2.m15954a() + a2.m15951b()) + 17) - a)) / ((float) b)));
    }

    @Nullable
    /* renamed from: a */
    public final ViewGroup m31164a(View view) {
        View findViewById = view.findViewById(R$id.mtrl_child_content_container);
        return findViewById != null ? m31151c(findViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? m31151c(((ViewGroup) view).getChildAt(0)) : m31151c(view);
    }

    /* renamed from: a */
    public abstract C3661e mo31144a(Context context, boolean z);

    /* renamed from: a */
    public final void m31163a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    /* renamed from: a */
    public final void m31162a(View view, long j, long j2, long j3, int i, int i2, float f, List<Animator> list) {
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

    /* renamed from: a */
    public final void m31161a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f7690f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    /* renamed from: a */
    public final void m31159a(View view, View view2, boolean z, boolean z2, C3661e eVar, float f, float f2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof AbstractC9197c) {
            AbstractC9197c cVar = (AbstractC9197c) view2;
            float a = m31160a(view, view2, eVar.f7699b);
            float b = m31153b(view, view2, eVar.f7699b);
            ((FloatingActionButton) view).m31374a(this.f7687c);
            float width = this.f7687c.width() / 2.0f;
            C9175i a2 = eVar.f7698a.m15958a("expansion");
            if (z) {
                if (!z2) {
                    cVar.mo15789a(new AbstractC9197c.C9202e(a, b, width));
                }
                if (z2) {
                    width = cVar.mo15792a().f21022c;
                }
                animator = C9193a.m15810a(cVar, a, b, C9247a.m15631a(a, b, 0.0f, 0.0f, f, f2));
                animator.addListener(new C3660d(this, cVar));
                m31163a(view2, a2.m15954a(), (int) a, (int) b, width, list);
            } else {
                float f3 = cVar.mo15792a().f21022c;
                animator = C9193a.m15810a(cVar, a, b, width);
                long a3 = a2.m15954a();
                int i = (int) a;
                int i2 = (int) b;
                m31163a(view2, a3, i, i2, f3, list);
                m31162a(view2, a2.m15954a(), a2.m15951b(), eVar.f7698a.m15962a(), i, i2, width, list);
            }
            a2.m15953a(animator);
            list.add(animator);
            list2.add(C9193a.m15811a(cVar));
        }
    }

    /* renamed from: a */
    public final void m31158a(View view, View view2, boolean z, boolean z2, C3661e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup a;
        ObjectAnimator objectAnimator;
        if (view2 instanceof ViewGroup) {
            if ((!(view2 instanceof AbstractC9197c) || C9195b.f21006j != 0) && (a = m31164a(view2)) != null) {
                if (z) {
                    if (!z2) {
                        C9170d.f20885a.set(a, Float.valueOf(0.0f));
                    }
                    objectAnimator = ObjectAnimator.ofFloat(a, C9170d.f20885a, 1.0f);
                } else {
                    objectAnimator = ObjectAnimator.ofFloat(a, C9170d.f20885a, 0.0f);
                }
                eVar.f7698a.m15958a("contentFade").m15953a((Animator) objectAnimator);
                list.add(objectAnimator);
            }
        }
    }

    /* renamed from: a */
    public final void m31157a(View view, View view2, boolean z, boolean z2, C3661e eVar, List<Animator> list, List<Animator.AnimatorListener> list2, RectF rectF) {
        C9175i iVar;
        C9175i iVar2;
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        int i;
        float c = m31150c(view, view2, eVar.f7699b);
        float d = m31148d(view, view2, eVar.f7699b);
        if (c == 0.0f || d == 0.0f) {
            iVar2 = eVar.f7698a.m15958a("translationXLinear");
            iVar = eVar.f7698a.m15958a("translationYLinear");
        } else if ((!z || d >= 0.0f) && (z || i <= 0)) {
            iVar2 = eVar.f7698a.m15958a("translationXCurveDownwards");
            iVar = eVar.f7698a.m15958a("translationYCurveDownwards");
        } else {
            iVar2 = eVar.f7698a.m15958a("translationXCurveUpwards");
            iVar = eVar.f7698a.m15958a("translationYCurveUpwards");
        }
        if (z) {
            if (!z2) {
                view2.setTranslationX(-c);
                view2.setTranslationY(-d);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            m31156a(view2, eVar, iVar2, iVar, -c, -d, 0.0f, 0.0f, rectF);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -c);
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -d);
        }
        iVar2.m15953a((Animator) objectAnimator);
        iVar.m15953a((Animator) objectAnimator2);
        list.add(objectAnimator);
        list.add(objectAnimator2);
    }

    /* renamed from: a */
    public final void m31156a(View view, C3661e eVar, C9175i iVar, C9175i iVar2, float f, float f2, float f3, float f4, RectF rectF) {
        float a = m31155a(eVar, iVar, f, f3);
        float a2 = m31155a(eVar, iVar2, f2, f4);
        Rect rect = this.f7687c;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f7688d;
        rectF2.set(rect);
        RectF rectF3 = this.f7689e;
        m31161a(view, rectF3);
        rectF3.offset(a, a2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: b */
    public final float m31153b(View view, View view2, C9176j jVar) {
        RectF rectF = this.f7688d;
        RectF rectF2 = this.f7689e;
        m31161a(view, rectF);
        m31161a(view2, rectF2);
        rectF2.offset(0.0f, -m31148d(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: b */
    public final int m31154b(View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: b */
    public AnimatorSet mo31145b(View view, View view2, boolean z, boolean z2) {
        C3661e a = mo31144a(view2.getContext(), z);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m31149c(view, view2, z, z2, a, arrayList, arrayList2);
        }
        RectF rectF = this.f7688d;
        m31157a(view, view2, z, z2, a, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        m31147d(view, view2, z, z2, a, arrayList, arrayList2);
        m31159a(view, view2, z, z2, a, width, height, arrayList, arrayList2);
        m31152b(view, view2, z, z2, a, arrayList, arrayList2);
        m31158a(view, view2, z, z2, a, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        C9168b.m15972a(animatorSet, arrayList);
        animatorSet.addListener(new C3657a(this, z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    /* renamed from: b */
    public final void m31152b(View view, View view2, boolean z, boolean z2, C3661e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if (view2 instanceof AbstractC9197c) {
            AbstractC9197c cVar = (AbstractC9197c) view2;
            int b = m31154b(view);
            if (z) {
                if (!z2) {
                    cVar.mo15791a(b);
                }
                objectAnimator = ObjectAnimator.ofInt(cVar, AbstractC9197c.C9201d.f21019a, 16777215 & b);
            } else {
                objectAnimator = ObjectAnimator.ofInt(cVar, AbstractC9197c.C9201d.f21019a, b);
            }
            objectAnimator.setEvaluator(C9169c.m15971a());
            eVar.f7698a.m15958a(TtmlNode.ATTR_TTS_COLOR).m15953a((Animator) objectAnimator);
            list.add(objectAnimator);
        }
    }

    /* renamed from: c */
    public final float m31150c(View view, View view2, C9176j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f7688d;
        RectF rectF2 = this.f7689e;
        m31161a(view, rectF);
        m31161a(view2, rectF2);
        int i = jVar.f20898a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + jVar.f20899b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + jVar.f20899b;
    }

    @Nullable
    /* renamed from: c */
    public final ViewGroup m31151c(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @TargetApi(21)
    /* renamed from: c */
    public final void m31149c(View view, View view2, boolean z, boolean z2, C3661e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -elevation);
        }
        eVar.f7698a.m15958a("elevation").m15953a((Animator) objectAnimator);
        list.add(objectAnimator);
    }

    /* renamed from: d */
    public final float m31148d(View view, View view2, C9176j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f7688d;
        RectF rectF2 = this.f7689e;
        m31161a(view, rectF);
        m31161a(view2, rectF2);
        int i = jVar.f20898a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + jVar.f20900c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + jVar.f20900c;
    }

    /* renamed from: d */
    public final void m31147d(View view, View view2, boolean z, boolean z2, C3661e eVar, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        if ((view2 instanceof AbstractC9197c) && (view instanceof ImageView)) {
            AbstractC9197c cVar = (AbstractC9197c) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimator = ObjectAnimator.ofInt(drawable, C9171e.f20886b, 0);
                } else {
                    objectAnimator = ObjectAnimator.ofInt(drawable, C9171e.f20886b, 255);
                }
                objectAnimator.addUpdateListener(new C3658b(this, view2));
                eVar.f7698a.m15958a("iconFade").m15953a((Animator) objectAnimator);
                list.add(objectAnimator);
                list2.add(new C3659c(this, cVar, drawable));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0033, code lost:
        if (r0 == r6.getId()) goto L_0x0036;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean layoutDependsOn(androidx.coordinatorlayout.widget.CoordinatorLayout r5, android.view.View r6, android.view.View r7) {
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
            int r0 = r0.m31361d()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.layoutDependsOn(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View):boolean");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }
}
