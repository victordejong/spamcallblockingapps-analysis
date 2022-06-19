package com.truecaller.common.p156ui;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1863t.p1864a.p1865a.C26981b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002:\u0001FJ/\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0014¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001b\u0010\fJ\u000f\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\fR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010\"R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010E\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010\"¨\u0006G"}, d2 = {"Lcom/truecaller/common/ui/ShimmerLoadingView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Landroid/view/View;", "changedView", RemoteMessageConst.Notification.VISIBILITY, "onVisibilityChanged", "(Landroid/view/View;I)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "Landroid/animation/ValueAnimator;", "valueAnimator", "onAnimationUpdate", "(Landroid/animation/ValueAnimator;)V", "g1", "f1", "", "E", "J", "animationDuration", "C", "I", "colorMiddle", "Landroid/animation/AnimatorSet;", "Landroid/animation/AnimatorSet;", "highlightAnimatorSet", "", "B", "F", "highlightWidth", "D", "colorEnd", "Landroid/graphics/RectF;", "t", "Landroid/graphics/RectF;", "highlightRectangle", "x", "Landroid/graphics/Canvas;", "customCanvas", "Landroid/graphics/Bitmap;", "y", "Landroid/graphics/Bitmap;", "customBitmap", "Landroid/graphics/LinearGradient;", "z", "Landroid/graphics/LinearGradient;", "highlightLinearGradient", "Landroid/graphics/Matrix;", "v", "Landroid/graphics/Matrix;", "translationMatrix", "Landroid/graphics/Paint;", "u", "Landroid/graphics/Paint;", "highlightPaint", "A", "layoutRes", "AnimatableRectF", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.ShimmerLoadingView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/ShimmerLoadingView.class */
public final class ShimmerLoadingView extends ConstraintLayout implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: A */
    public int f11054A;

    /* renamed from: B */
    public float f11055B;

    /* renamed from: C */
    public int f11056C;

    /* renamed from: D */
    public int f11057D;

    /* renamed from: E */
    public long f11058E;

    /* renamed from: u */
    public final Paint f11060u;

    /* renamed from: x */
    public Canvas f11063x;

    /* renamed from: y */
    public Bitmap f11064y;

    /* renamed from: z */
    public LinearGradient f11065z;

    /* renamed from: t */
    public final RectF f11059t = new AnimatableRectF();

    /* renamed from: v */
    public final Matrix f11061v = new Matrix();

    /* renamed from: w */
    public AnimatorSet f11062w = new AnimatorSet();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0012\b\u0083\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R$\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\u0005\"\u0004\b\r\u0010\u0007R$\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0005\"\u0004\b\u0010\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF;", "Landroid/graphics/RectF;", "", "value", "getBottom", "()F", "setBottom", "(F)V", "bottom", "getTop", "setTop", "top", "getRight", "setRight", "right", "getLeft", "setLeft", "left", "<init>", "(Lcom/truecaller/common/ui/ShimmerLoadingView;)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.common.ui.ShimmerLoadingView$AnimatableRectF */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/ShimmerLoadingView$AnimatableRectF.class */
    public final class AnimatableRectF extends RectF {
        public AnimatableRectF() {
            ShimmerLoadingView.this = r4;
        }

        public final float getBottom() {
            return ((RectF) this).bottom;
        }

        public final float getLeft() {
            return ((RectF) this).left;
        }

        public final float getRight() {
            return ((RectF) this).right;
        }

        public final float getTop() {
            return ((RectF) this).top;
        }

        public final void setBottom(float f) {
            ((RectF) this).bottom = f;
        }

        public final void setLeft(float f) {
            ((RectF) this).left = f;
        }

        public final void setRight(float f) {
            ((RectF) this).right = f;
        }

        public final void setTop(float f) {
            ((RectF) this).top = f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShimmerLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint();
        this.f11060u = paint;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3700R.styleable.ShimmerLoadingView);
        l.d(obtainStyledAttributes, "context.obtainStyledAttr…eable.ShimmerLoadingView)");
        this.f11054A = obtainStyledAttributes.getResourceId(C3700R.styleable.ShimmerLoadingView_shimmerLayout, 0);
        this.f11055B = obtainStyledAttributes.getDimension(C3700R.styleable.ShimmerLoadingView_shimmerWidth, getResources().getDimension(C3700R.dimen.shimmer_loading_highlight_default_width));
        int i = C3700R.styleable.ShimmerLoadingView_shimmerColorMiddle;
        int i2 = C3700R.color.shimmer_loading_color_middle_light;
        Object obj = C26467a.f74235a;
        this.f11056C = obtainStyledAttributes.getColor(i, C26467a.C26471d.m1787a(context, i2));
        this.f11057D = obtainStyledAttributes.getColor(C3700R.styleable.ShimmerLoadingView_shimmerColorEnd, C26467a.C26471d.m1787a(context, C3700R.color.shimmer_loading_color_end_light));
        this.f11058E = obtainStyledAttributes.getInt(C3700R.styleable.ShimmerLoadingView_shimmerAnimationDuration, 2500);
        obtainStyledAttributes.recycle();
        if (this.f11054A != 0) {
            LayoutInflater.from(getContext()).inflate(this.f11054A, (ViewGroup) this, true);
        }
        if (isInEditMode()) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        float f = this.f11055B;
        int i3 = this.f11057D;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, f, 0.0f, new int[]{i3, this.f11056C, i3}, (float[]) null, Shader.TileMode.CLAMP);
        this.f11065z = linearGradient;
        paint.setShader(linearGradient);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        if (isInEditMode()) {
            super.dispatchDraw(canvas);
            return;
        }
        Canvas canvas2 = this.f11063x;
        if (canvas2 == null) {
            return;
        }
        Matrix matrix = this.f11061v;
        matrix.reset();
        matrix.setTranslate(this.f11059t.left, 0.0f);
        LinearGradient linearGradient = this.f11065z;
        if (linearGradient == null) {
            l.l("highlightLinearGradient");
            throw null;
        }
        linearGradient.setLocalMatrix(matrix);
        super.dispatchDraw(canvas2);
        canvas2.drawRect(this.f11059t, this.f11060u);
        Bitmap bitmap = this.f11064y;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        } else {
            l.l("customBitmap");
            throw null;
        }
    }

    /* renamed from: f1 */
    public final void m35704f1() {
        AnimatorSet animatorSet = this.f11062w;
        if (animatorSet != null) {
            animatorSet.end();
        }
    }

    /* renamed from: g1 */
    public final void m35703g1() {
        AnimatorSet animatorSet = this.f11062w;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.e(valueAnimator, "valueAnimator");
        postInvalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m35704f1();
        m35703g1();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35704f1();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35704f1();
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        l.d(createBitmap, "Bitmap.createBitmap(widt… Bitmap.Config.ARGB_8888)");
        this.f11064y = createBitmap;
        Bitmap bitmap = this.f11064y;
        if (bitmap == null) {
            l.l("customBitmap");
            throw null;
        }
        this.f11063x = new Canvas(bitmap);
        RectF rectF = this.f11059t;
        rectF.left = m43032T0() ? getWidth() : -this.f11055B;
        rectF.top = 0.0f;
        rectF.bottom = getHeight();
        rectF.right = m43032T0() ? getWidth() + this.f11055B : 0.0f;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(200L);
        animatorSet.setDuration(this.f11058E);
        animatorSet.setInterpolator(new C26981b());
        int width = getWidth();
        RectF rectF2 = this.f11059t;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(rectF2, "left", rectF2.left, m43032T0() ? -this.f11055B : width);
        ofFloat.setRepeatCount(-1);
        l.d(ofFloat, "ObjectAnimator.ofFloat(\n…imator.INFINITE\n        }");
        int width2 = getWidth();
        RectF rectF3 = this.f11059t;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(rectF3, "right", rectF3.right, m43032T0() ? 0.0f : width2 + this.f11055B);
        ofFloat2.addUpdateListener(this);
        ofFloat2.setRepeatCount(-1);
        l.d(ofFloat2, "ObjectAnimator.ofFloat(\n…imator.INFINITE\n        }");
        animatorSet.playTogether(ofFloat, ofFloat2);
        if (getVisibility() == 0) {
            animatorSet.start();
        }
        this.f11062w = animatorSet;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        l.e(view, "changedView");
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            m35703g1();
        } else {
            m35704f1();
        }
    }
}
