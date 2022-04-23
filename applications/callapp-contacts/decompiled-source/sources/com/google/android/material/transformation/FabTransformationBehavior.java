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
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.d;
import com.google.android.material.a.e;
import com.google.android.material.a.h;
import com.google.android.material.a.i;
import com.google.android.material.a.j;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior.class */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f31003a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f31004b;

    /* renamed from: c  reason: collision with root package name */
    private final RectF f31005c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f31006d;
    private float e;
    private float f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public h f31018a;

        /* renamed from: b  reason: collision with root package name */
        public j f31019b;
    }

    public FabTransformationBehavior() {
        this.f31003a = new Rect();
        this.f31004b = new RectF();
        this.f31005c = new RectF();
        this.f31006d = new int[2];
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31003a = new Rect();
        this.f31004b = new RectF();
        this.f31005c = new RectF();
        this.f31006d = new int[2];
    }

    private float a(View view, View view2, j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f31004b;
        RectF rectF2 = this.f31005c;
        b(view, rectF);
        a(view2, rectF2);
        int i = jVar.f30191a & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = BitmapDescriptorFactory.HUE_RED;
            return f + jVar.f30192b;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + jVar.f30192b;
    }

    private static float a(a aVar, i iVar, float f, float f2) {
        long j = iVar.f30187a;
        long j2 = iVar.f30188b;
        i a2 = aVar.f31018a.a("expansion");
        return com.google.android.material.a.a.a(f, (float) BitmapDescriptorFactory.HUE_RED, iVar.a().getInterpolation(((float) (((a2.f30187a + a2.f30188b) + 17) - j)) / ((float) j2)));
    }

    private static Pair<i, i> a(float f, float f2, boolean z, a aVar) {
        i iVar;
        i iVar2;
        int i;
        if (f == BitmapDescriptorFactory.HUE_RED || f2 == BitmapDescriptorFactory.HUE_RED) {
            iVar2 = aVar.f31018a.a("translationXLinear");
            iVar = aVar.f31018a.a("translationYLinear");
        } else if ((!z || f2 >= BitmapDescriptorFactory.HUE_RED) && (z || i <= 0)) {
            iVar2 = aVar.f31018a.a("translationXCurveDownwards");
            iVar = aVar.f31018a.a("translationYCurveDownwards");
        } else {
            iVar2 = aVar.f31018a.a("translationXCurveUpwards");
            iVar = aVar.f31018a.a("translationYCurveUpwards");
        }
        return new Pair<>(iVar2, iVar);
    }

    private static ViewGroup a(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    private static void a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0L);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    private void a(View view, RectF rectF) {
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight());
        int[] iArr = this.f31006d;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private float b(View view, View view2, j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f31004b;
        RectF rectF2 = this.f31005c;
        b(view, rectF);
        a(view2, rectF2);
        int i = jVar.f30191a & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = BitmapDescriptorFactory.HUE_RED;
            return f + jVar.f30193c;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + jVar.f30193c;
    }

    private void b(View view, RectF rectF) {
        a(view, rectF);
        rectF.offset(this.e, this.f);
    }

    protected abstract a a(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout.d dVar) {
        if (dVar.h == 0) {
            dVar.h = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        } else if (!(view2 instanceof FloatingActionButton)) {
            return false;
        } else {
            int i = ((FloatingActionButton) view2).f30516c.f30497c;
            return i == 0 || i == view.getId();
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    protected final AnimatorSet b(final View view, final View view2, final boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        ObjectAnimator objectAnimator3;
        ObjectAnimator objectAnimator4;
        Animator animator;
        ObjectAnimator objectAnimator5;
        ObjectAnimator objectAnimator6;
        a a2 = a(view2.getContext(), z);
        if (z) {
            this.e = view.getTranslationX();
            this.f = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            float n = v.n(view2) - v.n(view);
            if (z) {
                if (!z2) {
                    view2.setTranslationZ(-n);
                }
                objectAnimator6 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, BitmapDescriptorFactory.HUE_RED);
            } else {
                objectAnimator6 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -n);
            }
            a2.f31018a.a("elevation").a((Animator) objectAnimator6);
            arrayList.add(objectAnimator6);
        }
        RectF rectF = this.f31004b;
        float a3 = a(view, view2, a2.f31019b);
        float b2 = b(view, view2, a2.f31019b);
        Pair<i, i> a4 = a(a3, b2, z, a2);
        i iVar = (i) a4.first;
        i iVar2 = (i) a4.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-a3);
                view2.setTranslationY(-b2);
            }
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED);
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED);
            float f = -a3;
            float f2 = -b2;
            float a5 = a(a2, iVar, f, (float) BitmapDescriptorFactory.HUE_RED);
            float a6 = a(a2, iVar2, f2, (float) BitmapDescriptorFactory.HUE_RED);
            Rect rect = this.f31003a;
            view2.getWindowVisibleDisplayFrame(rect);
            RectF rectF2 = this.f31004b;
            rectF2.set(rect);
            RectF rectF3 = this.f31005c;
            a(view2, rectF3);
            rectF3.offset(a5, a6);
            rectF3.intersect(rectF2);
            rectF.set(rectF3);
        } else {
            objectAnimator2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -a3);
            objectAnimator = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -b2);
        }
        iVar.a((Animator) objectAnimator2);
        iVar2.a((Animator) objectAnimator);
        arrayList.add(objectAnimator2);
        arrayList.add(objectAnimator);
        float width = rectF.width();
        float height = rectF.height();
        float a7 = a(view, view2, a2.f31019b);
        float b3 = b(view, view2, a2.f31019b);
        Pair<i, i> a8 = a(a7, b3, z, a2);
        i iVar3 = (i) a8.first;
        i iVar4 = (i) a8.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            a7 = this.e;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, a7);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, z ? b3 : this.f);
        iVar3.a((Animator) ofFloat);
        iVar4.a((Animator) ofFloat2);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        boolean z3 = view2 instanceof c;
        if (z3 && (view instanceof ImageView)) {
            final c cVar = (c) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable != null) {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimator5 = ObjectAnimator.ofInt(drawable, e.f30179a, 0);
                } else {
                    objectAnimator5 = ObjectAnimator.ofInt(drawable, e.f30179a, 255);
                }
                objectAnimator5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        view2.invalidate();
                    }
                });
                a2.f31018a.a("iconFade").a((Animator) objectAnimator5);
                arrayList.add(objectAnimator5);
                arrayList2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        cVar.setCircularRevealOverlayDrawable(null);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator2) {
                        cVar.setCircularRevealOverlayDrawable(drawable);
                    }
                });
            }
        }
        if (z3) {
            final c cVar2 = (c) view2;
            j jVar = a2.f31019b;
            RectF rectF4 = this.f31004b;
            RectF rectF5 = this.f31005c;
            b(view, rectF4);
            a(view2, rectF5);
            rectF5.offset(-a(view, view2, jVar), BitmapDescriptorFactory.HUE_RED);
            float centerX = rectF4.centerX() - rectF5.left;
            j jVar2 = a2.f31019b;
            RectF rectF6 = this.f31004b;
            RectF rectF7 = this.f31005c;
            b(view, rectF6);
            a(view2, rectF7);
            rectF7.offset(BitmapDescriptorFactory.HUE_RED, -b(view, view2, jVar2));
            float centerY = rectF6.centerY() - rectF7.top;
            ((FloatingActionButton) view).a(this.f31003a);
            float width2 = this.f31003a.width() / 2.0f;
            i a9 = a2.f31018a.a("expansion");
            if (z) {
                if (!z2) {
                    cVar2.setRevealInfo(new c.d(centerX, centerY, width2));
                }
                if (z2) {
                    width2 = cVar2.c().f30401c;
                }
                animator = com.google.android.material.circularreveal.a.a(cVar2, centerX, centerY, com.google.android.material.g.a.a(centerX, centerY, width, height));
                animator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator2) {
                        c.d c2 = cVar2.c();
                        c2.f30401c = Float.MAX_VALUE;
                        cVar2.setRevealInfo(c2);
                    }
                });
                a(view2, a9.f30187a, (int) centerX, (int) centerY, width2, arrayList);
            } else {
                float f3 = cVar2.c().f30401c;
                animator = com.google.android.material.circularreveal.a.a(cVar2, centerX, centerY, width2);
                long j = a9.f30187a;
                int i = (int) centerX;
                int i2 = (int) centerY;
                a(view2, j, i, i2, f3, arrayList);
                long j2 = a9.f30187a;
                long j3 = a9.f30188b;
                long a10 = a2.f31018a.a();
                if (Build.VERSION.SDK_INT >= 21) {
                    long j4 = j2 + j3;
                    if (j4 < a10) {
                        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i, i2, width2, width2);
                        createCircularReveal.setStartDelay(j4);
                        createCircularReveal.setDuration(a10 - j4);
                        arrayList.add(createCircularReveal);
                    }
                }
            }
            a9.a(animator);
            arrayList.add(animator);
            arrayList2.add(new AnimatorListenerAdapter() { // from class: com.google.android.material.circularreveal.a.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator2) {
                    cVar2.b();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator2) {
                    cVar2.a();
                }
            });
        }
        if (z3) {
            c cVar3 = (c) view2;
            ColorStateList w = v.w(view);
            int colorForState = w != null ? w.getColorForState(view.getDrawableState(), w.getDefaultColor()) : 0;
            if (z) {
                if (!z2) {
                    cVar3.setCircularRevealScrimColor(colorForState);
                }
                objectAnimator4 = ObjectAnimator.ofInt(cVar3, c.C0487c.f30398a, 16777215 & colorForState);
            } else {
                objectAnimator4 = ObjectAnimator.ofInt(cVar3, c.C0487c.f30398a, colorForState);
            }
            objectAnimator4.setEvaluator(com.google.android.material.a.c.a());
            a2.f31018a.a("color").a((Animator) objectAnimator4);
            arrayList.add(objectAnimator4);
        }
        if ((view2 instanceof ViewGroup) && (!z3 || b.f30391a != 0)) {
            View findViewById = view2.findViewById(a.f.mtrl_child_content_container);
            ViewGroup a11 = findViewById != null ? a(findViewById) : ((view2 instanceof TransformationChildLayout) || (view2 instanceof TransformationChildCard)) ? a(((ViewGroup) view2).getChildAt(0)) : a(view2);
            if (a11 != null) {
                if (z) {
                    if (!z2) {
                        d.f30178a.set(a11, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
                    }
                    objectAnimator3 = ObjectAnimator.ofFloat(a11, d.f30178a, 1.0f);
                } else {
                    objectAnimator3 = ObjectAnimator.ofFloat(a11, d.f30178a, BitmapDescriptorFactory.HUE_RED);
                }
                a2.f31018a.a("contentFade").a((Animator) objectAnimator3);
                arrayList.add(objectAnimator3);
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.a.b.a(animatorSet, arrayList);
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
