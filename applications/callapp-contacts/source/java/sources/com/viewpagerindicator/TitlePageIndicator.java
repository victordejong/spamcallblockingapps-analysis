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
import androidx.core.view.C0913i;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.viewpagerindicator.C17579d;
import java.util.ArrayList;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator.class */
public class TitlePageIndicator extends View implements AbstractC17578c {

    /* renamed from: A */
    private AbstractC17572c f62261A;

    /* renamed from: a */
    private ViewPager f62262a;

    /* renamed from: b */
    private ViewPager.AbstractC2936e f62263b;

    /* renamed from: c */
    private int f62264c;

    /* renamed from: d */
    private float f62265d;

    /* renamed from: e */
    private int f62266e;

    /* renamed from: f */
    private final Paint f62267f;

    /* renamed from: g */
    private boolean f62268g;

    /* renamed from: h */
    private int f62269h;

    /* renamed from: i */
    private int f62270i;

    /* renamed from: j */
    private Path f62271j;

    /* renamed from: k */
    private final Rect f62272k;

    /* renamed from: l */
    private final Paint f62273l;

    /* renamed from: m */
    private EnumC17570a f62274m;

    /* renamed from: n */
    private EnumC17571b f62275n;

    /* renamed from: o */
    private final Paint f62276o;

    /* renamed from: p */
    private float f62277p;

    /* renamed from: q */
    private float f62278q;

    /* renamed from: r */
    private float f62279r;

    /* renamed from: s */
    private float f62280s;

    /* renamed from: t */
    private float f62281t;

    /* renamed from: u */
    private float f62282u;

    /* renamed from: v */
    private float f62283v;

    /* renamed from: w */
    private int f62284w;

    /* renamed from: x */
    private float f62285x;

    /* renamed from: y */
    private int f62286y;

    /* renamed from: z */
    private boolean f62287z;

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$1 */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$1.class */
    static final /* synthetic */ class C175681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f62288a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC17570a.values().length];
            f62288a = iArr;
            try {
                iArr[EnumC17570a.Triangle.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f62288a[EnumC17570a.Underline.ordinal()] = 2;
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

        /* synthetic */ SavedState(Parcel parcel, C175681 c175681) {
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

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$a */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$a.class */
    public enum EnumC17570a {
        None(0),
        Triangle(1),
        Underline(2);
        
        public final int value;

        EnumC17570a(int i) {
            this.value = i;
        }

        public static EnumC17570a fromValue(int i) {
            EnumC17570a[] values;
            for (EnumC17570a enumC17570a : values()) {
                if (enumC17570a.value == i) {
                    return enumC17570a;
                }
            }
            return null;
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$b */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$b.class */
    public enum EnumC17571b {
        Bottom(0),
        Top(1);
        
        public final int value;

        EnumC17571b(int i) {
            this.value = i;
        }

        public static EnumC17571b fromValue(int i) {
            EnumC17571b[] values;
            for (EnumC17571b enumC17571b : values()) {
                if (enumC17571b.value == i) {
                    return enumC17571b;
                }
            }
            return null;
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$c */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$c.class */
    public interface AbstractC17572c {
    }

    public TitlePageIndicator(Context context) {
        this(context, null);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C17579d.C17580a.vpiTitlePageIndicatorStyle);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f62264c = -1;
        Paint paint = new Paint();
        this.f62267f = paint;
        this.f62271j = new Path();
        this.f62272k = new Rect();
        Paint paint2 = new Paint();
        this.f62273l = paint2;
        Paint paint3 = new Paint();
        this.f62276o = paint3;
        this.f62285x = -1.0f;
        this.f62286y = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(C17579d.C17582c.default_title_indicator_footer_color);
        float dimension = resources.getDimension(C17579d.C17583d.default_title_indicator_footer_line_height);
        int integer = resources.getInteger(C17579d.C17584e.default_title_indicator_footer_indicator_style);
        float dimension2 = resources.getDimension(C17579d.C17583d.default_title_indicator_footer_indicator_height);
        float dimension3 = resources.getDimension(C17579d.C17583d.default_title_indicator_footer_indicator_underline_padding);
        float dimension4 = resources.getDimension(C17579d.C17583d.default_title_indicator_footer_padding);
        int integer2 = resources.getInteger(C17579d.C17584e.default_title_indicator_line_position);
        int color2 = resources.getColor(C17579d.C17582c.default_title_indicator_selected_color);
        boolean z = resources.getBoolean(C17579d.C17581b.default_title_indicator_selected_bold);
        int color3 = resources.getColor(C17579d.C17582c.default_title_indicator_text_color);
        float dimension5 = resources.getDimension(C17579d.C17583d.default_title_indicator_text_size);
        float dimension6 = resources.getDimension(C17579d.C17583d.default_title_indicator_title_padding);
        float dimension7 = resources.getDimension(C17579d.C17583d.default_title_indicator_clip_padding);
        float dimension8 = resources.getDimension(C17579d.C17583d.default_title_indicator_top_padding);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17579d.C17585f.TitlePageIndicator, i, 0);
        this.f62283v = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_footerLineHeight, dimension);
        this.f62274m = EnumC17570a.fromValue(obtainStyledAttributes.getInteger(C17579d.C17585f.TitlePageIndicator_footerIndicatorStyle, integer));
        this.f62277p = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_footerIndicatorHeight, dimension2);
        this.f62278q = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_footerIndicatorUnderlinePadding, dimension3);
        this.f62279r = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_footerPadding, dimension4);
        this.f62275n = EnumC17571b.fromValue(obtainStyledAttributes.getInteger(C17579d.C17585f.TitlePageIndicator_linePosition, integer2));
        this.f62281t = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_topPadding, dimension8);
        this.f62280s = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_titlePadding, dimension6);
        this.f62282u = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_clipPadding, dimension7);
        this.f62270i = obtainStyledAttributes.getColor(C17579d.C17585f.TitlePageIndicator_selectedColor, color2);
        this.f62269h = obtainStyledAttributes.getColor(C17579d.C17585f.TitlePageIndicator_android_textColor, color3);
        this.f62268g = obtainStyledAttributes.getBoolean(C17579d.C17585f.TitlePageIndicator_selectedBold, z);
        float dimension9 = obtainStyledAttributes.getDimension(C17579d.C17585f.TitlePageIndicator_android_textSize, dimension5);
        int color4 = obtainStyledAttributes.getColor(C17579d.C17585f.TitlePageIndicator_footerColor, color);
        paint.setTextSize(dimension9);
        paint.setAntiAlias(true);
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        paint2.setStrokeWidth(this.f62283v);
        paint2.setColor(color4);
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        paint3.setColor(color4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C17579d.C17585f.TitlePageIndicator_android_background);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f62284w = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    /* renamed from: a */
    private CharSequence m4914a(int i) {
        CharSequence pageTitle = this.f62262a.getAdapter().getPageTitle(i);
        CharSequence charSequence = pageTitle;
        if (pageTitle == null) {
            charSequence = "";
        }
        return charSequence;
    }

    /* renamed from: a */
    private void m4913a(Rect rect, float f, int i) {
        rect.right = (int) (i - this.f62282u);
        rect.left = (int) (rect.right - f);
    }

    /* renamed from: b */
    private void m4912b(Rect rect, float f, int i) {
        rect.left = (int) (i + this.f62282u);
        rect.right = (int) (this.f62282u + f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int i;
        int i2;
        ViewPager viewPager;
        super.onDraw(canvas);
        ViewPager viewPager2 = this.f62262a;
        if (viewPager2 == null || (count = viewPager2.getAdapter().getCount()) == 0) {
            return;
        }
        if (this.f62264c == -1 && (viewPager = this.f62262a) != null) {
            this.f62264c = viewPager.getCurrentItem();
        }
        Paint paint = this.f62267f;
        ArrayList arrayList = new ArrayList();
        int count2 = this.f62262a.getAdapter().getCount();
        int width = getWidth();
        int i3 = width / 2;
        for (int i4 = 0; i4 < count2; i4++) {
            Rect rect = new Rect();
            CharSequence m4914a = m4914a(i4);
            rect.right = (int) paint.measureText(m4914a, 0, m4914a.length());
            rect.bottom = (int) (paint.descent() - paint.ascent());
            int i5 = rect.right - rect.left;
            int i6 = rect.bottom;
            int i7 = rect.top;
            rect.left = (int) ((i3 - (i5 / 2.0f)) + (((i4 - this.f62264c) - this.f62265d) * width));
            rect.right = rect.left + i5;
            rect.top = 0;
            rect.bottom = i6 - i7;
            arrayList.add(rect);
        }
        int size = arrayList.size();
        if (this.f62264c >= size) {
            setCurrentItem(size - 1);
            return;
        }
        float width2 = getWidth() / 2.0f;
        int left = getLeft();
        float f = left + this.f62282u;
        int width3 = getWidth();
        int height = getHeight();
        int i8 = left + width3;
        float f2 = i8 - this.f62282u;
        int i9 = this.f62264c;
        float f3 = this.f62265d;
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
            m4912b(rect2, f5, left);
        }
        if (rect2.right > f2) {
            m4913a(rect2, f5, i8);
        }
        int i10 = this.f62264c;
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
                    m4912b(rect3, i12, left);
                    Rect rect4 = (Rect) arrayList.get(i10 + 1);
                    if (rect3.right + this.f62280s > rect4.left) {
                        rect3.left = (int) ((rect4.left - i12) - this.f62280s);
                        rect3.right = rect3.left + i12;
                    }
                }
            }
        }
        int i13 = i11;
        int i14 = this.f62264c;
        if (i14 < count - 1) {
            while (true) {
                i14++;
                if (i14 >= count) {
                    break;
                }
                Rect rect5 = (Rect) arrayList.get(i14);
                if (rect5.right > f2) {
                    int i15 = rect5.right - rect5.left;
                    m4913a(rect5, i15, i8);
                    Rect rect6 = (Rect) arrayList.get(i14 - 1);
                    if (rect5.left - this.f62280s < rect6.right) {
                        rect5.left = (int) (rect6.right + this.f62280s);
                        rect5.right = rect5.left + i15;
                    }
                }
            }
        }
        int i16 = this.f62269h >>> 24;
        int i17 = 0;
        while (i17 < count) {
            Rect rect7 = (Rect) arrayList.get(i17);
            if ((rect7.left > left && rect7.left < i8) || (rect7.right > left && rect7.right < i8)) {
                boolean z3 = i17 == i;
                CharSequence m4914a2 = m4914a(i17);
                this.f62267f.setFakeBoldText(z3 && z2 && this.f62268g);
                this.f62267f.setColor(this.f62269h);
                if (z3 && z) {
                    this.f62267f.setAlpha(i16 - ((int) (i16 * f4)));
                }
                if (i17 < size - 1) {
                    Rect rect8 = (Rect) arrayList.get(i17 + 1);
                    if (rect7.right + this.f62280s > rect8.left) {
                        int i18 = rect7.right - rect7.left;
                        rect7.left = (int) ((rect8.left - i18) - this.f62280s);
                        rect7.right = rect7.left + i18;
                    }
                }
                canvas.drawText(m4914a2, 0, m4914a2.length(), rect7.left, rect7.bottom + this.f62281t, this.f62267f);
                if (z3 && z) {
                    this.f62267f.setColor(this.f62270i);
                    this.f62267f.setAlpha((int) ((this.f62270i >>> 24) * f4));
                    canvas.drawText(m4914a2, 0, m4914a2.length(), rect7.left, rect7.bottom + this.f62281t, this.f62267f);
                }
            }
            i17++;
        }
        float f7 = this.f62283v;
        float f8 = this.f62277p;
        if (this.f62275n == EnumC17571b.Top) {
            f7 = -f7;
            f8 = -f8;
            i2 = 0;
        } else {
            i2 = height;
        }
        this.f62271j.reset();
        float f9 = i2;
        float f10 = f9 - (f7 / 2.0f);
        this.f62271j.moveTo(BitmapDescriptorFactory.HUE_RED, f10);
        this.f62271j.lineTo(i13, f10);
        this.f62271j.close();
        canvas.drawPath(this.f62271j, this.f62273l);
        float f11 = f9 - f7;
        int i19 = C175681.f62288a[this.f62274m.ordinal()];
        if (i19 == 1) {
            this.f62271j.reset();
            this.f62271j.moveTo(f6, f11 - f8);
            this.f62271j.lineTo(f6 + f8, f11);
            this.f62271j.lineTo(f6 - f8, f11);
            this.f62271j.close();
            canvas.drawPath(this.f62271j, this.f62276o);
        } else if (i19 == 2 && z && i < size) {
            Rect rect9 = (Rect) arrayList.get(i);
            float f12 = rect9.right + this.f62278q;
            float f13 = rect9.left - this.f62278q;
            float f14 = f11 - f8;
            this.f62271j.reset();
            this.f62271j.moveTo(f13, f11);
            this.f62271j.lineTo(f12, f11);
            this.f62271j.lineTo(f12, f14);
            this.f62271j.lineTo(f13, f14);
            this.f62271j.close();
            this.f62276o.setAlpha((int) (f4 * 255.0f));
            canvas.drawPath(this.f62271j, this.f62276o);
            this.f62276o.setAlpha(255);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            f = View.MeasureSpec.getSize(i2);
        } else {
            this.f62272k.setEmpty();
            this.f62272k.bottom = (int) (this.f62267f.descent() - this.f62267f.ascent());
            float f2 = (this.f62272k.bottom - this.f62272k.top) + this.f62283v + this.f62279r + this.f62281t;
            f = f2;
            if (this.f62274m != EnumC17570a.None) {
                f = f2 + this.f62277p;
            }
        }
        setMeasuredDimension(size, (int) f);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        this.f62266e = i;
        ViewPager.AbstractC2936e abstractC2936e = this.f62263b;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        this.f62264c = i;
        this.f62265d = f;
        invalidate();
        ViewPager.AbstractC2936e abstractC2936e = this.f62263b;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        if (this.f62266e == 0) {
            this.f62264c = i;
            invalidate();
        }
        ViewPager.AbstractC2936e abstractC2936e = this.f62263b;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f62264c = savedState.currentPage;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.f62264c;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f62262a;
        int i2 = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f62286y = C0913i.m44180b(motionEvent, 0);
            this.f62285x = motionEvent.getX();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float m44179c = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62286y));
                float f = m44179c - this.f62285x;
                if (!this.f62287z && Math.abs(f) > this.f62284w) {
                    this.f62287z = true;
                }
                if (!this.f62287z) {
                    return true;
                }
                this.f62285x = m44179c;
                if (!this.f62262a.isFakeDragging() && !this.f62262a.beginFakeDrag()) {
                    return true;
                }
                this.f62262a.fakeDragBy(f);
                return true;
            } else if (action != 3) {
                if (action == 5) {
                    int m44183a = C0913i.m44183a(motionEvent);
                    this.f62285x = C0913i.m44179c(motionEvent, m44183a);
                    this.f62286y = C0913i.m44180b(motionEvent, m44183a);
                    return true;
                } else if (action != 6) {
                    return true;
                } else {
                    int m44183a2 = C0913i.m44183a(motionEvent);
                    if (C0913i.m44180b(motionEvent, m44183a2) == this.f62286y) {
                        if (m44183a2 == 0) {
                            i2 = 1;
                        }
                        this.f62286y = C0913i.m44180b(motionEvent, i2);
                    }
                    this.f62285x = C0913i.m44179c(motionEvent, C0913i.m44182a(motionEvent, this.f62286y));
                    return true;
                }
            }
        }
        if (!this.f62287z) {
            int count = this.f62262a.getAdapter().getCount();
            float width = getWidth();
            float f2 = width / 2.0f;
            float f3 = width / 6.0f;
            float x = motionEvent.getX();
            if (x < f2 - f3) {
                int i3 = this.f62264c;
                if (i3 > 0) {
                    if (action == 3) {
                        return true;
                    }
                    this.f62262a.setCurrentItem(i3 - 1);
                    return true;
                }
            } else if (x > f2 + f3 && (i = this.f62264c) < count - 1) {
                if (action == 3) {
                    return true;
                }
                this.f62262a.setCurrentItem(i + 1);
                return true;
            }
        }
        this.f62287z = false;
        this.f62286y = -1;
        if (!this.f62262a.isFakeDragging()) {
            return true;
        }
        this.f62262a.endFakeDrag();
        return true;
    }

    public void setClipPadding(float f) {
        this.f62282u = f;
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62262a;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f62264c = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setFooterColor(int i) {
        this.f62273l.setColor(i);
        this.f62276o.setColor(i);
        invalidate();
    }

    public void setFooterIndicatorHeight(float f) {
        this.f62277p = f;
        invalidate();
    }

    public void setFooterIndicatorPadding(float f) {
        this.f62279r = f;
        invalidate();
    }

    public void setFooterIndicatorStyle(EnumC17570a enumC17570a) {
        this.f62274m = enumC17570a;
        invalidate();
    }

    public void setFooterLineHeight(float f) {
        this.f62283v = f;
        this.f62273l.setStrokeWidth(f);
        invalidate();
    }

    public void setLinePosition(EnumC17571b enumC17571b) {
        this.f62275n = enumC17571b;
        invalidate();
    }

    public void setOnCenterItemClickListener(AbstractC17572c abstractC17572c) {
        this.f62261A = abstractC17572c;
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62263b = abstractC2936e;
    }

    public void setSelectedBold(boolean z) {
        this.f62268g = z;
        invalidate();
    }

    public void setSelectedColor(int i) {
        this.f62270i = i;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f62267f.setColor(i);
        this.f62269h = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f62267f.setTextSize(f);
        invalidate();
    }

    public void setTitlePadding(float f) {
        this.f62280s = f;
        invalidate();
    }

    public void setTopPadding(float f) {
        this.f62281t = f;
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.f62267f.setTypeface(typeface);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62262a;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62262a = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
