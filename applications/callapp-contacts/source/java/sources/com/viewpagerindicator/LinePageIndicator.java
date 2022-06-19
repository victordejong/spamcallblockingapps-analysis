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
import com.viewpagerindicator.C17579d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/LinePageIndicator.class */
public class LinePageIndicator extends View implements AbstractC17578c {

    /* renamed from: a */
    private final Paint f62235a;

    /* renamed from: b */
    private final Paint f62236b;

    /* renamed from: c */
    private ViewPager f62237c;

    /* renamed from: d */
    private ViewPager.AbstractC2936e f62238d;

    /* renamed from: e */
    private int f62239e;

    /* renamed from: f */
    private boolean f62240f;

    /* renamed from: g */
    private float f62241g;

    /* renamed from: h */
    private float f62242h;

    /* renamed from: i */
    private int f62243i;

    /* renamed from: j */
    private float f62244j;

    /* renamed from: k */
    private int f62245k;

    /* renamed from: l */
    private boolean f62246l;

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/LinePageIndicator$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.viewpagerindicator.LinePageIndicator.SavedState.1
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

    public LinePageIndicator(Context context) {
        this(context, null);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17579d.C17580a.vpiLinePageIndicatorStyle);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f62235a = paint;
        Paint paint2 = new Paint(1);
        this.f62236b = paint2;
        this.f62244j = -1.0f;
        this.f62245k = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(C17579d.C17582c.default_line_indicator_selected_color);
        int color2 = resources.getColor(C17579d.C17582c.default_line_indicator_unselected_color);
        float dimension = resources.getDimension(C17579d.C17583d.default_line_indicator_line_width);
        float dimension2 = resources.getDimension(C17579d.C17583d.default_line_indicator_gap_width);
        float dimension3 = resources.getDimension(C17579d.C17583d.default_line_indicator_stroke_width);
        boolean z = resources.getBoolean(C17579d.C17581b.default_line_indicator_centered);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17579d.C17585f.LinePageIndicator, i, 0);
        this.f62240f = obtainStyledAttributes.getBoolean(C17579d.C17585f.LinePageIndicator_centered, z);
        this.f62241g = obtainStyledAttributes.getDimension(C17579d.C17585f.LinePageIndicator_lineWidth, dimension);
        this.f62242h = obtainStyledAttributes.getDimension(C17579d.C17585f.LinePageIndicator_gapWidth, dimension2);
        setStrokeWidth(obtainStyledAttributes.getDimension(C17579d.C17585f.LinePageIndicator_strokeWidth, dimension3));
        paint.setColor(obtainStyledAttributes.getColor(C17579d.C17585f.LinePageIndicator_unselectedColor, color2));
        paint2.setColor(obtainStyledAttributes.getColor(C17579d.C17585f.LinePageIndicator_selectedColor, color));
        Drawable drawable = obtainStyledAttributes.getDrawable(C17579d.C17585f.LinePageIndicator_android_background);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f62243i = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f62237c;
        if (viewPager == null || (count = viewPager.getAdapter().getCount()) == 0) {
            return;
        }
        if (this.f62239e >= count) {
            setCurrentItem(count - 1);
            return;
        }
        float f = this.f62241g;
        float f2 = this.f62242h;
        float f3 = f + f2;
        float f4 = count;
        float paddingTop = getPaddingTop();
        float paddingLeft = getPaddingLeft();
        float paddingRight = getPaddingRight();
        float height = paddingTop + (((getHeight() - paddingTop) - getPaddingBottom()) / 2.0f);
        float f5 = paddingLeft;
        if (this.f62240f) {
            f5 = paddingLeft + ((((getWidth() - paddingLeft) - paddingRight) / 2.0f) - (((f4 * f3) - f2) / 2.0f));
        }
        int i = 0;
        while (i < count) {
            float f6 = f5 + (i * f3);
            canvas.drawLine(f6, height, f6 + this.f62241g, height, i == this.f62239e ? this.f62236b : this.f62235a);
            i++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        float f2;
        ViewPager viewPager;
        int count;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || (viewPager = this.f62237c) == null) {
            f = size;
        } else {
            float paddingLeft = getPaddingLeft() + getPaddingRight() + (viewPager.getAdapter().getCount() * this.f62241g) + ((count - 1) * this.f62242h);
            f = paddingLeft;
            if (mode == Integer.MIN_VALUE) {
                f = Math.min(paddingLeft, size);
            }
        }
        int ceil = (int) Math.ceil(f);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            f2 = size2;
        } else {
            f2 = this.f62236b.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
            if (mode2 == Integer.MIN_VALUE) {
                f2 = Math.min(f2, size2);
            }
        }
        setMeasuredDimension(ceil, (int) Math.ceil(f2));
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62238d;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62238d;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        this.f62239e = i;
        invalidate();
        ViewPager.AbstractC2936e abstractC2936e = this.f62238d;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f62239e = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.f62239e;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f62237c;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f62245k = C0913i.m44180b(motionEvent, 0);
            this.f62244j = motionEvent.getX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float m44179c = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62245k));
                float f = m44179c - this.f62244j;
                if (!this.f62246l && Math.abs(f) > this.f62243i) {
                    this.f62246l = true;
                }
                if (!this.f62246l) {
                    return true;
                }
                this.f62244j = m44179c;
                if (!this.f62237c.isFakeDragging() && !this.f62237c.beginFakeDrag()) {
                    return true;
                }
                this.f62237c.fakeDragBy(f);
                return true;
            } else if (action != 3) {
                if (action == 5) {
                    int m44183a = C0913i.m44183a(motionEvent);
                    this.f62244j = C0913i.m44179c(motionEvent, m44183a);
                    this.f62245k = C0913i.m44180b(motionEvent, m44183a);
                    return true;
                } else if (action != 6) {
                    return true;
                } else {
                    int m44183a2 = C0913i.m44183a(motionEvent);
                    if (C0913i.m44180b(motionEvent, m44183a2) == this.f62245k) {
                        if (m44183a2 == 0) {
                            i = 1;
                        }
                        this.f62245k = C0913i.m44180b(motionEvent, i);
                    }
                    this.f62244j = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62245k));
                    return true;
                }
            }
        }
        if (!this.f62246l) {
            int count = this.f62237c.getAdapter().getCount();
            float width = getWidth();
            float f2 = width / 2.0f;
            float f3 = width / 6.0f;
            if (this.f62239e > 0 && motionEvent.getX() < f2 - f3) {
                if (action == 3) {
                    return true;
                }
                this.f62237c.setCurrentItem(this.f62239e - 1);
                return true;
            } else if (this.f62239e < count - 1 && motionEvent.getX() > f2 + f3) {
                if (action == 3) {
                    return true;
                }
                this.f62237c.setCurrentItem(this.f62239e + 1);
                return true;
            }
        }
        this.f62246l = false;
        this.f62245k = -1;
        if (!this.f62237c.isFakeDragging()) {
            return true;
        }
        this.f62237c.endFakeDrag();
        return true;
    }

    public void setCentered(boolean z) {
        this.f62240f = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62237c;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f62239e = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setGapWidth(float f) {
        this.f62242h = f;
        invalidate();
    }

    public void setLineWidth(float f) {
        this.f62241g = f;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62238d = abstractC2936e;
    }

    public void setSelectedColor(int i) {
        this.f62236b.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.f62236b.setStrokeWidth(f);
        this.f62235a.setStrokeWidth(f);
        invalidate();
    }

    public void setUnselectedColor(int i) {
        this.f62235a.setColor(i);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62237c;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62237c = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
