package com.truecaller.common.p156ui;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p373a.C8312h;
import p193e.p194a.p372b0.p373a.C8313i;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0014\u001a\u00020\u00042\b\b\u0001\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u000fJ\u001f\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00172\u0006\u0010\u0011\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u000fR$\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c8\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b\u0014\u0010\u001e\"\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010#R\u0016\u0010&\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001eR\u0018\u0010)\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010(R\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010+¨\u0006-"}, d2 = {"Lcom/truecaller/common/ui/HeartbeatRippleView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "onDetachedFromWindow", "()V", "rippleColor", "heartbeatView", "", "playRippleAnimation", "e", "(ILandroid/view/View;Z)V", AbstractC2405c.f7629a, "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", C22021b.f61237c, "(Landroid/view/View;)Landroid/animation/ValueAnimator;", "d", "", "value", "F", "setRippleProgress", "(F)V", "rippleProgress", "Landroid/graphics/PointF;", "Landroid/graphics/PointF;", "rippleCenter", "a", "rippleRadius", "Landroid/animation/AnimatorSet;", "Landroid/animation/AnimatorSet;", "animatorSet", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "ripplePaint", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.HeartbeatRippleView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/HeartbeatRippleView.class */
public final class HeartbeatRippleView extends View {

    /* renamed from: f */
    public static final /* synthetic */ int f11004f = 0;

    /* renamed from: a */
    public float f11005a;

    /* renamed from: b */
    public final PointF f11006b = new PointF(0.0f, 0.0f);

    /* renamed from: c */
    public AnimatorSet f11007c;

    /* renamed from: d */
    public final Paint f11008d;

    /* renamed from: e */
    public float f11009e;

    /* renamed from: com.truecaller.common.ui.HeartbeatRippleView$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/HeartbeatRippleView$a.class */
    public static final class C3698a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ ValueAnimator f11010a;

        /* renamed from: b */
        public final /* synthetic */ View f11011b;

        public C3698a(ValueAnimator valueAnimator, View view) {
            this.f11010a = valueAnimator;
            this.f11011b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = this.f11010a.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            float floatValue = ((Float) animatedValue).floatValue();
            this.f11011b.setScaleX(floatValue);
            this.f11011b.setScaleY(floatValue);
        }
    }

    /* renamed from: com.truecaller.common.ui.HeartbeatRippleView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/HeartbeatRippleView$b.class */
    public static final class C3699b extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ AnimatorSet f11012b;

        /* renamed from: c */
        public final /* synthetic */ HeartbeatRippleView f11013c;

        /* renamed from: d */
        public final /* synthetic */ View f11014d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3699b(AnimatorSet animatorSet, HeartbeatRippleView heartbeatRippleView, boolean z, View view) {
            super(0);
            this.f11012b = animatorSet;
            this.f11013c = heartbeatRippleView;
            this.f11014d = view;
        }

        public Object invoke() {
            this.f11012b.setStartDelay(750L);
            AnimatorSet animatorSet = this.f11013c.f11007c;
            if (animatorSet != null) {
                animatorSet.start();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeartbeatRippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        this.f11008d = paint;
        if (isInEditMode()) {
            setRippleProgress(0.5f);
        }
    }

    public final void setRippleProgress(float f) {
        this.f11009e = f;
        m35707c();
    }

    /* renamed from: b */
    public final ValueAnimator m35708b(View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 1.1f, 1.0f);
        ofFloat.setDuration(600L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new C3698a(ofFloat, view));
        return ofFloat;
    }

    /* renamed from: c */
    public final void m35707c() {
        int paddingStart = getPaddingStart();
        float max = Math.max(getWidth() - (getPaddingEnd() + paddingStart), getHeight() - (getPaddingBottom() + getPaddingTop()));
        float f = max / 2.0f;
        float f2 = (max * 5.5f) / 2.0f;
        float f3 = this.f11009e;
        float f4 = (f2 - f) * f3;
        this.f11008d.setAlpha((int) ((1.0f - f3) * 76));
        this.f11008d.setStrokeWidth(f4);
        this.f11005a = (f4 / 2.0f) + f;
        this.f11006b.x = getWidth() / 2.0f;
        this.f11006b.y = getHeight() / 2.0f;
        invalidate();
    }

    /* renamed from: d */
    public final void m35706d() {
        AnimatorSet animatorSet = this.f11007c;
        if (animatorSet != null) {
            this.f11007c = null;
        } else {
            animatorSet = null;
        }
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        setRippleProgress(0.0f);
    }

    /* renamed from: e */
    public final void m35705e(int i, View view, boolean z) {
        l.e(view, "heartbeatView");
        m35706d();
        Paint paint = this.f11008d;
        Context context = getContext();
        Object obj = C26467a.f74235a;
        paint.setColor(C26467a.C26471d.m1787a(context, i));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new C8313i(new C3699b(animatorSet, this, z, view)));
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(850L);
            ofFloat.addUpdateListener(new C8312h(ofFloat, this));
            l.d(ofFloat, "ValueAnimator.ofFloat(0f…t\n            }\n        }");
            animatorSet.playTogether(ofFloat, m35708b(view));
        } else {
            animatorSet.play(m35708b(view));
        }
        animatorSet.start();
        this.f11007c = animatorSet;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        m35706d();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas == null || this.f11009e == 0.0f) {
            return;
        }
        PointF pointF = this.f11006b;
        canvas.drawCircle(pointF.x, pointF.y, this.f11005a, this.f11008d);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35707c();
    }
}
