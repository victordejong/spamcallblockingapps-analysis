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

    /* renamed from: a  reason: collision with root package name */
    private ValueAnimator f16422a;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f16425d;

    /* renamed from: b  reason: collision with root package name */
    private int f16423b = 1;

    /* renamed from: c  reason: collision with root package name */
    private int f16424c = 0;
    private float e = -1.0f;
    private float f = BitmapDescriptorFactory.HUE_RED;
    private float g = 0.1f;
    private boolean h = false;
    private long i = 400;

    public CallAppAnimatedViewPagerIndicator(Context context) {
        super(context);
    }

    public CallAppAnimatedViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CallAppAnimatedViewPagerIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.f16423b = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public float getSeparationLineLength() {
        float f = this.e;
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
        ViewPager viewPager = this.f16425d;
        if (!(viewPager == null || (count = viewPager.getAdapter().getCount()) == 0)) {
            int currentItem = this.f16425d.getCurrentItem();
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
                        canvas.drawLine(f7 + radius, f6, (f7 + separationLineLength) - radius, f6, paint);
                    } else {
                        canvas.drawLine(f7 + radius, f6, (f7 + separationLineLength) - radius, f6, paint2);
                    }
                }
            }
            if (currentItem == this.f16424c) {
                canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, radius, paint);
            }
            ValueAnimator valueAnimator = this.f16422a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, this.f16423b, paint);
            } else if (this.f16423b == ((int) radius)) {
                canvas.drawCircle(f5 + (currentItem * separationLineLength), getPaddingTop() + radius, radius, paint);
                this.f16423b = 1;
                this.f16424c = currentItem;
                this.h = false;
            }
            float f8 = this.f;
            if (f8 == BitmapDescriptorFactory.HUE_RED && this.g != BitmapDescriptorFactory.HUE_RED) {
                ValueAnimator valueAnimator2 = this.f16422a;
                if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
                    ValueAnimator ofInt = ValueAnimator.ofInt(1, (int) radius);
                    this.f16422a = ofInt;
                    ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget._$$Lambda$CallAppAnimatedViewPagerIndicator$MtnuzpHMz0uwdQngSSygNOUKv78
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                            CallAppAnimatedViewPagerIndicator.this.a(valueAnimator3);
                        }
                    });
                    this.f16422a.setDuration(this.i);
                    this.f16422a.start();
                }
            } else if (f8 != BitmapDescriptorFactory.HUE_RED && !this.h) {
                float f9 = f4 + (currentItem * separationLineLength) + f;
                canvas.drawLine(f9, f6, f9 + (f8 * (separationLineLength - f)), f6, paint);
            }
            this.g = this.f;
        }
    }

    @Override // com.viewpagerindicator.CirclePageIndicator, androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        this.f = f;
        super.onPageScrolled(i, f, i2);
    }

    @Override // com.viewpagerindicator.CirclePageIndicator, androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        super.onPageSelected(i);
        this.h = true;
    }

    public void setDotAnimationDuration(long j) {
        this.i = j;
    }

    public void setSeparationLineLength(float f) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.e = f;
            return;
        }
        throw new IllegalArgumentException("separation must be > 0");
    }

    @Override // com.viewpagerindicator.CirclePageIndicator
    public void setViewPager(ViewPager viewPager) {
        super.setViewPager(viewPager);
        this.f16425d = viewPager;
    }

    @Override // com.viewpagerindicator.CirclePageIndicator
    public void setViewPager(ViewPager viewPager, int i) {
        super.setViewPager(viewPager, i);
        this.f16425d = viewPager;
    }
}
