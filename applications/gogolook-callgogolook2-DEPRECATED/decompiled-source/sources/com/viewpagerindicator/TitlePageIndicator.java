package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
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
import java.util.ArrayList;
import p081h.p450p.AbstractC10836c;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator.class */
public class TitlePageIndicator extends View implements AbstractC10836c {

    /* renamed from: A */
    public AbstractC4220d f10191A;

    /* renamed from: a */
    public ViewPager f10192a;

    /* renamed from: b */
    public ViewPager.OnPageChangeListener f10193b;

    /* renamed from: c */
    public int f10194c;

    /* renamed from: d */
    public float f10195d;

    /* renamed from: e */
    public int f10196e;

    /* renamed from: f */
    public final Paint f10197f;

    /* renamed from: g */
    public boolean f10198g;

    /* renamed from: h */
    public int f10199h;

    /* renamed from: i */
    public int f10200i;

    /* renamed from: j */
    public Path f10201j;

    /* renamed from: k */
    public final Rect f10202k;

    /* renamed from: l */
    public final Paint f10203l;

    /* renamed from: m */
    public EnumC4218b f10204m;

    /* renamed from: n */
    public EnumC4219c f10205n;

    /* renamed from: o */
    public final Paint f10206o;

    /* renamed from: p */
    public float f10207p;

    /* renamed from: q */
    public float f10208q;

    /* renamed from: r */
    public float f10209r;

    /* renamed from: s */
    public float f10210s;

    /* renamed from: t */
    public float f10211t;

    /* renamed from: u */
    public float f10212u;

    /* renamed from: v */
    public float f10213v;

    /* renamed from: w */
    public int f10214w;

    /* renamed from: x */
    public float f10215x;

    /* renamed from: y */
    public int f10216y;

    /* renamed from: z */
    public boolean f10217z;

    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4216a();

        /* renamed from: a */
        public int f10218a;

        /* renamed from: com.viewpagerindicator.TitlePageIndicator$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$SavedState$a.class */
        public static final class C4216a implements Parcelable.Creator<SavedState> {
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
            this.f10218a = parcel.readInt();
        }

        public /* synthetic */ SavedState(Parcel parcel, C4217a aVar) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10218a);
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$a */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$a.class */
    public static /* synthetic */ class C4217a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10219a = new int[EnumC4218b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f10219a[EnumC4218b.Triangle.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10219a[EnumC4218b.Underline.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$b */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$b.class */
    public enum EnumC4218b {
        None(0),
        Triangle(1),
        Underline(2);
        

        /* renamed from: a */
        public final int f10224a;

        EnumC4218b(int i) {
            this.f10224a = i;
        }

        /* renamed from: a */
        public static EnumC4218b m29302a(int i) {
            EnumC4218b[] values;
            for (EnumC4218b bVar : values()) {
                if (bVar.f10224a == i) {
                    return bVar;
                }
            }
            return null;
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$c */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$c.class */
    public enum EnumC4219c {
        Bottom(0),
        Top(1);
        

        /* renamed from: a */
        public final int f10228a;

        EnumC4219c(int i) {
            this.f10228a = i;
        }

        /* renamed from: a */
        public static EnumC4219c m29301a(int i) {
            EnumC4219c[] values;
            for (EnumC4219c cVar : values()) {
                if (cVar.f10228a == i) {
                    return cVar;
                }
            }
            return null;
        }
    }

    /* renamed from: com.viewpagerindicator.TitlePageIndicator$d */
    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/TitlePageIndicator$d.class */
    public interface AbstractC4220d {
        /* renamed from: a */
        void m29300a(int i);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.vpiTitlePageIndicatorStyle);
    }

    public TitlePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10194c = -1;
        this.f10197f = new Paint();
        this.f10201j = new Path();
        this.f10202k = new Rect();
        this.f10203l = new Paint();
        this.f10206o = new Paint();
        this.f10215x = -1.0f;
        this.f10216y = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(R$color.default_title_indicator_footer_color);
            float dimension = resources.getDimension(R$dimen.default_title_indicator_footer_line_height);
            int integer = resources.getInteger(R$integer.default_title_indicator_footer_indicator_style);
            float dimension2 = resources.getDimension(R$dimen.default_title_indicator_footer_indicator_height);
            float dimension3 = resources.getDimension(R$dimen.default_title_indicator_footer_indicator_underline_padding);
            float dimension4 = resources.getDimension(R$dimen.default_title_indicator_footer_padding);
            int integer2 = resources.getInteger(R$integer.default_title_indicator_line_position);
            int color2 = resources.getColor(R$color.default_title_indicator_selected_color);
            boolean z = resources.getBoolean(R$bool.default_title_indicator_selected_bold);
            int color3 = resources.getColor(R$color.default_title_indicator_text_color);
            float dimension5 = resources.getDimension(R$dimen.default_title_indicator_text_size);
            float dimension6 = resources.getDimension(R$dimen.default_title_indicator_title_padding);
            float dimension7 = resources.getDimension(R$dimen.default_title_indicator_clip_padding);
            float dimension8 = resources.getDimension(R$dimen.default_title_indicator_top_padding);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TitlePageIndicator, i, 0);
            this.f10213v = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_footerLineHeight, dimension);
            this.f10204m = EnumC4218b.m29302a(obtainStyledAttributes.getInteger(R$styleable.TitlePageIndicator_footerIndicatorStyle, integer));
            this.f10207p = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_footerIndicatorHeight, dimension2);
            this.f10208q = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_footerIndicatorUnderlinePadding, dimension3);
            this.f10209r = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_footerPadding, dimension4);
            this.f10205n = EnumC4219c.m29301a(obtainStyledAttributes.getInteger(R$styleable.TitlePageIndicator_linePosition, integer2));
            this.f10211t = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_topPadding, dimension8);
            this.f10210s = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_titlePadding, dimension6);
            this.f10212u = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_clipPadding, dimension7);
            this.f10200i = obtainStyledAttributes.getColor(R$styleable.TitlePageIndicator_selectedColor, color2);
            this.f10199h = obtainStyledAttributes.getColor(R$styleable.TitlePageIndicator_android_textColor, color3);
            this.f10198g = obtainStyledAttributes.getBoolean(R$styleable.TitlePageIndicator_selectedBold, z);
            float dimension9 = obtainStyledAttributes.getDimension(R$styleable.TitlePageIndicator_android_textSize, dimension5);
            int color4 = obtainStyledAttributes.getColor(R$styleable.TitlePageIndicator_footerColor, color);
            this.f10197f.setTextSize(dimension9);
            this.f10197f.setAntiAlias(true);
            this.f10203l.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f10203l.setStrokeWidth(this.f10213v);
            this.f10203l.setColor(color4);
            this.f10206o.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f10206o.setColor(color4);
            Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.TitlePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.f10214w = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    /* renamed from: a */
    public final Rect m29307a(int i, Paint paint) {
        Rect rect = new Rect();
        CharSequence a = m29308a(i);
        rect.right = (int) paint.measureText(a, 0, a.length());
        rect.bottom = (int) (paint.descent() - paint.ascent());
        return rect;
    }

    /* renamed from: a */
    public final CharSequence m29308a(int i) {
        CharSequence pageTitle = this.f10192a.getAdapter().getPageTitle(i);
        CharSequence charSequence = pageTitle;
        if (pageTitle == null) {
            charSequence = "";
        }
        return charSequence;
    }

    /* renamed from: a */
    public final ArrayList<Rect> m29306a(Paint paint) {
        ArrayList<Rect> arrayList = new ArrayList<>();
        int count = this.f10192a.getAdapter().getCount();
        int width = getWidth();
        int i = width / 2;
        for (int i2 = 0; i2 < count; i2++) {
            Rect a = m29307a(i2, paint);
            int i3 = a.right - a.left;
            int i4 = a.bottom;
            int i5 = a.top;
            a.left = (int) ((i - (i3 / 2.0f)) + (((i2 - this.f10194c) - this.f10195d) * width));
            a.right = a.left + i3;
            a.top = 0;
            a.bottom = i4 - i5;
            arrayList.add(a);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m29305a(Rect rect, float f, int i) {
        float f2 = this.f10212u;
        rect.left = (int) (i + f2);
        rect.right = (int) (f2 + f);
    }

    /* renamed from: b */
    public void m29304b(int i) {
        ViewPager viewPager = this.f10192a;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f10194c = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    /* renamed from: b */
    public final void m29303b(Rect rect, float f, int i) {
        rect.right = (int) (i - this.f10212u);
        rect.left = (int) (rect.right - f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int count;
        Rect rect;
        int i;
        int i2;
        int i3;
        ViewPager viewPager;
        super.onDraw(canvas);
        ViewPager viewPager2 = this.f10192a;
        if (viewPager2 != null && (count = viewPager2.getAdapter().getCount()) != 0) {
            if (this.f10194c == -1 && (viewPager = this.f10192a) != null) {
                this.f10194c = viewPager.getCurrentItem();
            }
            ArrayList<Rect> a = m29306a(this.f10197f);
            int size = a.size();
            if (this.f10194c >= size) {
                m29304b(size - 1);
                return;
            }
            float width = getWidth() / 2.0f;
            int left = getLeft();
            float f = left + this.f10212u;
            int width2 = getWidth();
            int i4 = getHeight();
            int i5 = left + width2;
            float f2 = i5 - this.f10212u;
            int i6 = this.f10194c;
            float f3 = this.f10195d;
            if (f3 > 0.5d) {
                i6++;
                f3 = 1.0f - f3;
            }
            boolean z = f3 <= 0.25f;
            boolean z2 = f3 <= 0.05f;
            float f4 = (0.25f - f3) / 0.25f;
            Rect rect2 = a.get(this.f10194c);
            int i7 = rect2.right;
            int i8 = rect2.left;
            float f5 = i7 - i8;
            if (i8 < f) {
                m29305a(rect2, f5, left);
            }
            if (rect2.right > f2) {
                m29303b(rect2, f5, i5);
            }
            int i9 = this.f10194c;
            int i10 = width2;
            if (i9 > 0) {
                int i11 = i9 - 1;
                while (true) {
                    i10 = width2;
                    if (i11 < 0) {
                        break;
                    }
                    Rect rect3 = a.get(i11);
                    int i12 = rect3.left;
                    if (i12 < f) {
                        int i13 = rect3.right - i12;
                        m29305a(rect3, i13, left);
                        Rect rect4 = a.get(i11 + 1);
                        float f6 = rect3.right;
                        float f7 = this.f10210s;
                        if (f6 + f7 > rect4.left) {
                            rect3.left = (int) ((i3 - i13) - f7);
                            rect3.right = rect3.left + i13;
                        }
                    }
                    i11--;
                }
            }
            int i14 = this.f10194c;
            if (i14 < count - 1) {
                while (true) {
                    i14++;
                    if (i14 >= count) {
                        break;
                    }
                    Rect rect5 = a.get(i14);
                    int i15 = rect5.right;
                    if (i15 > f2) {
                        int i16 = i15 - rect5.left;
                        m29303b(rect5, i16, i5);
                        Rect rect6 = a.get(i14 - 1);
                        float f8 = rect5.left;
                        float f9 = this.f10210s;
                        int i17 = rect6.right;
                        if (f8 - f9 < i17) {
                            rect5.left = (int) (i17 + f9);
                            rect5.right = rect5.left + i16;
                        }
                    }
                }
            }
            int i18 = this.f10199h >>> 24;
            int i19 = 0;
            while (i19 < count) {
                Rect rect7 = a.get(i19);
                int i20 = rect7.left;
                if ((i20 > left && i20 < i5) || ((i2 = rect7.right) > left && i2 < i5)) {
                    boolean z3 = i19 == i6;
                    CharSequence a2 = m29308a(i19);
                    this.f10197f.setFakeBoldText(z3 && z2 && this.f10198g);
                    this.f10197f.setColor(this.f10199h);
                    if (z3 && z) {
                        this.f10197f.setAlpha(i18 - ((int) (i18 * f4)));
                    }
                    if (i19 < size - 1) {
                        Rect rect8 = a.get(i19 + 1);
                        int i21 = rect7.right;
                        float f10 = i21;
                        float f11 = this.f10210s;
                        if (f10 + f11 > rect8.left) {
                            int i22 = i21 - rect7.left;
                            rect7.left = (int) ((i - i22) - f11);
                            rect7.right = rect7.left + i22;
                        }
                    }
                    canvas.drawText(a2, 0, a2.length(), rect7.left, rect7.bottom + this.f10211t, this.f10197f);
                    if (z3 && z) {
                        this.f10197f.setColor(this.f10200i);
                        this.f10197f.setAlpha((int) ((this.f10200i >>> 24) * f4));
                        canvas.drawText(a2, 0, a2.length(), rect7.left, rect7.bottom + this.f10211t, this.f10197f);
                    }
                }
                i19++;
            }
            float f12 = this.f10213v;
            float f13 = this.f10207p;
            if (this.f10205n == EnumC4219c.Top) {
                f12 = -f12;
                f13 = -f13;
                i4 = 0;
            }
            this.f10201j.reset();
            float f14 = i4;
            float f15 = f14 - (f12 / 2.0f);
            this.f10201j.moveTo(0.0f, f15);
            this.f10201j.lineTo(i10, f15);
            this.f10201j.close();
            canvas.drawPath(this.f10201j, this.f10203l);
            float f16 = f14 - f12;
            int i23 = C4217a.f10219a[this.f10204m.ordinal()];
            if (i23 == 1) {
                this.f10201j.reset();
                this.f10201j.moveTo(width, f16 - f13);
                this.f10201j.lineTo(width + f13, f16);
                this.f10201j.lineTo(width - f13, f16);
                this.f10201j.close();
                canvas.drawPath(this.f10201j, this.f10206o);
            } else if (i23 == 2 && z && i6 < size) {
                float f17 = a.get(i6).right;
                float f18 = this.f10208q;
                float f19 = f17 + f18;
                float f20 = rect.left - f18;
                float f21 = f16 - f13;
                this.f10201j.reset();
                this.f10201j.moveTo(f20, f16);
                this.f10201j.lineTo(f19, f16);
                this.f10201j.lineTo(f19, f21);
                this.f10201j.lineTo(f20, f21);
                this.f10201j.close();
                this.f10206o.setAlpha((int) (255.0f * f4));
                canvas.drawPath(this.f10201j, this.f10206o);
                this.f10206o.setAlpha(255);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            f = View.MeasureSpec.getSize(i2);
        } else {
            this.f10202k.setEmpty();
            this.f10202k.bottom = (int) (this.f10197f.descent() - this.f10197f.ascent());
            Rect rect = this.f10202k;
            float f2 = (rect.bottom - rect.top) + this.f10213v + this.f10209r + this.f10211t;
            f = f2;
            if (this.f10204m != EnumC4218b.None) {
                f = f2 + this.f10207p;
            }
        }
        setMeasuredDimension(size, (int) f);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.f10196e = i;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10193b;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.f10194c = i;
        this.f10195d = f;
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10193b;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.f10196e == 0) {
            this.f10194c = i;
            invalidate();
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10193b;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f10194c = savedState.f10218a;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10218a = this.f10194c;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f10192a;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10216y));
                    float f = x - this.f10215x;
                    if (!this.f10217z && Math.abs(f) > this.f10214w) {
                        this.f10217z = true;
                    }
                    if (!this.f10217z) {
                        return true;
                    }
                    this.f10215x = x;
                    if (!this.f10192a.isFakeDragging() && !this.f10192a.beginFakeDrag()) {
                        return true;
                    }
                    this.f10192a.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.f10215x = MotionEventCompat.getX(motionEvent, actionIndex);
                        this.f10216y = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.f10216y) {
                            if (actionIndex2 == 0) {
                                i = 1;
                            }
                            this.f10216y = MotionEventCompat.getPointerId(motionEvent, i);
                        }
                        this.f10215x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10216y));
                        return true;
                    }
                }
            }
            if (!this.f10217z) {
                int count = this.f10192a.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                float x2 = motionEvent.getX();
                if (x2 < f2 - f3) {
                    int i2 = this.f10194c;
                    if (i2 > 0) {
                        if (action == 3) {
                            return true;
                        }
                        this.f10192a.setCurrentItem(i2 - 1);
                        return true;
                    }
                } else if (x2 > f2 + f3) {
                    int i3 = this.f10194c;
                    if (i3 < count - 1) {
                        if (action == 3) {
                            return true;
                        }
                        this.f10192a.setCurrentItem(i3 + 1);
                        return true;
                    }
                } else {
                    AbstractC4220d dVar = this.f10191A;
                    if (!(dVar == null || action == 3)) {
                        dVar.m29300a(this.f10194c);
                    }
                }
            }
            this.f10217z = false;
            this.f10216y = -1;
            if (!this.f10192a.isFakeDragging()) {
                return true;
            }
            this.f10192a.endFakeDrag();
            return true;
        }
        this.f10216y = MotionEventCompat.getPointerId(motionEvent, 0);
        this.f10215x = motionEvent.getX();
        return true;
    }
}
