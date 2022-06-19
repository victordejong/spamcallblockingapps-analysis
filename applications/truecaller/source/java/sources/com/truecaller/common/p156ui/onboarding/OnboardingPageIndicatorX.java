package com.truecaller.common.p156ui.onboarding;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.d0.j;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u001cR\u0016\u0010(\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001c¨\u0006)"}, d2 = {"Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;", "Landroid/view/View;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "", "count", "Ls1/s;", "setPageCount", "(I)V", "page", "setSelectedPage", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/animation/ValueAnimator;", "animation", "onAnimationUpdate", "(Landroid/animation/ValueAnimator;)V", "Landroid/animation/Animator;", "e", "Landroid/animation/Animator;", "animator", "", C22021b.f61237c, "F", "spacing", "Landroid/graphics/Paint;", "f", "Landroid/graphics/Paint;", "paint", AbstractC2405c.f7629a, "I", "pageCount", "a", "radius", "d", "selectedPage", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.onboarding.OnboardingPageIndicatorX */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/onboarding/OnboardingPageIndicatorX.class */
public final class OnboardingPageIndicatorX extends View implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final float f11273a;

    /* renamed from: b */
    public final float f11274b;

    /* renamed from: c */
    public int f11275c = 3;

    /* renamed from: d */
    public float f11276d;

    /* renamed from: e */
    public Animator f11277e;

    /* renamed from: f */
    public final Paint f11278f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingPageIndicatorX(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11273a = C19291g.m13494z(context, 4.0f);
        this.f11274b = C19291g.m13494z(context, 6.0f);
        Paint paint = new Paint();
        paint.setColor(C19291g.m13612L(context, C3700R.attr.tcx_brandBackgroundBlue));
        this.f11278f = paint;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.e(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this.f11276d = ((Float) animatedValue).floatValue();
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        float f = this.f11273a;
        canvas.translate(f, f);
        z it = j.j(0, this.f11275c).iterator();
        while (it.hasNext()) {
            float max = Math.max(1 - Math.abs(it.a() - this.f11276d), 0.0f);
            float f2 = 2;
            float f3 = this.f11273a * f2 * max;
            this.f11278f.setAlpha((int) (((max * 0.7f) + 0.3f) * 255));
            float f4 = this.f11273a;
            canvas.drawRoundRect(-f4, -f4, f4 + f3, f4, f4, f4, this.f11278f);
            canvas.translate((this.f11273a * f2) + f3 + this.f11274b, 0.0f);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        float f = this.f11273a;
        float f2 = 2;
        int i3 = this.f11275c;
        setMeasuredDimension((int) ((this.f11274b * (i3 - 1)) + (f * f2 * (i3 + 1))), (int) (f * f2));
    }

    public final void setPageCount(int i) {
        this.f11275c = i;
    }

    public final void setSelectedPage(int i) {
        Animator animator = this.f11277e;
        if (animator != null) {
            animator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f11276d, i);
        ofFloat.addUpdateListener(this);
        ofFloat.start();
        this.f11277e = ofFloat;
    }
}
