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
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator.class */
public class UnderlinePageIndicator extends View implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f35929a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f35930b;

    /* renamed from: c  reason: collision with root package name */
    private int f35931c;

    /* renamed from: d  reason: collision with root package name */
    private int f35932d;
    private int e;
    private ViewPager f;
    private ViewPager.e g;
    private int h;
    private int i;
    private float j;
    private int k;
    private float l;
    private int m;
    private boolean n;
    private final Runnable o;

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
        this(context, attributeSet, d.a.vpiUnderlinePageIndicatorStyle);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f35929a = new Paint(1);
        this.l = -1.0f;
        this.m = -1;
        this.o = new Runnable() { // from class: com.viewpagerindicator.UnderlinePageIndicator.1
            @Override // java.lang.Runnable
            public final void run() {
                if (UnderlinePageIndicator.this.f35930b) {
                    int max = Math.max(UnderlinePageIndicator.this.f35929a.getAlpha() - UnderlinePageIndicator.this.e, 0);
                    UnderlinePageIndicator.this.f35929a.setAlpha(max);
                    UnderlinePageIndicator.this.invalidate();
                    if (max > 0) {
                        UnderlinePageIndicator.this.postDelayed(this, 30L);
                    }
                }
            }
        };
        if (!isInEditMode()) {
            Resources resources = getResources();
            boolean z = resources.getBoolean(d.b.default_underline_indicator_fades);
            int integer = resources.getInteger(d.e.default_underline_indicator_fade_delay);
            int integer2 = resources.getInteger(d.e.default_underline_indicator_fade_length);
            int color = resources.getColor(d.c.default_underline_indicator_selected_color);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f.UnderlinePageIndicator, i, 0);
            setFades(obtainStyledAttributes.getBoolean(d.f.UnderlinePageIndicator_fades, z));
            setSelectedColor(obtainStyledAttributes.getColor(d.f.UnderlinePageIndicator_selectedColor, color));
            setFadeDelay(obtainStyledAttributes.getInteger(d.f.UnderlinePageIndicator_fadeDelay, integer));
            setFadeLength(obtainStyledAttributes.getInteger(d.f.UnderlinePageIndicator_fadeLength, integer2));
            Drawable drawable = obtainStyledAttributes.getDrawable(d.f.UnderlinePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.k = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f;
        if (viewPager != null && (count = viewPager.getAdapter().getCount()) != 0) {
            if (this.i >= count) {
                setCurrentItem(count - 1);
                return;
            }
            int paddingLeft = getPaddingLeft();
            float width = ((getWidth() - paddingLeft) - getPaddingRight()) / (count * 1.0f);
            float f = paddingLeft + ((this.i + this.j) * width);
            canvas.drawRect(f, getPaddingTop(), f + width, getHeight() - getPaddingBottom(), this.f35929a);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        this.h = i;
        ViewPager.e eVar = this.g;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        this.i = i;
        this.j = f;
        if (this.f35930b) {
            if (i2 > 0) {
                removeCallbacks(this.o);
                this.f35929a.setAlpha(255);
            } else if (this.h != 1) {
                postDelayed(this.o, this.f35931c);
            }
        }
        invalidate();
        ViewPager.e eVar = this.g;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        if (this.h == 0) {
            this.i = i;
            this.j = BitmapDescriptorFactory.HUE_RED;
            invalidate();
            this.o.run();
        }
        ViewPager.e eVar = this.g;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.i = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.i;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float c2 = i.c(motionEvent, i.a(motionEvent, this.m));
                    float f = c2 - this.l;
                    if (!this.n && Math.abs(f) > this.k) {
                        this.n = true;
                    }
                    if (!this.n) {
                        return true;
                    }
                    this.l = c2;
                    if (!this.f.isFakeDragging() && !this.f.beginFakeDrag()) {
                        return true;
                    }
                    this.f.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int a2 = i.a(motionEvent);
                        this.l = i.c(motionEvent, a2);
                        this.m = i.b(motionEvent, a2);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int a3 = i.a(motionEvent);
                        if (i.b(motionEvent, a3) == this.m) {
                            if (a3 == 0) {
                                i = 1;
                            }
                            this.m = i.b(motionEvent, i);
                        }
                        this.l = i.c(motionEvent, i.a(motionEvent, this.m));
                        return true;
                    }
                }
            }
            if (!this.n) {
                int count = this.f.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.i <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.i < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f.setCurrentItem(this.i + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.f.setCurrentItem(this.i - 1);
                    return true;
                }
            }
            this.n = false;
            this.m = -1;
            if (!this.f.isFakeDragging()) {
                return true;
            }
            this.f.endFakeDrag();
            return true;
        }
        this.m = i.b(motionEvent, 0);
        this.l = motionEvent.getX();
        return true;
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.i = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFadeDelay(int i) {
        this.f35931c = i;
    }

    public void setFadeLength(int i) {
        this.f35932d = i;
        this.e = 255 / (i / 30);
    }

    public void setFades(boolean z) {
        if (z != this.f35930b) {
            this.f35930b = z;
            if (z) {
                post(this.o);
                return;
            }
            removeCallbacks(this.o);
            this.f35929a.setAlpha(255);
            invalidate();
        }
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.g = eVar;
    }

    public void setSelectedColor(int i) {
        this.f35929a.setColor(i);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.f = viewPager;
                viewPager.setOnPageChangeListener(this);
                invalidate();
                post(new Runnable() { // from class: com.viewpagerindicator.UnderlinePageIndicator.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (UnderlinePageIndicator.this.f35930b) {
                            UnderlinePageIndicator underlinePageIndicator = UnderlinePageIndicator.this;
                            underlinePageIndicator.post(underlinePageIndicator.o);
                        }
                    }
                });
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
