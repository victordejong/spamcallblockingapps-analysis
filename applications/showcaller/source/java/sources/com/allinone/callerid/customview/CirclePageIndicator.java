package com.allinone.callerid.customview;

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
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$bool;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$dimen;
import com.allinone.callerid.R$integer;
import com.allinone.callerid.R$styleable;
import p020b.p041h.p050l.C1666j;
import p020b.p041h.p050l.C1693x;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/CirclePageIndicator.class */
public class CirclePageIndicator extends View implements ViewPager.AbstractC1193i {

    /* renamed from: d */
    private float f8447d;

    /* renamed from: e */
    private final Paint f8448e;

    /* renamed from: f */
    private final Paint f8449f;

    /* renamed from: g */
    private final Paint f8450g;

    /* renamed from: h */
    private ViewPager f8451h;

    /* renamed from: i */
    private ViewPager.AbstractC1193i f8452i;

    /* renamed from: j */
    private int f8453j;

    /* renamed from: k */
    private int f8454k;

    /* renamed from: l */
    private float f8455l;

    /* renamed from: m */
    private int f8456m;

    /* renamed from: n */
    private int f8457n;

    /* renamed from: o */
    private boolean f8458o;

    /* renamed from: p */
    private boolean f8459p;

    /* renamed from: q */
    private int f8460q;

    /* renamed from: r */
    private float f8461r;

    /* renamed from: s */
    private int f8462s;

    /* renamed from: t */
    private boolean f8463t;

    /* renamed from: u */
    private float f8464u;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/CirclePageIndicator$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2420a();

        /* renamed from: d */
        int f8465d;

        /* renamed from: com.allinone.callerid.customview.CirclePageIndicator$SavedState$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/CirclePageIndicator$SavedState$a.class */
        class C2420a implements Parcelable.Creator<SavedState> {
            C2420a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f8465d = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f8465d);
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f8448e = paint;
        Paint paint2 = new Paint(1);
        this.f8449f = paint2;
        Paint paint3 = new Paint(1);
        this.f8450g = paint3;
        this.f8461r = -1.0f;
        this.f8462s = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(R$color.default_circle_indicator_page_color);
        int color2 = resources.getColor(R$color.default_circle_indicator_fill_color);
        int integer = resources.getInteger(R$integer.default_circle_indicator_orientation);
        int color3 = resources.getColor(R$color.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(R$dimen.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(R$dimen.default_circle_indicator_radius);
        boolean z = resources.getBoolean(R$bool.default_circle_indicator_centered);
        boolean z2 = resources.getBoolean(R$bool.default_circle_indicator_snap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CirclePageIndicator, i, 0);
        this.f8458o = obtainStyledAttributes.getBoolean(2, z);
        this.f8457n = obtainStyledAttributes.getInt(0, integer);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(obtainStyledAttributes.getColor(4, color));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(obtainStyledAttributes.getColor(7, color3));
        paint2.setStrokeWidth(obtainStyledAttributes.getDimension(8, dimension));
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(obtainStyledAttributes.getColor(3, color2));
        this.f8447d = obtainStyledAttributes.getDimension(5, dimension2);
        this.f8459p = obtainStyledAttributes.getBoolean(6, z2);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f8460q = C1693x.m29216d(ViewConfiguration.get(context));
    }

    /* renamed from: b */
    private int m27442b(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int i2 = size;
        if (mode != 1073741824) {
            ViewPager viewPager = this.f8451h;
            if (viewPager == null) {
                i2 = size;
            } else {
                int mo25082e = viewPager.getAdapter().mo25082e();
                float paddingLeft = getPaddingLeft() + getPaddingRight();
                float f = mo25082e * 2;
                float f2 = this.f8447d;
                i2 = (int) (paddingLeft + (f * f2) + ((mo25082e - 1) * f2) + 1.0f);
                if (mode == Integer.MIN_VALUE) {
                    i2 = Math.min(i2, size);
                }
            }
        }
        return i2;
    }

    /* renamed from: e */
    private int m27441e(int i) {
        int i2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i2 = size;
        } else {
            i2 = (int) ((this.f8447d * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
            if (mode == Integer.MIN_VALUE) {
                i2 = Math.min(i2, size);
            }
        }
        return i2;
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
    /* renamed from: a */
    public void mo4098a(int i, float f, int i2) {
        this.f8453j = i;
        this.f8455l = f;
        invalidate();
        ViewPager.AbstractC1193i abstractC1193i = this.f8452i;
        if (abstractC1193i != null) {
            abstractC1193i.mo4098a(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
    /* renamed from: c */
    public void mo4096c(int i) {
        this.f8456m = i;
        ViewPager.AbstractC1193i abstractC1193i = this.f8452i;
        if (abstractC1193i != null) {
            abstractC1193i.mo4096c(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
    /* renamed from: d */
    public void mo4095d(int i) {
        if (this.f8459p || this.f8456m == 0) {
            this.f8453j = i;
            this.f8454k = i;
            invalidate();
        }
        ViewPager.AbstractC1193i abstractC1193i = this.f8452i;
        if (abstractC1193i != null) {
            abstractC1193i.mo4095d(i);
        }
    }

    public int getFillColor() {
        return this.f8450g.getColor();
    }

    public int getOrientation() {
        return this.f8457n;
    }

    public int getPageColor() {
        return this.f8448e.getColor();
    }

    public float getRadius() {
        return this.f8447d;
    }

    public int getStrokeColor() {
        return this.f8449f.getColor();
    }

    public float getStrokeWidth() {
        return this.f8449f.getStrokeWidth();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int mo25082e;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        ViewPager viewPager = this.f8451h;
        if (viewPager == null || (mo25082e = viewPager.getAdapter().mo25082e()) == 0) {
            return;
        }
        if (this.f8453j >= mo25082e) {
            setCurrentItem(mo25082e - 1);
            return;
        }
        if (this.f8457n == 0) {
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
        if (this.f8464u == 0.0f) {
            this.f8464u = this.f8447d;
        }
        float f4 = this.f8447d;
        float f5 = this.f8464u;
        float f6 = (f4 * 2.0f) + f5;
        float f7 = i + f4;
        float f8 = i3 + f4;
        float f9 = f8;
        if (this.f8458o) {
            f9 = f8 + (mo25082e > 1 ? (((i4 - i3) - i2) / 2.0f) - ((((mo25082e * 2) * f4) + ((mo25082e - 1) * f5)) / 2.0f) : (((i4 - i3) - i2) / 2.0f) - f4);
        }
        float f10 = f4;
        if (this.f8449f.getStrokeWidth() > 0.0f) {
            f10 = f4 - (this.f8449f.getStrokeWidth() / 2.0f);
        }
        for (int i5 = 0; i5 < mo25082e; i5++) {
            float f11 = (i5 * f6) + f9;
            if (this.f8457n == 0) {
                f3 = f7;
            } else {
                f3 = f11;
                f11 = f7;
            }
            if (this.f8448e.getAlpha() > 0) {
                canvas.drawCircle(f11, f3, f10, this.f8448e);
            }
            float f12 = this.f8447d;
            if (f10 != f12) {
                canvas.drawCircle(f11, f3, f12, this.f8449f);
            }
        }
        boolean z = this.f8459p;
        float f13 = (z ? this.f8454k : this.f8453j) * f6;
        float f14 = f13;
        if (!z) {
            f14 = f13 + (this.f8455l * f6);
        }
        if (this.f8457n == 0) {
            f = f9 + f14;
            f2 = f7;
        } else {
            f2 = f9 + f14;
            f = f7;
        }
        canvas.drawCircle(f, f2, this.f8447d, this.f8450g);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f8457n == 0) {
            setMeasuredDimension(m27442b(i), m27441e(i2));
        } else {
            setMeasuredDimension(m27441e(i), m27442b(i2));
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.f8465d;
        this.f8453j = i;
        this.f8454k = i;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f8465d = this.f8453j;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f8451h;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().mo25082e() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f8462s = C1666j.m29388d(motionEvent, 0);
            this.f8461r = motionEvent.getX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                try {
                    float m29387e = C1666j.m29387e(motionEvent, C1666j.m29391a(motionEvent, this.f8462s));
                    float f = m29387e - this.f8461r;
                    if (!this.f8463t && Math.abs(f) > this.f8460q) {
                        this.f8463t = true;
                    }
                    if (!this.f8463t) {
                        return true;
                    }
                    this.f8461r = m29387e;
                    if (!this.f8451h.m30768A() && !this.f8451h.m30742e()) {
                        return true;
                    }
                    this.f8451h.m30729s(f);
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (action != 3) {
                if (action == 5) {
                    int m29390b = C1666j.m29390b(motionEvent);
                    this.f8461r = C1666j.m29387e(motionEvent, m29390b);
                    this.f8462s = C1666j.m29388d(motionEvent, m29390b);
                    return true;
                } else if (action != 6) {
                    return true;
                } else {
                    int m29390b2 = C1666j.m29390b(motionEvent);
                    if (C1666j.m29388d(motionEvent, m29390b2) == this.f8462s) {
                        if (m29390b2 == 0) {
                            i = 1;
                        }
                        this.f8462s = C1666j.m29388d(motionEvent, i);
                    }
                    this.f8461r = C1666j.m29387e(motionEvent, C1666j.m29391a(motionEvent, this.f8462s));
                    return true;
                }
            }
        }
        try {
            if (!this.f8463t) {
                int mo25082e = this.f8451h.getAdapter().mo25082e();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.f8453j > 0 && motionEvent.getX() < f2 - f3) {
                    if (action == 3) {
                        return true;
                    }
                    this.f8451h.setCurrentItem(this.f8453j - 1);
                    return true;
                } else if (this.f8453j < mo25082e - 1 && motionEvent.getX() > f2 + f3) {
                    if (action == 3) {
                        return true;
                    }
                    this.f8451h.setCurrentItem(this.f8453j + 1);
                    return true;
                }
            }
            this.f8463t = false;
            this.f8462s = -1;
            if (!this.f8451h.m30768A()) {
                return true;
            }
            this.f8451h.m30731q();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    public void setCentered(boolean z) {
        this.f8458o = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f8451h;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f8453j = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFillColor(int i) {
        this.f8450g.setColor(i);
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.AbstractC1193i abstractC1193i) {
        this.f8452i = abstractC1193i;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            this.f8457n = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }

    public void setPaddind(float f) {
        this.f8464u = f;
        invalidate();
    }

    public void setPageColor(int i) {
        this.f8448e.setColor(i);
        invalidate();
    }

    public void setRadius(float f) {
        this.f8447d = f;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.f8459p = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.f8449f.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.f8449f.setStrokeWidth(f);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f8451h;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f8451h = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
