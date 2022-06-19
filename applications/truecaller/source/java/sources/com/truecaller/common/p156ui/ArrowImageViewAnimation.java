package com.truecaller.common.p156ui;

import android.animation.Animator;
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
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import androidx.appcompat.widget.AppCompatImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001AJ/\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001e\u0010\u0011R\u001e\u0010#\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00106\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u00108R\u0016\u0010<\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006B"}, d2 = {"Lcom/truecaller/common/ui/ArrowImageViewAnimation;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "Landroid/animation/Animator$AnimatorListener;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Landroid/animation/ValueAnimator;", "valueAnimator", "onAnimationUpdate", "(Landroid/animation/ValueAnimator;)V", "Landroid/animation/Animator;", "animator", "onAnimationStart", "(Landroid/animation/Animator;)V", "onAnimationEnd", "onAnimationCancel", "onAnimationRepeat", "d", "Landroid/graphics/drawable/Drawable;", "kotlin.jvm.PlatformType", "g", "Landroid/graphics/drawable/Drawable;", "arrowDrawable", "Landroid/graphics/LinearGradient;", "k", "Landroid/graphics/LinearGradient;", "highlightLinearGradient", "Landroid/graphics/RectF;", AbstractC2405c.f7629a, "Landroid/graphics/RectF;", "highlightRectangle", "Landroid/graphics/Matrix;", "f", "Landroid/graphics/Matrix;", "translationMatrix", "Landroid/graphics/Bitmap;", "i", "Landroid/graphics/Bitmap;", "arrowBitmap", "j", "Landroid/graphics/Canvas;", "customCanvas", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "highlightPaint", "", "F", "highlightHeight", "Landroid/animation/AnimatorSet;", "e", "Landroid/animation/AnimatorSet;", "highlightAnimation", "AnimatableRectF", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.ArrowImageViewAnimation */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/ArrowImageViewAnimation.class */
public final class ArrowImageViewAnimation extends AppCompatImageView implements ValueAnimator.AnimatorUpdateListener, Animator.AnimatorListener {

    /* renamed from: d */
    public final Paint f10987d;

    /* renamed from: e */
    public final AnimatorSet f10988e;

    /* renamed from: g */
    public final Drawable f10990g;

    /* renamed from: h */
    public float f10991h;

    /* renamed from: i */
    public Bitmap f10992i;

    /* renamed from: j */
    public Canvas f10993j;

    /* renamed from: k */
    public LinearGradient f10994k;

    /* renamed from: c */
    public final RectF f10986c = new AnimatableRectF();

    /* renamed from: f */
    public final Matrix f10989f = new Matrix();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0012\b\u0083\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R$\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\u0005\"\u0004\b\r\u0010\u0007R$\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0005\"\u0004\b\u0010\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/truecaller/common/ui/ArrowImageViewAnimation$AnimatableRectF;", "Landroid/graphics/RectF;", "", "value", "getRight", "()F", "setRight", "(F)V", "right", "getLeft", "setLeft", "left", "getBottom", "setBottom", "bottom", "getTop", "setTop", "top", "<init>", "(Lcom/truecaller/common/ui/ArrowImageViewAnimation;)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.common.ui.ArrowImageViewAnimation$AnimatableRectF */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/ArrowImageViewAnimation$AnimatableRectF.class */
    public final class AnimatableRectF extends RectF {
        public AnimatableRectF() {
            ArrowImageViewAnimation.this = r4;
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
    public ArrowImageViewAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint();
        this.f10987d = paint;
        AnimatorSet animatorSet = new AnimatorSet();
        this.f10988e = animatorSet;
        Drawable drawable = getDrawable();
        this.f10990g = drawable;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3700R.styleable.ArrowImageViewAnimation);
        l.d(obtainStyledAttributes, "context.obtainStyledAttr….ArrowImageViewAnimation)");
        this.f10991h = obtainStyledAttributes.getDimension(C3700R.styleable.ArrowImageViewAnimation_highlightHeight, getResources().getDimension(C3700R.dimen.arrow_tcx_highlight_height));
        obtainStyledAttributes.recycle();
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        animatorSet.setStartDelay(100L);
        animatorSet.setDuration(1800L);
        animatorSet.addListener(this);
        int i = C3700R.color.tcx_arrow_normal;
        Object obj = C26467a.f74235a;
        this.f10994k = new LinearGradient(0.0f, 0.0f, 0.0f, this.f10991h, new int[]{C26467a.C26471d.m1787a(context, i), C26467a.C26471d.m1787a(context, C3700R.color.tcx_arrow_highlight), C26467a.C26471d.m1787a(context, i)}, (float[]) null, Shader.TileMode.CLAMP);
        l.d(drawable, "arrowDrawable");
        int intrinsicWidth = drawable.getIntrinsicWidth();
        l.d(drawable, "arrowDrawable");
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        l.d(createBitmap, "Bitmap.createBitmap(\n   …      ARGB_8888\n        )");
        this.f10992i = createBitmap;
        Bitmap bitmap = this.f10992i;
        if (bitmap != null) {
            this.f10993j = new Canvas(bitmap);
        } else {
            l.l("arrowBitmap");
            throw null;
        }
    }

    /* renamed from: d */
    public final void m35712d() {
        if (this.f10988e.isStarted()) {
            this.f10988e.end();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        l.e(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l.e(animator, "animator");
        this.f10988e.start();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        l.e(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        l.e(animator, "animator");
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.e(valueAnimator, "valueAnimator");
        postInvalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m35712d();
        this.f10988e.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35712d();
        this.f10988e.removeAllListeners();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        this.f10989f.setTranslate(0.0f, this.f10986c.top);
        LinearGradient linearGradient = this.f10994k;
        if (linearGradient == null) {
            l.l("highlightLinearGradient");
            throw null;
        }
        linearGradient.setLocalMatrix(this.f10989f);
        Canvas canvas2 = this.f10993j;
        if (canvas2 == null) {
            l.l("customCanvas");
            throw null;
        }
        canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
        Drawable drawable = this.f10990g;
        Canvas canvas3 = this.f10993j;
        if (canvas3 == null) {
            l.l("customCanvas");
            throw null;
        }
        drawable.draw(canvas3);
        Canvas canvas4 = this.f10993j;
        if (canvas4 == null) {
            l.l("customCanvas");
            throw null;
        }
        canvas4.drawRect(this.f10986c, this.f10987d);
        Bitmap bitmap = this.f10992i;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        } else {
            l.l("arrowBitmap");
            throw null;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i2;
        this.f10986c.set(0.0f, f, i, this.f10991h + f);
        Paint paint = this.f10987d;
        LinearGradient linearGradient = this.f10994k;
        if (linearGradient == null) {
            l.l("highlightLinearGradient");
            throw null;
        }
        paint.setShader(linearGradient);
        RectF rectF = this.f10986c;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(rectF, "top", rectF.top, -this.f10991h);
        RectF rectF2 = this.f10986c;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(rectF2, "bottom", rectF2.bottom, 0.0f);
        ofFloat2.addUpdateListener(this);
        m35712d();
        this.f10988e.playTogether(ofFloat, ofFloat2);
        this.f10988e.start();
    }
}
