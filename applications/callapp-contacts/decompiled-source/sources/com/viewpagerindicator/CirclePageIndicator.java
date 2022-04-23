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
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.i;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.viewpagerindicator.d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator.class */
public class CirclePageIndicator extends View implements c {

    /* renamed from: a  reason: collision with root package name */
    private float f35901a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f35902b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f35903c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f35904d;
    private ViewPager e;
    private ViewPager.e f;
    private int g;
    private int h;
    private float i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private int n;
    private float o;
    private int p;
    private boolean q;

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
        this(context, attributeSet, d.a.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f35902b = paint;
        Paint paint2 = new Paint(1);
        this.f35903c = paint2;
        Paint paint3 = new Paint(1);
        this.f35904d = paint3;
        this.o = -1.0f;
        this.p = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(d.c.default_circle_indicator_page_color);
            int color2 = resources.getColor(d.c.default_circle_indicator_fill_color);
            int integer = resources.getInteger(d.e.default_circle_indicator_orientation);
            int color3 = resources.getColor(d.c.default_circle_indicator_stroke_color);
            float dimension = resources.getDimension(d.C0570d.default_circle_indicator_stroke_width);
            float dimension2 = resources.getDimension(d.C0570d.default_circle_indicator_radius);
            boolean z = resources.getBoolean(d.b.default_circle_indicator_centered);
            boolean z2 = resources.getBoolean(d.b.default_circle_indicator_snap);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f.CirclePageIndicator, i, 0);
            this.l = obtainStyledAttributes.getBoolean(d.f.CirclePageIndicator_centered, z);
            this.k = obtainStyledAttributes.getInt(d.f.CirclePageIndicator_android_orientation, integer);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(obtainStyledAttributes.getColor(d.f.CirclePageIndicator_pageColor, color));
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(obtainStyledAttributes.getColor(d.f.CirclePageIndicator_strokeColor, color3));
            paint2.setStrokeWidth(obtainStyledAttributes.getDimension(d.f.CirclePageIndicator_strokeWidth, dimension));
            paint3.setStyle(Paint.Style.FILL);
            paint3.setColor(obtainStyledAttributes.getColor(d.f.CirclePageIndicator_fillColor, color2));
            this.f35901a = obtainStyledAttributes.getDimension(d.f.CirclePageIndicator_radius, dimension2);
            this.m = obtainStyledAttributes.getBoolean(d.f.CirclePageIndicator_snap, z2);
            Drawable drawable = obtainStyledAttributes.getDrawable(d.f.CirclePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.n = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    private int a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int i2 = size;
        if (mode != 1073741824) {
            ViewPager viewPager = this.e;
            if (viewPager == null) {
                i2 = size;
            } else {
                int count = viewPager.getAdapter().getCount();
                float paddingLeft = getPaddingLeft() + getPaddingRight();
                float f = count * 2;
                float f2 = this.f35901a;
                i2 = (int) (paddingLeft + (f * f2) + ((count - 1) * f2) + 1.0f);
                if (mode == Integer.MIN_VALUE) {
                    i2 = Math.min(i2, size);
                }
            }
        }
        return i2;
    }

    private int b(int i) {
        int i2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i2 = size;
        } else {
            i2 = (int) ((this.f35901a * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
            if (mode == Integer.MIN_VALUE) {
                i2 = Math.min(i2, size);
            }
        }
        return i2;
    }

    public int getFillColor() {
        return this.f35904d.getColor();
    }

    public int getOrientation() {
        return this.k;
    }

    public float getRadius() {
        return this.f35901a;
    }

    public int getStrokeColor() {
        return this.f35903c.getColor();
    }

    public float getStrokeWidth() {
        return this.f35903c.getStrokeWidth();
    }

    public boolean isCentered() {
        return this.l;
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
        ViewPager viewPager = this.e;
        if (!(viewPager == null || (count = viewPager.getAdapter().getCount()) == 0)) {
            if (this.g >= count) {
                setCurrentItem(count - 1);
                return;
            }
            if (this.k == 0) {
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
            float f4 = this.f35901a;
            float f5 = 3.0f * f4;
            float f6 = i + f4;
            float f7 = i3 + f4;
            float f8 = f7;
            if (this.l) {
                f8 = f7 + ((((i4 - i3) - i2) / 2.0f) - ((count * f5) / 2.0f));
            }
            float f9 = f4;
            if (this.f35903c.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED) {
                f9 = f4 - (this.f35903c.getStrokeWidth() / 2.0f);
            }
            for (int i5 = 0; i5 < count; i5++) {
                float f10 = (i5 * f5) + f8;
                if (this.k == 0) {
                    f3 = f6;
                } else {
                    f3 = f10;
                    f10 = f6;
                }
                if (this.f35902b.getAlpha() > 0) {
                    canvas.drawCircle(f10, f3, f9, this.f35902b);
                }
                float f11 = this.f35901a;
                if (f9 != f11) {
                    canvas.drawCircle(f10, f3, f11, this.f35903c);
                }
            }
            boolean z = this.m;
            float f12 = (z ? this.h : this.g) * f5;
            float f13 = f12;
            if (!z) {
                f13 = f12 + (this.i * f5);
            }
            if (this.k == 0) {
                f2 = f8 + f13;
                f = f6;
            } else {
                f = f8 + f13;
                f2 = f6;
            }
            canvas.drawCircle(f2, f, this.f35901a, this.f35904d);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.k == 0) {
            setMeasuredDimension(a(i), b(i2));
        } else {
            setMeasuredDimension(b(i), a(i2));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        this.j = i;
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.g = i;
        this.i = f;
        invalidate();
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    public void onPageSelected(int i) {
        if (this.m || this.j == 0) {
            this.g = i;
            this.h = i;
            invalidate();
        }
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.g = savedState.currentPage;
        this.h = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.g;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.e;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float c2 = i.c(motionEvent, i.a(motionEvent, this.p));
                    float f = c2 - this.o;
                    if (!this.q && Math.abs(f) > this.n) {
                        this.q = true;
                    }
                    if (!this.q) {
                        return true;
                    }
                    this.o = c2;
                    if (!this.e.isFakeDragging() && !this.e.beginFakeDrag()) {
                        return true;
                    }
                    this.e.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int a2 = i.a(motionEvent);
                        this.o = i.c(motionEvent, a2);
                        this.p = i.b(motionEvent, a2);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int a3 = i.a(motionEvent);
                        if (i.b(motionEvent, a3) == this.p) {
                            if (a3 == 0) {
                                i = 1;
                            }
                            this.p = i.b(motionEvent, i);
                        }
                        this.o = i.c(motionEvent, i.a(motionEvent, this.p));
                        return true;
                    }
                }
            }
            if (!this.q) {
                int count = this.e.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.g <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.g < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.e.setCurrentItem(this.g + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.e.setCurrentItem(this.g - 1);
                    return true;
                }
            }
            this.q = false;
            this.p = -1;
            if (!this.e.isFakeDragging()) {
                return true;
            }
            this.e.endFakeDrag();
            return true;
        }
        this.p = i.b(motionEvent, 0);
        this.o = motionEvent.getX();
        return true;
    }

    public void setCentered(boolean z) {
        this.l = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.e;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.g = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFillColor(int i) {
        this.f35904d.setColor(i);
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.f = eVar;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            this.k = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }

    public void setPageColor(int i) {
        this.f35902b.setColor(i);
        invalidate();
    }

    public void setRadius(float f) {
        this.f35901a = f;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.m = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.f35903c.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.f35903c.setStrokeWidth(f);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.e;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.e = viewPager;
                viewPager.setOnPageChangeListener(this);
                invalidate();
                return;
            }
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
