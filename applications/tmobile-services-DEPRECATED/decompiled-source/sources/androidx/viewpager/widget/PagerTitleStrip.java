package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.DecorView
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: t */
    private static final int[] f5482t = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: u */
    private static final int[] f5483u = {16843660};

    /* renamed from: f */
    ViewPager f5484f;

    /* renamed from: g */
    TextView f5485g;

    /* renamed from: h */
    TextView f5486h;

    /* renamed from: i */
    TextView f5487i;

    /* renamed from: j */
    private int f5488j;

    /* renamed from: k */
    float f5489k;

    /* renamed from: l */
    private int f5490l;

    /* renamed from: m */
    private int f5491m;

    /* renamed from: n */
    private boolean f5492n;

    /* renamed from: o */
    private boolean f5493o;

    /* renamed from: p */
    private final PageListener f5494p;

    /* renamed from: q */
    private WeakReference<PagerAdapter> f5495q;

    /* renamed from: r */
    private int f5496r;

    /* renamed from: s */
    int f5497s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$PageListener.class */
    public class PageListener extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {

        /* renamed from: a */
        private int f5498a;

        PageListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        /* renamed from: a */
        public void mo8960a(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            PagerTitleStrip.this.m16535a(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m16534b(pagerTitleStrip.f5484f.getCurrentItem(), PagerTitleStrip.this.f5484f.getAdapter());
            float f = PagerTitleStrip.this.f5489k;
            if (f < 0.0f) {
                f = 0.0f;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.mo16533c(pagerTitleStrip2.f5484f.getCurrentItem(), f, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f5498a = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.mo16533c(i3, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.f5498a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m16534b(pagerTitleStrip.f5484f.getCurrentItem(), PagerTitleStrip.this.f5484f.getAdapter());
                float f = PagerTitleStrip.this.f5489k;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.mo16533c(pagerTitleStrip2.f5484f.getCurrentItem(), f, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform.class */
    public static class SingleLineAllCapsTransform extends SingleLineTransformationMethod {

        /* renamed from: f */
        private Locale f5500f;

        SingleLineAllCapsTransform(Context context) {
            this.f5500f = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f5500f) : null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5488j = -1;
        this.f5489k = -1.0f;
        this.f5494p = new PageListener();
        TextView textView = new TextView(context);
        this.f5485g = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f5486h = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f5487i = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5482t);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.m18817r(this.f5485g, resourceId);
            TextViewCompat.m18817r(this.f5486h, resourceId);
            TextViewCompat.m18817r(this.f5487i, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f5485g.setTextColor(color);
            this.f5486h.setTextColor(color);
            this.f5487i.setTextColor(color);
        }
        this.f5491m = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f5497s = this.f5486h.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f5485g.setEllipsize(TextUtils.TruncateAt.END);
        this.f5486h.setEllipsize(TextUtils.TruncateAt.END);
        this.f5487i.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f5483u);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.f5485g);
            setSingleLineAllCaps(this.f5486h);
            setSingleLineAllCaps(this.f5487i);
        } else {
            this.f5485g.setSingleLine();
            this.f5486h.setSingleLine();
            this.f5487i.setSingleLine();
        }
        this.f5490l = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new SingleLineAllCapsTransform(textView.getContext()));
    }

    /* renamed from: a */
    void m16535a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.f5494p);
            this.f5495q = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.f5494p);
            this.f5495q = new WeakReference<>(pagerAdapter2);
        }
        ViewPager viewPager = this.f5484f;
        if (viewPager != null) {
            this.f5488j = -1;
            this.f5489k = -1.0f;
            m16534b(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    /* renamed from: b */
    void m16534b(int i, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.f5492n = true;
        this.f5485g.setText((i < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i - 1));
        this.f5486h.setText((pagerAdapter == null || i >= count) ? null : pagerAdapter.getPageTitle(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < count) {
            charSequence = null;
            if (pagerAdapter != null) {
                charSequence = pagerAdapter.getPageTitle(i2);
            }
        }
        this.f5487i.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f5485g.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5486h.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5487i.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5488j = i;
        if (!this.f5493o) {
            mo16533c(i, this.f5489k, false);
        }
        this.f5492n = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void mo16533c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f5488j) {
            m16534b(i, this.f5484f.getAdapter());
        } else if (!z && f == this.f5489k) {
            return;
        }
        this.f5493o = true;
        int measuredWidth = this.f5485g.getMeasuredWidth();
        int measuredWidth2 = this.f5486h.getMeasuredWidth();
        int measuredWidth3 = this.f5487i.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        float f2 = 0.5f + f;
        float f3 = f2;
        if (f2 > 1.0f) {
            f3 = f2 - 1.0f;
        }
        int i8 = ((width - i7) - ((int) (((width - (paddingLeft + i6)) - i7) * f3))) - i6;
        int i9 = measuredWidth2 + i8;
        int baseline = this.f5485g.getBaseline();
        int baseline2 = this.f5486h.getBaseline();
        int baseline3 = this.f5487i.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f5485g.getMeasuredHeight() + i10, this.f5486h.getMeasuredHeight() + i11), this.f5487i.getMeasuredHeight() + i12);
        int i13 = this.f5491m & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f5486h;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f5490l) - measuredWidth);
            TextView textView2 = this.f5485g;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5490l);
            TextView textView3 = this.f5487i;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f5489k = f;
            this.f5493o = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f5486h;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f5490l) - measuredWidth);
        TextView textView22 = this.f5485g;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5490l);
        TextView textView32 = this.f5487i;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f5489k = f;
        this.f5493o = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.f5490l;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            PagerAdapter adapter = viewPager.getAdapter();
            viewPager.m16517P(this.f5494p);
            viewPager.m16513b(this.f5494p);
            this.f5484f = viewPager;
            WeakReference<PagerAdapter> weakReference = this.f5495q;
            m16535a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f5484f;
        if (viewPager != null) {
            m16535a(viewPager.getAdapter(), null);
            this.f5484f.m16517P(null);
            this.f5484f.m16524I(this.f5494p);
            this.f5484f = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f5484f != null) {
            float f = this.f5489k;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo16533c(this.f5488j, f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
            this.f5485g.measure(childMeasureSpec2, childMeasureSpec);
            this.f5486h.measure(childMeasureSpec2, childMeasureSpec);
            this.f5487i.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(getMinHeight(), this.f5486h.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f5486h.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f5492n) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f5491m = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f5496r = i;
        int i2 = (i << 24) | (this.f5497s & 16777215);
        this.f5485g.setTextColor(i2);
        this.f5487i.setTextColor(i2);
    }

    public void setTextColor(@ColorInt int i) {
        this.f5497s = i;
        this.f5486h.setTextColor(i);
        int i2 = (this.f5496r << 24) | (this.f5497s & 16777215);
        this.f5485g.setTextColor(i2);
        this.f5487i.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f5485g.setTextSize(i, f);
        this.f5486h.setTextSize(i, f);
        this.f5487i.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f5490l = i;
        requestLayout();
    }
}
