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
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator.class */
public class UnderlinePageIndicator extends View implements AbstractC17578c {

    /* renamed from: a */
    private final Paint f62289a;

    /* renamed from: b */
    private boolean f62290b;

    /* renamed from: c */
    private int f62291c;

    /* renamed from: d */
    private int f62292d;

    /* renamed from: e */
    private int f62293e;

    /* renamed from: f */
    private ViewPager f62294f;

    /* renamed from: g */
    private ViewPager.AbstractC2936e f62295g;

    /* renamed from: h */
    private int f62296h;

    /* renamed from: i */
    private int f62297i;

    /* renamed from: j */
    private float f62298j;

    /* renamed from: k */
    private int f62299k;

    /* renamed from: l */
    private float f62300l;

    /* renamed from: m */
    private int f62301m;

    /* renamed from: n */
    private boolean f62302n;

    /* renamed from: o */
    private final Runnable f62303o;

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.viewpagerindicator.UnderlinePageIndicator.SavedState.1
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

    public UnderlinePageIndicator(Context context) {
        this(context, null);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17579d.C17580a.vpiUnderlinePageIndicatorStyle);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f62289a = new Paint(1);
        this.f62300l = -1.0f;
        this.f62301m = -1;
        this.f62303o = new Runnable() { // from class: com.viewpagerindicator.UnderlinePageIndicator.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!UnderlinePageIndicator.this.f62290b) {
                    return;
                }
                int max = Math.max(UnderlinePageIndicator.this.f62289a.getAlpha() - UnderlinePageIndicator.this.f62293e, 0);
                UnderlinePageIndicator.this.f62289a.setAlpha(max);
                UnderlinePageIndicator.this.invalidate();
                if (max <= 0) {
                    return;
                }
                UnderlinePageIndicator.this.postDelayed(this, 30L);
            }
        };
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        boolean z = resources.getBoolean(C17579d.C17581b.default_underline_indicator_fades);
        int integer = resources.getInteger(C17579d.C17584e.default_underline_indicator_fade_delay);
        int integer2 = resources.getInteger(C17579d.C17584e.default_underline_indicator_fade_length);
        int color = resources.getColor(C17579d.C17582c.default_underline_indicator_selected_color);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17579d.C17585f.UnderlinePageIndicator, i, 0);
        setFades(obtainStyledAttributes.getBoolean(C17579d.C17585f.UnderlinePageIndicator_fades, z));
        setSelectedColor(obtainStyledAttributes.getColor(C17579d.C17585f.UnderlinePageIndicator_selectedColor, color));
        setFadeDelay(obtainStyledAttributes.getInteger(C17579d.C17585f.UnderlinePageIndicator_fadeDelay, integer));
        setFadeLength(obtainStyledAttributes.getInteger(C17579d.C17585f.UnderlinePageIndicator_fadeLength, integer2));
        Drawable drawable = obtainStyledAttributes.getDrawable(C17579d.C17585f.UnderlinePageIndicator_android_background);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f62299k = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f62294f;
        if (viewPager == null || (count = viewPager.getAdapter().getCount()) == 0) {
            return;
        }
        if (this.f62297i >= count) {
            setCurrentItem(count - 1);
            return;
        }
        int paddingLeft = getPaddingLeft();
        float width = ((getWidth() - paddingLeft) - getPaddingRight()) / (count * 1.0f);
        float f = paddingLeft + ((this.f62297i + this.f62298j) * width);
        canvas.drawRect(f, getPaddingTop(), f + width, getHeight() - getPaddingBottom(), this.f62289a);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        this.f62296h = i;
        ViewPager.AbstractC2936e abstractC2936e = this.f62295g;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        this.f62297i = i;
        this.f62298j = f;
        if (this.f62290b) {
            if (i2 > 0) {
                removeCallbacks(this.f62303o);
                this.f62289a.setAlpha(255);
            } else if (this.f62296h != 1) {
                postDelayed(this.f62303o, this.f62291c);
            }
        }
        invalidate();
        ViewPager.AbstractC2936e abstractC2936e = this.f62295g;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        if (this.f62296h == 0) {
            this.f62297i = i;
            this.f62298j = BitmapDescriptorFactory.HUE_RED;
            invalidate();
            this.f62303o.run();
        }
        ViewPager.AbstractC2936e abstractC2936e = this.f62295g;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f62297i = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.f62297i;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f62294f;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f62301m = C0913i.m44180b(motionEvent, 0);
            this.f62300l = motionEvent.getX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float m44179c = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62301m));
                float f = m44179c - this.f62300l;
                if (!this.f62302n && Math.abs(f) > this.f62299k) {
                    this.f62302n = true;
                }
                if (!this.f62302n) {
                    return true;
                }
                this.f62300l = m44179c;
                if (!this.f62294f.isFakeDragging() && !this.f62294f.beginFakeDrag()) {
                    return true;
                }
                this.f62294f.fakeDragBy(f);
                return true;
            } else if (action != 3) {
                if (action == 5) {
                    int m44183a = C0913i.m44183a(motionEvent);
                    this.f62300l = C0913i.m44179c(motionEvent, m44183a);
                    this.f62301m = C0913i.m44180b(motionEvent, m44183a);
                    return true;
                } else if (action != 6) {
                    return true;
                } else {
                    int m44183a2 = C0913i.m44183a(motionEvent);
                    if (C0913i.m44180b(motionEvent, m44183a2) == this.f62301m) {
                        if (m44183a2 == 0) {
                            i = 1;
                        }
                        this.f62301m = C0913i.m44180b(motionEvent, i);
                    }
                    this.f62300l = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62301m));
                    return true;
                }
            }
        }
        if (!this.f62302n) {
            int count = this.f62294f.getAdapter().getCount();
            float width = getWidth();
            float f2 = width / 2.0f;
            float f3 = width / 6.0f;
            if (this.f62297i > 0 && motionEvent.getX() < f2 - f3) {
                if (action == 3) {
                    return true;
                }
                this.f62294f.setCurrentItem(this.f62297i - 1);
                return true;
            } else if (this.f62297i < count - 1 && motionEvent.getX() > f2 + f3) {
                if (action == 3) {
                    return true;
                }
                this.f62294f.setCurrentItem(this.f62297i + 1);
                return true;
            }
        }
        this.f62302n = false;
        this.f62301m = -1;
        if (!this.f62294f.isFakeDragging()) {
            return true;
        }
        this.f62294f.endFakeDrag();
        return true;
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62294f;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f62297i = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFadeDelay(int i) {
        this.f62291c = i;
    }

    public void setFadeLength(int i) {
        this.f62292d = i;
        this.f62293e = 255 / (i / 30);
    }

    public void setFades(boolean z) {
        if (z != this.f62290b) {
            this.f62290b = z;
            if (z) {
                post(this.f62303o);
                return;
            }
            removeCallbacks(this.f62303o);
            this.f62289a.setAlpha(255);
            invalidate();
        }
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62295g = abstractC2936e;
    }

    public void setSelectedColor(int i) {
        this.f62289a.setColor(i);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62294f;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62294f = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
        post(new Runnable() { // from class: com.viewpagerindicator.UnderlinePageIndicator.2
            @Override // java.lang.Runnable
            public final void run() {
                if (UnderlinePageIndicator.this.f62290b) {
                    UnderlinePageIndicator underlinePageIndicator = UnderlinePageIndicator.this;
                    underlinePageIndicator.post(underlinePageIndicator.f62303o);
                }
            }
        });
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
