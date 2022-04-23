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
import com.viewpagerindicator.d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/LinePageIndicator.class */
public class LinePageIndicator extends View implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f35911a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f35912b;

    /* renamed from: c  reason: collision with root package name */
    private ViewPager f35913c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager.e f35914d;
    private int e;
    private boolean f;
    private float g;
    private float h;
    private int i;
    private float j;
    private int k;
    private boolean l;

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
        this(context, attributeSet, d.a.vpiLinePageIndicatorStyle);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f35911a = paint;
        Paint paint2 = new Paint(1);
        this.f35912b = paint2;
        this.j = -1.0f;
        this.k = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(d.c.default_line_indicator_selected_color);
            int color2 = resources.getColor(d.c.default_line_indicator_unselected_color);
            float dimension = resources.getDimension(d.C0570d.default_line_indicator_line_width);
            float dimension2 = resources.getDimension(d.C0570d.default_line_indicator_gap_width);
            float dimension3 = resources.getDimension(d.C0570d.default_line_indicator_stroke_width);
            boolean z = resources.getBoolean(d.b.default_line_indicator_centered);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f.LinePageIndicator, i, 0);
            this.f = obtainStyledAttributes.getBoolean(d.f.LinePageIndicator_centered, z);
            this.g = obtainStyledAttributes.getDimension(d.f.LinePageIndicator_lineWidth, dimension);
            this.h = obtainStyledAttributes.getDimension(d.f.LinePageIndicator_gapWidth, dimension2);
            setStrokeWidth(obtainStyledAttributes.getDimension(d.f.LinePageIndicator_strokeWidth, dimension3));
            paint.setColor(obtainStyledAttributes.getColor(d.f.LinePageIndicator_unselectedColor, color2));
            paint2.setColor(obtainStyledAttributes.getColor(d.f.LinePageIndicator_selectedColor, color));
            Drawable drawable = obtainStyledAttributes.getDrawable(d.f.LinePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.i = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f35913c;
        if (viewPager != null && (count = viewPager.getAdapter().getCount()) != 0) {
            if (this.e >= count) {
                setCurrentItem(count - 1);
                return;
            }
            float f = this.g;
            float f2 = this.h;
            float f3 = f + f2;
            float f4 = count;
            float paddingTop = getPaddingTop();
            float paddingLeft = getPaddingLeft();
            float paddingRight = getPaddingRight();
            float height = paddingTop + (((getHeight() - paddingTop) - getPaddingBottom()) / 2.0f);
            float f5 = paddingLeft;
            if (this.f) {
                f5 = paddingLeft + ((((getWidth() - paddingLeft) - paddingRight) / 2.0f) - (((f4 * f3) - f2) / 2.0f));
            }
            int i = 0;
            while (i < count) {
                float f6 = f5 + (i * f3);
                canvas.drawLine(f6, height, f6 + this.g, height, i == this.e ? this.f35912b : this.f35911a);
                i++;
            }
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
        if (mode == 1073741824 || (viewPager = this.f35913c) == null) {
            f = size;
        } else {
            float paddingLeft = getPaddingLeft() + getPaddingRight() + (viewPager.getAdapter().getCount() * this.g) + ((count - 1) * this.h);
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
            f2 = this.f35912b.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
            if (mode2 == Integer.MIN_VALUE) {
                f2 = Math.min(f2, size2);
            }
        }
        setMeasuredDimension(ceil, (int) Math.ceil(f2));
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        ViewPager.e eVar = this.f35914d;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.e eVar = this.f35914d;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        this.e = i;
        invalidate();
        ViewPager.e eVar = this.f35914d;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.e = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.e;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f35913c;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float c2 = i.c(motionEvent, i.a(motionEvent, this.k));
                    float f = c2 - this.j;
                    if (!this.l && Math.abs(f) > this.i) {
                        this.l = true;
                    }
                    if (!this.l) {
                        return true;
                    }
                    this.j = c2;
                    if (!this.f35913c.isFakeDragging() && !this.f35913c.beginFakeDrag()) {
                        return true;
                    }
                    this.f35913c.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int a2 = i.a(motionEvent);
                        this.j = i.c(motionEvent, a2);
                        this.k = i.b(motionEvent, a2);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int a3 = i.a(motionEvent);
                        if (i.b(motionEvent, a3) == this.k) {
                            if (a3 == 0) {
                                i = 1;
                            }
                            this.k = i.b(motionEvent, i);
                        }
                        this.j = i.c(motionEvent, i.a(motionEvent, this.k));
                        return true;
                    }
                }
            }
            if (!this.l) {
                int count = this.f35913c.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.e <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.e < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f35913c.setCurrentItem(this.e + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.f35913c.setCurrentItem(this.e - 1);
                    return true;
                }
            }
            this.l = false;
            this.k = -1;
            if (!this.f35913c.isFakeDragging()) {
                return true;
            }
            this.f35913c.endFakeDrag();
            return true;
        }
        this.k = i.b(motionEvent, 0);
        this.j = motionEvent.getX();
        return true;
    }

    public void setCentered(boolean z) {
        this.f = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f35913c;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.e = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setGapWidth(float f) {
        this.h = f;
        invalidate();
    }

    public void setLineWidth(float f) {
        this.g = f;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.f35914d = eVar;
    }

    public void setSelectedColor(int i) {
        this.f35912b.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.f35912b.setStrokeWidth(f);
        this.f35911a.setStrokeWidth(f);
        invalidate();
    }

    public void setUnselectedColor(int i) {
        this.f35911a.setColor(i);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f35913c;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.f35913c = viewPager;
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
