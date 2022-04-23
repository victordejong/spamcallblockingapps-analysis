package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
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
import java.util.ArrayList;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator.class */
public class TitlePageIndicator extends View implements com.viewpagerindicator.c {
    private c A;

    /* renamed from: a  reason: collision with root package name */
    private ViewPager f35924a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager.e f35925b;

    /* renamed from: c  reason: collision with root package name */
    private int f35926c;

    /* renamed from: d  reason: collision with root package name */
    private float f35927d;
    private int e;
    private final Paint f;
    private boolean g;
    private int h;
    private int i;
    private Path j;
    private final Rect k;
    private final Paint l;
    private a m;
    private b n;
    private final Paint o;
    private float p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;
    private float v;
    private int w;
    private float x;
    private int y;
    private boolean z;

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35928a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f35928a = iArr;
            try {
                iArr[a.Triangle.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35928a[a.Underline.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.viewpagerindicator.TitlePageIndicator.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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

        /* synthetic */ SavedState(Parcel parcel, AnonymousClass1 r5) {
            this(parcel);
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

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$a.class */
    public enum a {
        None(0),
        Triangle(1),
        Underline(2);
        
        public final int value;

        a(int i) {
            this.value = i;
        }

        public static a fromValue(int i) {
            a[] values;
            for (a aVar : values()) {
                if (aVar.value == i) {
                    return aVar;
                }
            }
            return null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$b.class */
    public enum b {
        Bottom(0),
        Top(1);
        
        public final int value;

        b(int i) {
            this.value = i;
        }

        public static b fromValue(int i) {
            b[] values;
            for (b bVar : values()) {
                if (bVar.value == i) {
                    return bVar;
                }
            }
            return null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$c.class */
    public interface c {
    }

    public TitlePageIndicator(Context context) {
        this(context, null);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.vpiTitlePageIndicatorStyle);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f35926c = -1;
        Paint paint = new Paint();
        this.f = paint;
        this.j = new Path();
        this.k = new Rect();
        Paint paint2 = new Paint();
        this.l = paint2;
        Paint paint3 = new Paint();
        this.o = paint3;
        this.x = -1.0f;
        this.y = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(d.c.default_title_indicator_footer_color);
            float dimension = resources.getDimension(d.C0570d.default_title_indicator_footer_line_height);
            int integer = resources.getInteger(d.e.default_title_indicator_footer_indicator_style);
            float dimension2 = resources.getDimension(d.C0570d.default_title_indicator_footer_indicator_height);
            float dimension3 = resources.getDimension(d.C0570d.default_title_indicator_footer_indicator_underline_padding);
            float dimension4 = resources.getDimension(d.C0570d.default_title_indicator_footer_padding);
            int integer2 = resources.getInteger(d.e.default_title_indicator_line_position);
            int color2 = resources.getColor(d.c.default_title_indicator_selected_color);
            boolean z = resources.getBoolean(d.b.default_title_indicator_selected_bold);
            int color3 = resources.getColor(d.c.default_title_indicator_text_color);
            float dimension5 = resources.getDimension(d.C0570d.default_title_indicator_text_size);
            float dimension6 = resources.getDimension(d.C0570d.default_title_indicator_title_padding);
            float dimension7 = resources.getDimension(d.C0570d.default_title_indicator_clip_padding);
            float dimension8 = resources.getDimension(d.C0570d.default_title_indicator_top_padding);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f.TitlePageIndicator, i, 0);
            this.v = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_footerLineHeight, dimension);
            this.m = a.fromValue(obtainStyledAttributes.getInteger(d.f.TitlePageIndicator_footerIndicatorStyle, integer));
            this.p = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_footerIndicatorHeight, dimension2);
            this.q = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_footerIndicatorUnderlinePadding, dimension3);
            this.r = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_footerPadding, dimension4);
            this.n = b.fromValue(obtainStyledAttributes.getInteger(d.f.TitlePageIndicator_linePosition, integer2));
            this.t = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_topPadding, dimension8);
            this.s = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_titlePadding, dimension6);
            this.u = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_clipPadding, dimension7);
            this.i = obtainStyledAttributes.getColor(d.f.TitlePageIndicator_selectedColor, color2);
            this.h = obtainStyledAttributes.getColor(d.f.TitlePageIndicator_android_textColor, color3);
            this.g = obtainStyledAttributes.getBoolean(d.f.TitlePageIndicator_selectedBold, z);
            float dimension9 = obtainStyledAttributes.getDimension(d.f.TitlePageIndicator_android_textSize, dimension5);
            int color4 = obtainStyledAttributes.getColor(d.f.TitlePageIndicator_footerColor, color);
            paint.setTextSize(dimension9);
            paint.setAntiAlias(true);
            paint2.setStyle(Paint.Style.FILL_AND_STROKE);
            paint2.setStrokeWidth(this.v);
            paint2.setColor(color4);
            paint3.setStyle(Paint.Style.FILL_AND_STROKE);
            paint3.setColor(color4);
            Drawable drawable = obtainStyledAttributes.getDrawable(d.f.TitlePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.w = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    private CharSequence a(int i) {
        CharSequence pageTitle = this.f35924a.getAdapter().getPageTitle(i);
        CharSequence charSequence = pageTitle;
        if (pageTitle == null) {
            charSequence = "";
        }
        return charSequence;
    }

    private void a(Rect rect, float f, int i) {
        rect.right = (int) (i - this.u);
        rect.left = (int) (rect.right - f);
    }

    private void b(Rect rect, float f, int i) {
        rect.left = (int) (i + this.u);
        rect.right = (int) (this.u + f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int i;
        ViewPager viewPager;
        super.onDraw(canvas);
        ViewPager viewPager2 = this.f35924a;
        if (viewPager2 != null && (count = viewPager2.getAdapter().getCount()) != 0) {
            if (this.f35926c == -1 && (viewPager = this.f35924a) != null) {
                this.f35926c = viewPager.getCurrentItem();
            }
            Paint paint = this.f;
            ArrayList arrayList = new ArrayList();
            int count2 = this.f35924a.getAdapter().getCount();
            int width = getWidth();
            int i2 = width / 2;
            for (int i3 = 0; i3 < count2; i3++) {
                Rect rect = new Rect();
                CharSequence a2 = a(i3);
                rect.right = (int) paint.measureText(a2, 0, a2.length());
                rect.bottom = (int) (paint.descent() - paint.ascent());
                int i4 = rect.right - rect.left;
                int i5 = rect.bottom;
                int i6 = rect.top;
                rect.left = (int) ((i2 - (i4 / 2.0f)) + (((i3 - this.f35926c) - this.f35927d) * width));
                rect.right = rect.left + i4;
                rect.top = 0;
                rect.bottom = i5 - i6;
                arrayList.add(rect);
            }
            int size = arrayList.size();
            if (this.f35926c >= size) {
                setCurrentItem(size - 1);
                return;
            }
            float width2 = getWidth() / 2.0f;
            int left = getLeft();
            float f = left + this.u;
            int width3 = getWidth();
            int i7 = getHeight();
            int i8 = left + width3;
            float f2 = i8 - this.u;
            int i9 = this.f35926c;
            float f3 = this.f35927d;
            if (f3 <= 0.5d) {
                i = i9;
            } else {
                i = i9 + 1;
                f3 = 1.0f - f3;
            }
            boolean z = f3 <= 0.25f;
            boolean z2 = f3 <= 0.05f;
            float f4 = (0.25f - f3) / 0.25f;
            Rect rect2 = (Rect) arrayList.get(i9);
            float f5 = rect2.right - rect2.left;
            if (rect2.left < f) {
                b(rect2, f5, left);
            }
            if (rect2.right > f2) {
                a(rect2, f5, i8);
            }
            int i10 = this.f35926c;
            int i11 = width3;
            float f6 = width2;
            if (i10 > 0) {
                while (true) {
                    i10--;
                    i11 = width3;
                    f6 = width2;
                    if (i10 < 0) {
                        break;
                    }
                    Rect rect3 = (Rect) arrayList.get(i10);
                    if (rect3.left < f) {
                        int i12 = rect3.right - rect3.left;
                        b(rect3, i12, left);
                        Rect rect4 = (Rect) arrayList.get(i10 + 1);
                        if (rect3.right + this.s > rect4.left) {
                            rect3.left = (int) ((rect4.left - i12) - this.s);
                            rect3.right = rect3.left + i12;
                        }
                    }
                }
            }
            int i13 = this.f35926c;
            if (i13 < count - 1) {
                while (true) {
                    i13++;
                    if (i13 >= count) {
                        break;
                    }
                    Rect rect5 = (Rect) arrayList.get(i13);
                    if (rect5.right > f2) {
                        int i14 = rect5.right - rect5.left;
                        a(rect5, i14, i8);
                        Rect rect6 = (Rect) arrayList.get(i13 - 1);
                        if (rect5.left - this.s < rect6.right) {
                            rect5.left = (int) (rect6.right + this.s);
                            rect5.right = rect5.left + i14;
                        }
                    }
                }
            }
            int i15 = this.h >>> 24;
            int i16 = 0;
            while (i16 < count) {
                Rect rect7 = (Rect) arrayList.get(i16);
                if ((rect7.left > left && rect7.left < i8) || (rect7.right > left && rect7.right < i8)) {
                    boolean z3 = i16 == i;
                    CharSequence a3 = a(i16);
                    this.f.setFakeBoldText(z3 && z2 && this.g);
                    this.f.setColor(this.h);
                    if (z3 && z) {
                        this.f.setAlpha(i15 - ((int) (i15 * f4)));
                    }
                    if (i16 < size - 1) {
                        Rect rect8 = (Rect) arrayList.get(i16 + 1);
                        if (rect7.right + this.s > rect8.left) {
                            int i17 = rect7.right - rect7.left;
                            rect7.left = (int) ((rect8.left - i17) - this.s);
                            rect7.right = rect7.left + i17;
                        }
                    }
                    canvas.drawText(a3, 0, a3.length(), rect7.left, rect7.bottom + this.t, this.f);
                    if (z3 && z) {
                        this.f.setColor(this.i);
                        this.f.setAlpha((int) ((this.i >>> 24) * f4));
                        canvas.drawText(a3, 0, a3.length(), rect7.left, rect7.bottom + this.t, this.f);
                    }
                }
                i16++;
            }
            float f7 = this.v;
            float f8 = this.p;
            if (this.n == b.Top) {
                f7 = -f7;
                f8 = -f8;
                i7 = 0;
            }
            this.j.reset();
            float f9 = i7;
            float f10 = f9 - (f7 / 2.0f);
            this.j.moveTo(BitmapDescriptorFactory.HUE_RED, f10);
            this.j.lineTo(i11, f10);
            this.j.close();
            canvas.drawPath(this.j, this.l);
            float f11 = f9 - f7;
            int i18 = AnonymousClass1.f35928a[this.m.ordinal()];
            if (i18 == 1) {
                this.j.reset();
                this.j.moveTo(f6, f11 - f8);
                this.j.lineTo(f6 + f8, f11);
                this.j.lineTo(f6 - f8, f11);
                this.j.close();
                canvas.drawPath(this.j, this.o);
            } else if (i18 == 2 && z && i < size) {
                Rect rect9 = (Rect) arrayList.get(i);
                float f12 = rect9.right + this.q;
                float f13 = rect9.left - this.q;
                float f14 = f11 - f8;
                this.j.reset();
                this.j.moveTo(f13, f11);
                this.j.lineTo(f12, f11);
                this.j.lineTo(f12, f14);
                this.j.lineTo(f13, f14);
                this.j.close();
                this.o.setAlpha((int) (f4 * 255.0f));
                canvas.drawPath(this.j, this.o);
                this.o.setAlpha(255);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            f = View.MeasureSpec.getSize(i2);
        } else {
            this.k.setEmpty();
            this.k.bottom = (int) (this.f.descent() - this.f.ascent());
            float f2 = (this.k.bottom - this.k.top) + this.v + this.r + this.t;
            f = f2;
            if (this.m != a.None) {
                f = f2 + this.p;
            }
        }
        setMeasuredDimension(size, (int) f);
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        this.e = i;
        ViewPager.e eVar = this.f35925b;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        this.f35926c = i;
        this.f35927d = f;
        invalidate();
        ViewPager.e eVar = this.f35925b;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        if (this.e == 0) {
            this.f35926c = i;
            invalidate();
        }
        ViewPager.e eVar = this.f35925b;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f35926c = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.f35926c;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f35924a;
        int i2 = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float c2 = i.c(motionEvent, i.a(motionEvent, this.y));
                    float f = c2 - this.x;
                    if (!this.z && Math.abs(f) > this.w) {
                        this.z = true;
                    }
                    if (!this.z) {
                        return true;
                    }
                    this.x = c2;
                    if (!this.f35924a.isFakeDragging() && !this.f35924a.beginFakeDrag()) {
                        return true;
                    }
                    this.f35924a.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int a2 = i.a(motionEvent);
                        this.x = i.c(motionEvent, a2);
                        this.y = i.b(motionEvent, a2);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int a3 = i.a(motionEvent);
                        if (i.b(motionEvent, a3) == this.y) {
                            if (a3 == 0) {
                                i2 = 1;
                            }
                            this.y = i.b(motionEvent, i2);
                        }
                        this.x = i.c(motionEvent, i.a(motionEvent, this.y));
                        return true;
                    }
                }
            }
            if (!this.z) {
                int count = this.f35924a.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                float x = motionEvent.getX();
                if (x < f2 - f3) {
                    int i3 = this.f35926c;
                    if (i3 > 0) {
                        if (action == 3) {
                            return true;
                        }
                        this.f35924a.setCurrentItem(i3 - 1);
                        return true;
                    }
                } else if (x > f2 + f3 && (i = this.f35926c) < count - 1) {
                    if (action == 3) {
                        return true;
                    }
                    this.f35924a.setCurrentItem(i + 1);
                    return true;
                }
            }
            this.z = false;
            this.y = -1;
            if (!this.f35924a.isFakeDragging()) {
                return true;
            }
            this.f35924a.endFakeDrag();
            return true;
        }
        this.y = i.b(motionEvent, 0);
        this.x = motionEvent.getX();
        return true;
    }

    public void setClipPadding(float f) {
        this.u = f;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f35924a;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f35926c = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFooterColor(int i) {
        this.l.setColor(i);
        this.o.setColor(i);
        invalidate();
    }

    public void setFooterIndicatorHeight(float f) {
        this.p = f;
        invalidate();
    }

    public void setFooterIndicatorPadding(float f) {
        this.r = f;
        invalidate();
    }

    public void setFooterIndicatorStyle(a aVar) {
        this.m = aVar;
        invalidate();
    }

    public void setFooterLineHeight(float f) {
        this.v = f;
        this.l.setStrokeWidth(f);
        invalidate();
    }

    public void setLinePosition(b bVar) {
        this.n = bVar;
        invalidate();
    }

    public void setOnCenterItemClickListener(c cVar) {
        this.A = cVar;
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.f35925b = eVar;
    }

    public void setSelectedBold(boolean z) {
        this.g = z;
        invalidate();
    }

    public void setSelectedColor(int i) {
        this.i = i;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f.setColor(i);
        this.h = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f.setTextSize(f);
        invalidate();
    }

    public void setTitlePadding(float f) {
        this.s = f;
        invalidate();
    }

    public void setTopPadding(float f) {
        this.t = f;
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.f.setTypeface(typeface);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f35924a;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.f35924a = viewPager;
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
