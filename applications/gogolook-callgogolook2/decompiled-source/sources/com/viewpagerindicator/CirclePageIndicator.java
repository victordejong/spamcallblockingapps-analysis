package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import p081h.p450p.AbstractC10841f;
import p081h.p450p.AbstractC10842g;
import p081h.p450p.AbstractC10843h;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator.class */
public class CirclePageIndicator extends View implements AbstractC10841f, AbstractC10843h {

    /* renamed from: a */
    public float f10139a;

    /* renamed from: b */
    public final Paint f10140b;

    /* renamed from: c */
    public final Paint f10141c;

    /* renamed from: d */
    public final Paint f10142d;

    /* renamed from: e */
    public AbstractC10842g f10143e;

    /* renamed from: f */
    public AbstractC10843h f10144f;

    /* renamed from: g */
    public int f10145g;

    /* renamed from: h */
    public int f10146h;

    /* renamed from: i */
    public float f10147i;

    /* renamed from: j */
    public int f10148j;

    /* renamed from: k */
    public int f10149k;

    /* renamed from: l */
    public int f10150l;

    /* renamed from: m */
    public boolean f10151m;

    /* renamed from: n */
    public boolean f10152n;

    /* renamed from: o */
    public int f10153o;

    /* renamed from: p */
    public float f10154p;

    /* renamed from: q */
    public int f10155q;

    /* renamed from: r */
    public boolean f10156r;

    /* renamed from: s */
    public float f10157s;

    /* renamed from: t */
    public float f10158t;

    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4207a();

        /* renamed from: a */
        public int f10159a;

        /* renamed from: com.viewpagerindicator.CirclePageIndicator$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/CirclePageIndicator$SavedState$a.class */
        public static final class C4207a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f10159a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10159a);
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
        this.f10140b = new Paint(1);
        this.f10141c = new Paint(1);
        this.f10142d = new Paint(1);
        this.f10154p = -1.0f;
        this.f10155q = -1;
        if (!isInEditMode()) {
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
            this.f10151m = obtainStyledAttributes.getBoolean(R$styleable.CirclePageIndicator_centered, z);
            this.f10149k = obtainStyledAttributes.getInt(R$styleable.CirclePageIndicator_android_orientation, integer);
            this.f10140b.setStyle(Paint.Style.FILL);
            this.f10140b.setColor(obtainStyledAttributes.getColor(R$styleable.CirclePageIndicator_pageColor, color));
            this.f10141c.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f10141c.setColor(Color.parseColor("#444444"));
            this.f10141c.setColor(obtainStyledAttributes.getColor(R$styleable.CirclePageIndicator_strokeColor, color3));
            this.f10141c.setStrokeWidth(obtainStyledAttributes.getDimension(R$styleable.CirclePageIndicator_strokeWidth, dimension));
            this.f10142d.setStyle(Paint.Style.FILL);
            this.f10142d.setColor(obtainStyledAttributes.getColor(R$styleable.CirclePageIndicator_fillColor, color2));
            this.f10139a = obtainStyledAttributes.getDimension(R$styleable.CirclePageIndicator_radius, dimension2);
            this.f10152n = obtainStyledAttributes.getBoolean(R$styleable.CirclePageIndicator_snap, z2);
            Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.CirclePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.f10153o = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    /* renamed from: a */
    public final int m29333a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int i2 = size;
        if (mode != 1073741824) {
            if (m29335a()) {
                i2 = size;
            } else {
                int count = this.f10143e.getCount();
                float paddingLeft = getPaddingLeft() + getPaddingRight();
                float f = count * 2;
                float f2 = this.f10139a;
                i2 = (int) (paddingLeft + (f * f2) + ((count - 1) * f2) + 1.0f);
                if (mode == Integer.MIN_VALUE) {
                    i2 = Math.min(i2, size);
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    public void m29334a(float f) {
        this.f10139a = f;
        invalidate();
    }

    /* renamed from: a */
    public void m29332a(int i, boolean z) {
        if (this.f10143e.mo10429c() != null) {
            this.f10143e.mo10433a(i, z);
            this.f10145g = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    /* renamed from: a */
    public void m29331a(@NonNull AbstractC10842g gVar) {
        if (this.f10143e != gVar) {
            if (gVar.mo10429c() == null) {
                throw new IllegalStateException("ViewPager has not been bound.");
            } else if (gVar.mo10436a() != null) {
                AbstractC10842g gVar2 = this.f10143e;
                if (gVar2 != null) {
                    gVar2.mo10426f();
                }
                this.f10143e = gVar;
                this.f10143e.mo10431a(this);
                invalidate();
            } else {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
        }
    }

    /* renamed from: a */
    public void m29330a(AbstractC10843h hVar) {
        this.f10144f = hVar;
    }

    /* renamed from: a */
    public final boolean m29335a() {
        AbstractC10842g gVar = this.f10143e;
        return gVar == null || gVar.mo10429c() == null;
    }

    /* renamed from: b */
    public final int m29328b(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int paddingTop = (int) ((this.f10139a * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
            size = mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
        }
        return size;
    }

    /* renamed from: b */
    public void m29329b(float f) {
        this.f10141c.setStrokeWidth(f);
        invalidate();
    }

    /* renamed from: c */
    public void m29327c(int i) {
        m29332a(i, true);
    }

    /* renamed from: d */
    public void m29326d(int i) {
        this.f10150l = i;
    }

    /* renamed from: e */
    public void m29325e(int i) {
        this.f10142d.setColor(i);
        invalidate();
    }

    /* renamed from: f */
    public void m29324f(int i) {
        this.f10140b.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int count;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        float f2;
        super.onDraw(canvas);
        if (m29335a() || (count = this.f10143e.getCount()) == 0) {
            return;
        }
        if (this.f10145g >= count) {
            m29327c(count - 1);
            return;
        }
        if (this.f10149k == 0) {
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
        float f3 = getContext().getResources().getDisplayMetrics().density;
        float f4 = this.f10139a;
        float f5 = (f4 * 2.0f) + (this.f10150l * 2);
        float f6 = i + f4;
        float f7 = i3 + f4;
        if (this.f10151m) {
            float f8 = f4 * 2.0f;
            if (count > 1) {
                f = f8 + ((count - 1) * f5);
                f2 = f4;
            } else {
                f2 = 0.0f;
                f = f8;
            }
            f7 = f2 + ((((i4 - i3) - i2) - f) / 2.0f);
        }
        float f9 = this.f10139a;
        float f10 = f9;
        if (this.f10141c.getStrokeWidth() > 0.0f) {
            f10 = f9 - (this.f10141c.getStrokeWidth() / 2.0f);
        }
        for (int i5 = 0; i5 < count; i5++) {
            float f11 = (i5 * f5) + f7;
            if (this.f10149k == 0) {
                this.f10157s = f11;
                this.f10158t = f6;
            } else {
                this.f10157s = f6;
                this.f10158t = f11;
            }
            if (this.f10140b.getAlpha() > 0) {
                canvas.drawCircle(this.f10157s, this.f10158t, f10, this.f10140b);
            }
            float f12 = this.f10139a;
            if (f10 != f12) {
                canvas.drawCircle(this.f10157s, this.f10158t, f12, this.f10141c);
            }
        }
        float f13 = (this.f10152n ? this.f10146h : this.f10145g) * f5;
        float f14 = f13;
        if (!this.f10152n) {
            f14 = f13 + (this.f10147i * f5);
        }
        if (this.f10149k == 0) {
            this.f10157s = f7 + f14;
            this.f10158t = f6;
        } else {
            this.f10157s = f6;
            this.f10158t = f7 + f14;
        }
        canvas.drawCircle(this.f10157s, this.f10158t, this.f10139a, this.f10142d);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f10149k == 0) {
            setMeasuredDimension(m29333a(i), m29328b(i2));
        } else {
            setMeasuredDimension(m29328b(i), m29333a(i2));
        }
    }

    @Override // p081h.p450p.AbstractC10843h
    public void onPageScrollStateChanged(int i) {
        this.f10148j = i;
        AbstractC10843h hVar = this.f10144f;
        if (hVar != null) {
            hVar.onPageScrollStateChanged(i);
        }
    }

    @Override // p081h.p450p.AbstractC10843h
    public void onPageScrolled(int i, float f, int i2) {
        this.f10145g = i;
        this.f10147i = f;
        invalidate();
        AbstractC10843h hVar = this.f10144f;
        if (hVar != null) {
            hVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // p081h.p450p.AbstractC10843h
    public void onPageSelected(int i) {
        if (this.f10152n || this.f10148j == 0) {
            this.f10145g = i;
            this.f10146h = i;
            invalidate();
        }
        AbstractC10843h hVar = this.f10144f;
        if (hVar != null) {
            hVar.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.f10159a;
        this.f10145g = i;
        this.f10146h = i;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10159a = this.f10145g;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        int i = 0;
        if (m29335a() || this.f10143e.getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10155q));
                    float f = x - this.f10154p;
                    if (!this.f10156r && Math.abs(f) > this.f10153o) {
                        this.f10156r = true;
                    }
                    if (!this.f10156r) {
                        return true;
                    }
                    this.f10154p = x;
                    if (m29335a()) {
                        return true;
                    }
                    if (!this.f10143e.mo10430b() && !this.f10143e.mo10428d()) {
                        return true;
                    }
                    try {
                        this.f10143e.mo10435a(f);
                        return true;
                    } catch (NullPointerException e) {
                        e.printStackTrace();
                        return true;
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.f10154p = MotionEventCompat.getX(motionEvent, actionIndex);
                        this.f10155q = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.f10155q) {
                            if (actionIndex2 == 0) {
                                i = 1;
                            }
                            this.f10155q = MotionEventCompat.getPointerId(motionEvent, i);
                        }
                        this.f10154p = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10155q));
                        return true;
                    }
                }
            }
            if (!this.f10156r) {
                int count = this.f10143e.getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.f10145g <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.f10145g < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f10143e.mo10434a(this.f10145g + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.f10143e.mo10434a(this.f10145g - 1);
                    return true;
                }
            }
            this.f10156r = false;
            this.f10155q = -1;
            if (m29335a() || !this.f10143e.mo10430b()) {
                return true;
            }
            this.f10143e.mo10427e();
            return true;
        }
        this.f10155q = MotionEventCompat.getPointerId(motionEvent, 0);
        this.f10154p = motionEvent.getX();
        return true;
    }
}
