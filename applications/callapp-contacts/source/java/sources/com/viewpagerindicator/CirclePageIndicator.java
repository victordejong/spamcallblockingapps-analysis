package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.C0913i;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.viewpagerindicator.C17579d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator.class */
public class CirclePageIndicator extends View implements AbstractC17578c {

    /* renamed from: a */
    private float f62211a;

    /* renamed from: b */
    private final Paint f62212b;

    /* renamed from: c */
    private final Paint f62213c;

    /* renamed from: d */
    private final Paint f62214d;

    /* renamed from: e */
    private ViewPager f62215e;

    /* renamed from: f */
    private ViewPager.AbstractC2936e f62216f;

    /* renamed from: g */
    private int f62217g;

    /* renamed from: h */
    private int f62218h;

    /* renamed from: i */
    private float f62219i;

    /* renamed from: j */
    private int f62220j;

    /* renamed from: k */
    private int f62221k;

    /* renamed from: l */
    private boolean f62222l;

    /* renamed from: m */
    private boolean f62223m;

    /* renamed from: n */
    private int f62224n;

    /* renamed from: o */
    private float f62225o;

    /* renamed from: p */
    private int f62226p;

    /* renamed from: q */
    private boolean f62227q;

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.viewpagerindicator.CirclePageIndicator.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int currentPage;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPage = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPage);
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17579d.C17580a.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f62212b = paint;
        Paint paint2 = new Paint(1);
        this.f62213c = paint2;
        Paint paint3 = new Paint(1);
        this.f62214d = paint3;
        this.f62225o = -1.0f;
        this.f62226p = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(C17579d.C17582c.default_circle_indicator_page_color);
        int color2 = resources.getColor(C17579d.C17582c.default_circle_indicator_fill_color);
        int integer = resources.getInteger(C17579d.C17584e.default_circle_indicator_orientation);
        int color3 = resources.getColor(C17579d.C17582c.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(C17579d.C17583d.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(C17579d.C17583d.default_circle_indicator_radius);
        boolean z = resources.getBoolean(C17579d.C17581b.default_circle_indicator_centered);
        boolean z2 = resources.getBoolean(C17579d.C17581b.default_circle_indicator_snap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17579d.C17585f.CirclePageIndicator, i, 0);
        this.f62222l = obtainStyledAttributes.getBoolean(C17579d.C17585f.CirclePageIndicator_centered, z);
        this.f62221k = obtainStyledAttributes.getInt(C17579d.C17585f.CirclePageIndicator_android_orientation, integer);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(obtainStyledAttributes.getColor(C17579d.C17585f.CirclePageIndicator_pageColor, color));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(obtainStyledAttributes.getColor(C17579d.C17585f.CirclePageIndicator_strokeColor, color3));
        paint2.setStrokeWidth(obtainStyledAttributes.getDimension(C17579d.C17585f.CirclePageIndicator_strokeWidth, dimension));
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(obtainStyledAttributes.getColor(C17579d.C17585f.CirclePageIndicator_fillColor, color2));
        this.f62211a = obtainStyledAttributes.getDimension(C17579d.C17585f.CirclePageIndicator_radius, dimension2);
        this.f62223m = obtainStyledAttributes.getBoolean(C17579d.C17585f.CirclePageIndicator_snap, z2);
        Drawable drawable = obtainStyledAttributes.getDrawable(C17579d.C17585f.CirclePageIndicator_android_background);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f62224n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    /* renamed from: a */
    private int m4924a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int i2 = size;
        if (mode != 1073741824) {
            ViewPager viewPager = this.f62215e;
            if (viewPager == null) {
                i2 = size;
            } else {
                int count = viewPager.getAdapter().getCount();
                float paddingLeft = getPaddingLeft() + getPaddingRight();
                float f = count * 2;
                float f2 = this.f62211a;
                i2 = (int) (paddingLeft + (f * f2) + ((count - 1) * f2) + 1.0f);
                if (mode == Integer.MIN_VALUE) {
                    i2 = Math.min(i2, size);
                }
            }
        }
        return i2;
    }

    /* renamed from: b */
    private int m4923b(int i) {
        int i2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i2 = size;
        } else {
            i2 = (int) ((this.f62211a * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
            if (mode == Integer.MIN_VALUE) {
                i2 = Math.min(i2, size);
            }
        }
        return i2;
    }

    public int getFillColor() {
        return this.f62214d.getColor();
    }

    public int getOrientation() {
        return this.f62221k;
    }

    public float getRadius() {
        return this.f62211a;
    }

    public int getStrokeColor() {
        return this.f62213c.getColor();
    }

    public float getStrokeWidth() {
        return this.f62213c.getStrokeWidth();
    }

    public boolean isCentered() {
        return this.f62222l;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        ViewPager viewPager = this.f62215e;
        if (viewPager == null || (count = viewPager.getAdapter().getCount()) == 0) {
            return;
        }
        if (this.f62217g >= count) {
            setCurrentItem(count - 1);
            return;
        }
        if (this.f62221k == 0) {
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
        float f4 = this.f62211a;
        float f5 = 3.0f * f4;
        float f6 = i + f4;
        float f7 = i3 + f4;
        float f8 = f7;
        if (this.f62222l) {
            f8 = f7 + ((((i4 - i3) - i2) / 2.0f) - ((count * f5) / 2.0f));
        }
        float f9 = f4;
        if (this.f62213c.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED) {
            f9 = f4 - (this.f62213c.getStrokeWidth() / 2.0f);
        }
        for (int i5 = 0; i5 < count; i5++) {
            float f10 = (i5 * f5) + f8;
            if (this.f62221k == 0) {
                f3 = f6;
            } else {
                f3 = f10;
                f10 = f6;
            }
            if (this.f62212b.getAlpha() > 0) {
                canvas.drawCircle(f10, f3, f9, this.f62212b);
            }
            float f11 = this.f62211a;
            if (f9 != f11) {
                canvas.drawCircle(f10, f3, f11, this.f62213c);
            }
        }
        boolean z = this.f62223m;
        float f12 = (z ? this.f62218h : this.f62217g) * f5;
        float f13 = f12;
        if (!z) {
            f13 = f12 + (this.f62219i * f5);
        }
        if (this.f62221k == 0) {
            f2 = f8 + f13;
            f = f6;
        } else {
            f = f8 + f13;
            f2 = f6;
        }
        canvas.drawCircle(f2, f, this.f62211a, this.f62214d);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f62221k == 0) {
            setMeasuredDimension(m4924a(i), m4923b(i2));
        } else {
            setMeasuredDimension(m4923b(i), m4924a(i2));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        this.f62220j = i;
        ViewPager.AbstractC2936e abstractC2936e = this.f62216f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.f62217g = i;
        this.f62219i = f;
        invalidate();
        ViewPager.AbstractC2936e abstractC2936e = this.f62216f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    public void onPageSelected(int i) {
        if (this.f62223m || this.f62220j == 0) {
            this.f62217g = i;
            this.f62218h = i;
            invalidate();
        }
        ViewPager.AbstractC2936e abstractC2936e = this.f62216f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f62217g = savedState.currentPage;
        this.f62218h = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.f62217g;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f62215e;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f62226p = C0913i.m44180b(motionEvent, 0);
            this.f62225o = motionEvent.getX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float m44179c = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62226p));
                float f = m44179c - this.f62225o;
                if (!this.f62227q && Math.abs(f) > this.f62224n) {
                    this.f62227q = true;
                }
                if (!this.f62227q) {
                    return true;
                }
                this.f62225o = m44179c;
                if (!this.f62215e.isFakeDragging() && !this.f62215e.beginFakeDrag()) {
                    return true;
                }
                this.f62215e.fakeDragBy(f);
                return true;
            } else if (action != 3) {
                if (action == 5) {
                    int m44183a = C0913i.m44183a(motionEvent);
                    this.f62225o = C0913i.m44179c(motionEvent, m44183a);
                    this.f62226p = C0913i.m44180b(motionEvent, m44183a);
                    return true;
                } else if (action != 6) {
                    return true;
                } else {
                    int m44183a2 = C0913i.m44183a(motionEvent);
                    if (C0913i.m44180b(motionEvent, m44183a2) == this.f62226p) {
                        if (m44183a2 == 0) {
                            i = 1;
                        }
                        this.f62226p = C0913i.m44180b(motionEvent, i);
                    }
                    this.f62225o = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62226p));
                    return true;
                }
            }
        }
        if (!this.f62227q) {
            int count = this.f62215e.getAdapter().getCount();
            float width = getWidth();
            float f2 = width / 2.0f;
            float f3 = width / 6.0f;
            if (this.f62217g > 0 && motionEvent.getX() < f2 - f3) {
                if (action == 3) {
                    return true;
                }
                this.f62215e.setCurrentItem(this.f62217g - 1);
                return true;
            } else if (this.f62217g < count - 1 && motionEvent.getX() > f2 + f3) {
                if (action == 3) {
                    return true;
                }
                this.f62215e.setCurrentItem(this.f62217g + 1);
                return true;
            }
        }
        this.f62227q = false;
        this.f62226p = -1;
        if (!this.f62215e.isFakeDragging()) {
            return true;
        }
        this.f62215e.endFakeDrag();
        return true;
    }

    public void setCentered(boolean z) {
        this.f62222l = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62215e;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f62217g = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFillColor(int i) {
        this.f62214d.setColor(i);
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62216f = abstractC2936e;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            this.f62221k = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }

    public void setPageColor(int i) {
        this.f62212b.setColor(i);
        invalidate();
    }

    public void setRadius(float f) {
        this.f62211a = f;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.f62223m = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.f62213c.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.f62213c.setStrokeWidth(f);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62215e;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62215e = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
