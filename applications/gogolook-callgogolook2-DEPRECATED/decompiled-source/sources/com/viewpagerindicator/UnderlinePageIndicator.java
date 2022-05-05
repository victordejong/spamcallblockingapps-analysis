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
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import p081h.p450p.AbstractC10836c;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator.class */
public class UnderlinePageIndicator extends View implements AbstractC10836c {

    /* renamed from: a */
    public final Paint f10229a;

    /* renamed from: b */
    public boolean f10230b;

    /* renamed from: c */
    public int f10231c;

    /* renamed from: d */
    public int f10232d;

    /* renamed from: e */
    public int f10233e;

    /* renamed from: f */
    public ViewPager f10234f;

    /* renamed from: g */
    public ViewPager.OnPageChangeListener f10235g;

    /* renamed from: h */
    public int f10236h;

    /* renamed from: i */
    public int f10237i;

    /* renamed from: j */
    public float f10238j;

    /* renamed from: k */
    public int f10239k;

    /* renamed from: l */
    public float f10240l;

    /* renamed from: m */
    public int f10241m;

    /* renamed from: n */
    public boolean f10242n;

    /* renamed from: o */
    public final Runnable f10243o;

    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4221a();

        /* renamed from: a */
        public int f10244a;

        /* renamed from: com.viewpagerindicator.UnderlinePageIndicator$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator$SavedState$a.class */
        public static final class C4221a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f10244a = parcel.readInt();
        }

        public /* synthetic */ SavedState(Parcel parcel, RunnableC4222a aVar) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10244a);
        }
    }

    /* renamed from: com.viewpagerindicator.UnderlinePageIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/UnderlinePageIndicator$a.class */
    public class RunnableC4222a implements Runnable {
        public RunnableC4222a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (UnderlinePageIndicator.this.f10230b) {
                int max = Math.max(UnderlinePageIndicator.this.f10229a.getAlpha() - UnderlinePageIndicator.this.f10233e, 0);
                UnderlinePageIndicator.this.f10229a.setAlpha(max);
                UnderlinePageIndicator.this.invalidate();
                if (max > 0) {
                    UnderlinePageIndicator.this.postDelayed(this, 30L);
                }
            }
        }
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.vpiUnderlinePageIndicatorStyle);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10229a = new Paint(1);
        this.f10240l = -1.0f;
        this.f10241m = -1;
        this.f10243o = new RunnableC4222a();
        if (!isInEditMode()) {
            Resources resources = getResources();
            boolean z = resources.getBoolean(R$bool.default_underline_indicator_fades);
            int integer = resources.getInteger(R$integer.default_underline_indicator_fade_delay);
            int integer2 = resources.getInteger(R$integer.default_underline_indicator_fade_length);
            int color = resources.getColor(R$color.default_underline_indicator_selected_color);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.UnderlinePageIndicator, i, 0);
            m29297a(obtainStyledAttributes.getBoolean(R$styleable.UnderlinePageIndicator_fades, z));
            m29292d(obtainStyledAttributes.getColor(R$styleable.UnderlinePageIndicator_selectedColor, color));
            m29296b(obtainStyledAttributes.getInteger(R$styleable.UnderlinePageIndicator_fadeDelay, integer));
            m29294c(obtainStyledAttributes.getInteger(R$styleable.UnderlinePageIndicator_fadeLength, integer2));
            Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.UnderlinePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.f10239k = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    /* renamed from: a */
    public void m29299a(int i) {
        ViewPager viewPager = this.f10234f;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f10237i = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    /* renamed from: a */
    public void m29297a(boolean z) {
        if (z != this.f10230b) {
            this.f10230b = z;
            if (z) {
                post(this.f10243o);
                return;
            }
            removeCallbacks(this.f10243o);
            this.f10229a.setAlpha(255);
            invalidate();
        }
    }

    /* renamed from: b */
    public void m29296b(int i) {
        this.f10231c = i;
    }

    /* renamed from: c */
    public void m29294c(int i) {
        this.f10232d = i;
        this.f10233e = 255 / (this.f10232d / 30);
    }

    /* renamed from: d */
    public void m29292d(int i) {
        this.f10229a.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f10234f;
        if (viewPager != null && (count = viewPager.getAdapter().getCount()) != 0) {
            if (this.f10237i >= count) {
                m29299a(count - 1);
                return;
            }
            int paddingLeft = getPaddingLeft();
            float width = ((getWidth() - paddingLeft) - getPaddingRight()) / (count * 1.0f);
            float f = paddingLeft + ((this.f10237i + this.f10238j) * width);
            canvas.drawRect(f, getPaddingTop(), f + width, getHeight() - getPaddingBottom(), this.f10229a);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.f10236h = i;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10235g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.f10237i = i;
        this.f10238j = f;
        if (this.f10230b) {
            if (i2 > 0) {
                removeCallbacks(this.f10243o);
                this.f10229a.setAlpha(255);
            } else if (this.f10236h != 1) {
                postDelayed(this.f10243o, this.f10231c);
            }
        }
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10235g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.f10236h == 0) {
            this.f10237i = i;
            this.f10238j = 0.0f;
            invalidate();
            this.f10243o.run();
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10235g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f10237i = savedState.f10244a;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10244a = this.f10237i;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f10234f;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10241m));
                    float f = x - this.f10240l;
                    if (!this.f10242n && Math.abs(f) > this.f10239k) {
                        this.f10242n = true;
                    }
                    if (!this.f10242n) {
                        return true;
                    }
                    this.f10240l = x;
                    if (!this.f10234f.isFakeDragging() && !this.f10234f.beginFakeDrag()) {
                        return true;
                    }
                    this.f10234f.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.f10240l = MotionEventCompat.getX(motionEvent, actionIndex);
                        this.f10241m = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.f10241m) {
                            if (actionIndex2 == 0) {
                                i = 1;
                            }
                            this.f10241m = MotionEventCompat.getPointerId(motionEvent, i);
                        }
                        this.f10240l = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10241m));
                        return true;
                    }
                }
            }
            if (!this.f10242n) {
                int count = this.f10234f.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.f10237i <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.f10237i < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f10234f.setCurrentItem(this.f10237i + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.f10234f.setCurrentItem(this.f10237i - 1);
                    return true;
                }
            }
            this.f10242n = false;
            this.f10241m = -1;
            if (!this.f10234f.isFakeDragging()) {
                return true;
            }
            this.f10234f.endFakeDrag();
            return true;
        }
        this.f10241m = MotionEventCompat.getPointerId(motionEvent, 0);
        this.f10240l = motionEvent.getX();
        return true;
    }
}
