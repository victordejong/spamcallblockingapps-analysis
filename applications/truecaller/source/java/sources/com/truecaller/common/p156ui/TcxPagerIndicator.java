package com.truecaller.common.p156ui;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018��2\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\u0007J\u0017\u0010\f\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ'\u0010\"\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b$\u0010\u0007J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010\u0007R\u0016\u0010)\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010.\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010-R\u0016\u00101\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010(R\u0016\u00103\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010-R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010?\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010(R\u0016\u0010A\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010(R\u0016\u0010C\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010-R\u0016\u0010E\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010(R\u0016\u0010F\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010(R\u0016\u0010H\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010-¨\u0006I"}, d2 = {"Lcom/truecaller/common/ui/TcxPagerIndicator;", "Landroid/view/View;", "Landroidx/viewpager/widget/ViewPager$i;", "", "firstPage", "Ls1/s;", "setFirstPage", "(I)V", "numberOfPages", "setNumberOfPages", RemoteMessageConst.Notification.COLOR, "setActiveColor", "setInactiveColor", "getMinimumHeight", "()I", "getMinimumWidth", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "position", "", "positionOffset", "positionOffsetPixels", "a", "(IFI)V", "g", "state", C22021b.f61237c, "k", "F", "mIndicatorWidth", "i", "mBaseX", "e", "I", "mActiveColor", "mNumberOfPages", "j", "mBaseY", AbstractC2405c.f7629a, "mCurrentPage", "Landroid/animation/ArgbEvaluator;", "o", "Landroid/animation/ArgbEvaluator;", "mColorEvaluator", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mPaint", "", "n", "Z", "mFillPrevious", "mSpacing", "d", "mCurrentOffset", "m", "mFirstPage", "l", "mIndicatorHeight", "mBorderRadius", "f", "mInactiveColor", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.TcxPagerIndicator */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/TcxPagerIndicator.class */
public final class TcxPagerIndicator extends View implements ViewPager.AbstractC0396i {

    /* renamed from: a */
    public Paint f11080a;

    /* renamed from: b */
    public int f11081b;

    /* renamed from: c */
    public int f11082c;

    /* renamed from: d */
    public float f11083d;

    /* renamed from: e */
    public int f11084e;

    /* renamed from: f */
    public int f11085f;

    /* renamed from: g */
    public float f11086g;

    /* renamed from: h */
    public float f11087h;

    /* renamed from: i */
    public float f11088i;

    /* renamed from: j */
    public float f11089j;

    /* renamed from: k */
    public float f11090k;

    /* renamed from: l */
    public float f11091l;

    /* renamed from: m */
    public int f11092m;

    /* renamed from: n */
    public boolean f11093n;

    /* renamed from: o */
    public final ArgbEvaluator f11094o = new ArgbEvaluator();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Finally extract failed */
    public TcxPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11086g = 6.0f;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C3700R.styleable.TcxPagerIndicator, 0, 0);
        l.d(obtainStyledAttributes, "context.theme.obtainStyl…           0, 0\n        )");
        Paint paint = new Paint(1);
        this.f11080a = paint;
        l.c(paint);
        paint.setStyle(Paint.Style.FILL);
        try {
            this.f11081b = obtainStyledAttributes.getInteger(C3700R.styleable.TcxPagerIndicator_pagerIndicatorNumPages, 0);
            this.f11084e = obtainStyledAttributes.getColor(C3700R.styleable.TcxPagerIndicator_pagerIndicatorActiveColor, 0);
            this.f11085f = obtainStyledAttributes.getColor(C3700R.styleable.TcxPagerIndicator_pagerIndicatorInactiveColor, 0);
            this.f11086g = obtainStyledAttributes.getDimensionPixelSize(C3700R.styleable.TcxPagerIndicator_pagerIndicatorBorderRadius, 6);
            this.f11087h = obtainStyledAttributes.getDimension(C3700R.styleable.TcxPagerIndicator_pagerIndicatorSpacing, C19291g.m13494z(context, 8.0f));
            this.f11090k = obtainStyledAttributes.getDimension(C3700R.styleable.TcxPagerIndicator_pagerIndicatorWidth, C19291g.m13494z(context, 16.0f));
            this.f11091l = obtainStyledAttributes.getDimension(C3700R.styleable.TcxPagerIndicator_pagerIndicatorHeight, C19291g.m13494z(context, 4.0f));
            this.f11093n = obtainStyledAttributes.getBoolean(C3700R.styleable.TcxPagerIndicator_pagerIndicatorFillPrevious, false);
            obtainStyledAttributes.recycle();
            this.f11082c = 0;
            if (!isInEditMode()) {
                return;
            }
            setNumberOfPages(3);
            setFirstPage(0);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: a */
    public void mo7749a(int i, float f, int i2) {
        this.f11083d = f;
        this.f11082c = i - this.f11092m;
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: g */
    public void mo7748g(int i) {
        this.f11082c = i - this.f11092m;
        invalidate();
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return (int) this.f11091l;
    }

    @Override // android.view.View
    public int getMinimumWidth() {
        float f = this.f11090k;
        int i = this.f11081b;
        return (int) (((i - 1) * this.f11087h) + (f * i));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        super.onDraw(canvas);
        float f = this.f11088i + this.f11086g;
        int i = this.f11081b;
        int i2 = 0;
        while (i2 < i) {
            int i3 = this.f11082c;
            boolean z = i2 == i3 || (i2 < i3 && this.f11093n);
            if (z) {
                Paint paint = this.f11080a;
                l.c(paint);
                Object evaluate = this.f11094o.evaluate(this.f11083d, Integer.valueOf(this.f11084e), Integer.valueOf(this.f11085f));
                Objects.requireNonNull(evaluate, "null cannot be cast to non-null type kotlin.Int");
                paint.setColor(((Integer) evaluate).intValue());
            } else if (!z) {
                Paint paint2 = this.f11080a;
                l.c(paint2);
                paint2.setColor(this.f11085f);
            }
            float f2 = this.f11089j;
            float f3 = this.f11090k;
            float f4 = this.f11091l;
            float f5 = this.f11086g;
            Paint paint3 = this.f11080a;
            l.c(paint3);
            canvas.drawRoundRect(f, f2, f + f3, f2 + f4, f5, f5, paint3);
            f += this.f11087h + this.f11090k;
            i2++;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft();
        int resolveSizeAndState = View.resolveSizeAndState(getMinimumWidth() + getPaddingRight() + paddingLeft, i, 1);
        int paddingTop = getPaddingTop();
        setMeasuredDimension(resolveSizeAndState, View.resolveSizeAndState(getMinimumHeight() + getPaddingBottom() + paddingTop, i2, 1));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f11088i = getPaddingLeft();
        this.f11089j = getPaddingTop();
    }

    public final void setActiveColor(int i) {
        this.f11084e = i;
        invalidate();
    }

    public final void setFirstPage(int i) {
        this.f11092m = i;
    }

    public final void setInactiveColor(int i) {
        this.f11085f = i;
        invalidate();
    }

    public final void setNumberOfPages(int i) {
        this.f11081b = i;
        invalidate();
        requestLayout();
    }
}
