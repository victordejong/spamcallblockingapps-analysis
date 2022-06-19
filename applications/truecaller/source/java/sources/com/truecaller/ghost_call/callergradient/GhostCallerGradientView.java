package com.truecaller.ghost_call.callergradient;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.incallui.callui.callergradient.GradientColors;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1349x.p1353i0.AbstractC21346a;
import p193e.p194a.p1349x.p1353i0.AbstractC21347b;
import p193e.p194a.p1349x.p1353i0.AbstractC21357k;
import p193e.p194a.p1349x.p1353i0.C21350d;
import p193e.p194a.p1349x.p1353i0.C21351e;
import p193e.p194a.p1349x.p1353i0.C21352f;
import p193e.p194a.p1349x.p1353i0.C21353g;
import p193e.p194a.p1349x.p1353i0.C21354h;
import p193e.p194a.p1349x.p1353i0.ViewTreeObserver$OnPreDrawListenerC21355i;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0012\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001b\u0010\tJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\tR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001d\u0010'\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u00104¨\u00066"}, d2 = {"Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;", "Landroid/view/View;", "Le/a/x/i0/b;", "Lcom/truecaller/incallui/callui/callergradient/GradientColors;", RemoteMessageConst.Notification.COLOR, "Ls1/s;", "setGradientColor", "(Lcom/truecaller/incallui/callui/callergradient/GradientColors;)V", "onAttachedToWindow", "()V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "heightRatio", "", VastIconXmlManager.DURATION, "a", "(Lcom/truecaller/incallui/callui/callergradient/GradientColors;FJ)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "onDetachedFromWindow", "d", "value", "getHeightRatio", "()F", "setHeightRatio", "(F)V", "Landroid/graphics/Paint;", AbstractC2405c.f7629a, "Ls1/g;", "getGradientPaint", "()Landroid/graphics/Paint;", "gradientPaint", "Landroid/animation/AnimatorSet;", "e", "Landroid/animation/AnimatorSet;", "animatorSet", "Le/a/x/i0/a;", "f", "Le/a/x/i0/a;", "getPresenter", "()Le/a/x/i0/a;", "setPresenter", "(Le/a/x/i0/a;)V", "presenter", "Lcom/truecaller/incallui/callui/callergradient/GradientColors;", "colorGradient", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/callergradient/GhostCallerGradientView.class */
public final class GhostCallerGradientView extends AbstractC21357k implements AbstractC21347b {

    /* renamed from: c */
    public final g f12340c = C25225a.m3978P1(C21353g.f59771b);

    /* renamed from: d */
    public GradientColors f12341d;

    /* renamed from: e */
    public AnimatorSet f12342e;
    @Inject

    /* renamed from: f */
    public AbstractC21346a f12343f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GhostCallerGradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        setGradientColor(GradientColors.IDENTIFIED);
        if (isInEditMode()) {
            return;
        }
        C21354h c21354h = new C21354h(this);
        if (getHeight() > 0) {
            c21354h.invoke();
        } else {
            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC21355i(this, c21354h));
        }
    }

    private final Paint getGradientPaint() {
        return (Paint) this.f12340c.getValue();
    }

    private final float getHeightRatio() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        return ((ConstraintLayout.C0111a) layoutParams).f611O;
    }

    private final void setGradientColor(GradientColors gradientColors) {
        this.f12341d = gradientColors;
        m35307d();
    }

    public final void setHeightRatio(float f) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        c0111a.f611O = f;
        setLayoutParams(c0111a);
    }

    @Override // p193e.p194a.p1349x.p1353i0.AbstractC21347b
    /* renamed from: a */
    public void mo9873a(GradientColors gradientColors, float f, long j) {
        setGradientColor(gradientColors);
        if (getTranslationY() == (-((float) getHeight()))) {
            setHeightRatio(f);
        }
        AnimatorSet animatorSet = this.f12342e;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f12342e = null;
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(j);
        animatorSet2.setStartDelay(0L);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(getTranslationY(), 0.0f);
        ofFloat.addUpdateListener(new C21352f(this));
        l.d(ofFloat, "ValueAnimator.ofFloat(tr…          }\n            }");
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(getHeightRatio(), f);
        ofFloat2.addUpdateListener(new C21351e(this));
        l.d(ofFloat2, "ValueAnimator.ofFloat(he…          }\n            }");
        animatorSet2.playTogether(ofFloat, ofFloat2);
        this.f12342e = animatorSet2;
        animatorSet2.start();
    }

    /* renamed from: d */
    public final void m35307d() {
        GradientColors gradientColors;
        if (getWidth() <= 0 || getHeight() <= 0 || (gradientColors = this.f12341d) == null) {
            return;
        }
        float height = getHeight();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        getGradientPaint().setShader(new LinearGradient(getWidth() / 2.0f, 0.0f, getWidth() / 2.0f, height, C17891a1.C17902k.m15645S0(gradientColors, context), gradientColors.getPosition(), Shader.TileMode.CLAMP));
    }

    public final AbstractC21346a getPresenter() {
        AbstractC21346a abstractC21346a = this.f12343f;
        if (abstractC21346a != null) {
            return abstractC21346a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        AbstractC21346a abstractC21346a = this.f12343f;
        if (abstractC21346a != null) {
            ((C21350d) abstractC21346a).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (isInEditMode()) {
            return;
        }
        AnimatorSet animatorSet = this.f12342e;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f12342e = null;
        AbstractC21346a abstractC21346a = this.f12343f;
        if (abstractC21346a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC21346a).mo9806c();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            canvas.drawPaint(getGradientPaint());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35307d();
    }

    public final void setPresenter(AbstractC21346a abstractC21346a) {
        l.e(abstractC21346a, "<set-?>");
        this.f12343f = abstractC21346a;
    }
}
