package com.callapp.contacts.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.viewpagerindicator.CirclePageIndicator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator.class */
public class CallAppAnimatedViewPagerIndicator extends CirclePageIndicator {

    /* renamed from: a */
    private ValueAnimator f28597a;

    /* renamed from: d */
    private ViewPager f28600d;

    /* renamed from: b */
    private int f28598b = 1;

    /* renamed from: c */
    private int f28599c = 0;

    /* renamed from: e */
    private float f28601e = -1.0f;

    /* renamed from: f */
    private float f28602f = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: g */
    private float f28603g = 0.1f;

    /* renamed from: h */
    private boolean f28604h = false;

    /* renamed from: i */
    private long f28605i = 400;

    public CallAppAnimatedViewPagerIndicator(Context context) {
        super(context);
    }

    public CallAppAnimatedViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallAppAnimatedViewPagerIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public /* synthetic */ void m26821a(ValueAnimator valueAnimator) {
        this.f28598b = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public float getSeparationLineLength() {
        float f = this.f28601e;
        float f2 = f;
        if (f == -1.0f) {
            f2 = getRadius();
        }
        return f2;
    }

    @Override // com.viewpagerindicator.CirclePageIndicator, android.view.View
    public void onDraw(Canvas canvas) {
        int count;
        int i;
        int i2;
        int i3;
        int i4;
        ViewPager viewPager = this.f28600d;
        if (viewPager == null || (count = viewPager.getAdapter().getCount()) == 0) {
            return;
        }
        int currentItem = this.f28600d.getCurrentItem();
        if (currentItem >= count) {
            setCurrentItem(count - 1);
            return;
        }
        int orientation = getOrientation();
        float radius = getRadius();
        if (orientation == 0) {
            i4 = getWidth();
            i3 = getPaddingLeft();
            i2 = getPaddingRight();
            i = getPaddingTop();
        } else {
            i4 = getHeight();
            i3 = getPaddingTop();
            i2 = getPaddingBottom();
            i = getPaddingLeft();
        }
        float f = radius * 2.0f;
        float separationLineLength = getSeparationLineLength() + f;
        float f2 = i + radius;
        float f3 = i3;
        float f4 = f3;
        if (isCentered()) {
            f4 = f3 + ((((i4 - i3) - i2) - (((count - 1) * separationLineLength) + f)) / 2.0f);
        }
        float f5 = f4 + radius;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(getFillColor());
        paint.setStrokeWidth(getStrokeWidth());
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(getStrokeColor());
        paint2.setStrokeWidth(getStrokeWidth());
        float f6 = f2;
        for (int i5 = 0; i5 < count; i5++) {
            float f7 = f5 + (i5 * separationLineLength);
            if (orientation == 0) {
                f6 = f2;
            } else {
                f6 = f7;
                f7 = f2;
            }
            if (i5 < currentItem) {
                canvas.drawCircle(f7, f6, radius, paint);
            } else {
                canvas.drawCircle(f7, f6, radius - getStrokeWidth(), paint2);
            }
            if (i5 != count - 1) {
                if (i5 < currentItem) {
                    float f8 = f6;
                    canvas.drawLine(f7 + radius, f8, (f7 + separationLineLength) - radius, f8, paint);
                } else {
                    float f9 = f6;
                    canvas.drawLine(f7 + radius, f9, (f7 + separationLineLength) - radius, f9, paint2);
                }
            }
        }
        if (currentItem == this.f28599c) {
            canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, radius, paint);
        }
        ValueAnimator valueAnimator = this.f28597a;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, this.f28598b, paint);
        } else if (this.f28598b == ((int) radius)) {
            canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, radius, paint);
            this.f28598b = 1;
            this.f28599c = currentItem;
            this.f28604h = false;
        }
        float f10 = this.f28602f;
        if (f10 == BitmapDescriptorFactory.HUE_RED && this.f28603g != BitmapDescriptorFactory.HUE_RED) {
            ValueAnimator valueAnimator2 = this.f28597a;
            if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
                ValueAnimator ofInt = ValueAnimator.ofInt(1, (int) radius);
                this.f28597a = ofInt;
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$CallAppAnimatedViewPagerIndicator$MtnuzpHMz0uwdQngSSygNOUKv78
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        CallAppAnimatedViewPagerIndicator.this.m26821a(valueAnimator3);
                    }
                });
                this.f28597a.setDuration(this.f28605i);
                this.f28597a.start();
            }
        } else if (f10 != BitmapDescriptorFactory.HUE_RED && !this.f28604h) {
            float f11 = f4 + (currentItem * separationLineLength) + f;
            canvas.drawLine(f11, f6, f11 + (f10 * (separationLineLength - f)), f6, paint);
        }
        this.f28603g = this.f28602f;
    }

    @Override // com.viewpagerindicator.CirclePageIndicator, androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        this.f28602f = f;
        super.onPageScrolled(i, f, i2);
    }

    @Override // com.viewpagerindicator.CirclePageIndicator, androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        super.onPageSelected(i);
        this.f28604h = true;
    }

    public void setDotAnimationDuration(long j) {
        this.f28605i = j;
    }

    public void setSeparationLineLength(float f) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.f28601e = f;
            return;
        }
        throw new IllegalArgumentException("separation must be > 0");
    }

    @Override // com.viewpagerindicator.CirclePageIndicator
    public void setViewPager(ViewPager viewPager) {
        super.setViewPager(viewPager);
        this.f28600d = viewPager;
    }

    @Override // com.viewpagerindicator.CirclePageIndicator
    public void setViewPager(ViewPager viewPager, int i) {
        super.setViewPager(viewPager, i);
        this.f28600d = viewPager;
    }
}
