package com.truecaller.p183ui.view;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.truecaller.C2752R;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: com.truecaller.ui.view.DotPagerIndicator */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/DotPagerIndicator.class */
public class DotPagerIndicator extends View implements ViewPager.AbstractC0396i {

    /* renamed from: a */
    public Paint f15904a;

    /* renamed from: b */
    public int f15905b;

    /* renamed from: c */
    public int f15906c;

    /* renamed from: d */
    public float f15907d;

    /* renamed from: e */
    public int f15908e;

    /* renamed from: f */
    public int f15909f;

    /* renamed from: g */
    public float f15910g;

    /* renamed from: h */
    public float f15911h;

    /* renamed from: i */
    public float f15912i;

    /* renamed from: j */
    public float f15913j;

    /* renamed from: k */
    public int f15914k;

    /* renamed from: l */
    public ArgbEvaluator f15915l = new ArgbEvaluator();

    /* JADX WARN: Finally extract failed */
    public DotPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15910g = 6.0f;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2752R.styleable.DotPagerIndicator, 0, 0);
        Paint paint = new Paint(1);
        this.f15904a = paint;
        paint.setStyle(Paint.Style.FILL);
        try {
            this.f15905b = obtainStyledAttributes.getInteger(4, 0);
            this.f15908e = obtainStyledAttributes.getColor(0, context.getResources().getColor(2131101323));
            this.f15909f = obtainStyledAttributes.getColor(3, 0);
            this.f15910g = obtainStyledAttributes.getDimensionPixelSize(1, 6);
            this.f15911h = obtainStyledAttributes.getDimension(2, C8605o.m28238b(context, 8.0f));
            obtainStyledAttributes.recycle();
            this.f15906c = 0;
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
        if (m34478c()) {
            this.f15907d = f;
            this.f15906c = ((this.f15905b - i) - this.f15914k) - 1;
        } else {
            this.f15907d = f;
            this.f15906c = i - this.f15914k;
        }
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
    }

    /* renamed from: c */
    public final boolean m34478c() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: g */
    public void mo7748g(int i) {
        if (m34478c()) {
            this.f15906c = ((this.f15905b - i) - this.f15914k) - 1;
        } else {
            this.f15906c = i - this.f15914k;
        }
        invalidate();
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return (int) (this.f15910g * 2.0f);
    }

    @Override // android.view.View
    public int getMinimumWidth() {
        float f = this.f15910g;
        int i = this.f15905b;
        return (int) (((i - 1) * this.f15911h) + (f * 2.0f * i));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.f15912i;
        float f2 = this.f15910g;
        float f3 = f + f2;
        float f4 = this.f15913j;
        for (int i = 0; i < this.f15905b; i++) {
            if (m34478c()) {
                int i2 = this.f15906c;
                if (i == i2) {
                    this.f15904a.setColor(((Integer) this.f15915l.evaluate(this.f15907d, Integer.valueOf(this.f15908e), Integer.valueOf(this.f15909f))).intValue());
                } else if (i == i2 - 1) {
                    this.f15904a.setColor(((Integer) this.f15915l.evaluate(this.f15907d, Integer.valueOf(this.f15909f), Integer.valueOf(this.f15908e))).intValue());
                } else {
                    this.f15904a.setColor(this.f15909f);
                }
            } else {
                int i3 = this.f15906c;
                if (i == i3) {
                    this.f15904a.setColor(((Integer) this.f15915l.evaluate(this.f15907d, Integer.valueOf(this.f15908e), Integer.valueOf(this.f15909f))).intValue());
                } else if (i == i3 + 1) {
                    this.f15904a.setColor(((Integer) this.f15915l.evaluate(this.f15907d, Integer.valueOf(this.f15909f), Integer.valueOf(this.f15908e))).intValue());
                } else {
                    this.f15904a.setColor(this.f15909f);
                }
            }
            canvas.drawCircle(f3, f4 + f2, this.f15910g, this.f15904a);
            float f5 = this.f15911h;
            float f6 = this.f15910g;
            f3 += f5 + f6 + f6;
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
        this.f15912i = getPaddingLeft();
        this.f15913j = getPaddingTop();
    }

    public void setActiveColor(int i) {
        this.f15908e = i;
        invalidate();
    }

    public void setFirstPage(int i) {
        this.f15914k = i;
    }

    public void setInactiveColor(int i) {
        this.f15909f = i;
        invalidate();
    }

    public void setNumberOfPages(int i) {
        this.f15905b = i;
        invalidate();
        requestLayout();
    }
}
