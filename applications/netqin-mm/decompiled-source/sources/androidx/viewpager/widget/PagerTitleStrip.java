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
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
import p012b.p014a0.p015a.AbstractC0573a;
import p012b.p042i.p056q.C1032i;
@ViewPager.AbstractC0562e
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: o */
    public static final int[] f2822o = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: p */
    public static final int[] f2823p = {16843660};

    /* renamed from: a */
    public ViewPager f2824a;

    /* renamed from: b */
    public TextView f2825b;

    /* renamed from: c */
    public TextView f2826c;

    /* renamed from: d */
    public TextView f2827d;

    /* renamed from: g */
    public int f2830g;

    /* renamed from: h */
    public int f2831h;

    /* renamed from: i */
    public boolean f2832i;

    /* renamed from: j */
    public boolean f2833j;

    /* renamed from: l */
    public WeakReference<AbstractC0573a> f2835l;

    /* renamed from: m */
    public int f2836m;

    /* renamed from: n */
    public int f2837n;

    /* renamed from: e */
    public int f2828e = -1;

    /* renamed from: f */
    public float f2829f = -1.0f;

    /* renamed from: k */
    public final C0555a f2834k = new C0555a();

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$a.class */
    public class C0555a extends DataSetObserver implements ViewPager.AbstractC0566i, ViewPager.AbstractC0565h {

        /* renamed from: a */
        public int f2838a;

        public C0555a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0565h
        /* renamed from: a */
        public void mo36909a(ViewPager viewPager, AbstractC0573a aVar, AbstractC0573a aVar2) {
            PagerTitleStrip.this.m36956a(aVar, aVar2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m36957a(pagerTitleStrip.f2824a.getCurrentItem(), PagerTitleStrip.this.f2824a.getAdapter());
            float f = PagerTitleStrip.this.f2829f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.mo36958a(pagerTitleStrip2.f2824a.getCurrentItem(), f, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageScrollStateChanged(int i) {
            this.f2838a = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageScrolled(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.mo36958a(i3, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0566i
        public void onPageSelected(int i) {
            if (this.f2838a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m36957a(pagerTitleStrip.f2824a.getCurrentItem(), PagerTitleStrip.this.f2824a.getAdapter());
                float f = PagerTitleStrip.this.f2829f;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.mo36958a(pagerTitleStrip2.f2824a.getCurrentItem(), f, true);
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static class C0556b extends SingleLineTransformationMethod {

        /* renamed from: a */
        public Locale f2840a;

        public C0556b(Context context) {
            this.f2840a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f2840a) : null;
        }
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TextView textView = new TextView(context);
        this.f2825b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f2826c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f2827d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2822o);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C1032i.m35090d(this.f2825b, resourceId);
            C1032i.m35090d(this.f2826c, resourceId);
            C1032i.m35090d(this.f2827d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            m36959a(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f2825b.setTextColor(color);
            this.f2826c.setTextColor(color);
            this.f2827d.setTextColor(color);
        }
        this.f2831h = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f2837n = this.f2826c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f2825b.setEllipsize(TextUtils.TruncateAt.END);
        this.f2826c.setEllipsize(TextUtils.TruncateAt.END);
        this.f2827d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f2823p);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.f2825b);
            setSingleLineAllCaps(this.f2826c);
            setSingleLineAllCaps(this.f2827d);
        } else {
            this.f2825b.setSingleLine();
            this.f2826c.setSingleLine();
            this.f2827d.setSingleLine();
        }
        this.f2830g = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    public static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new C0556b(textView.getContext()));
    }

    /* renamed from: a */
    public void m36959a(int i, float f) {
        this.f2825b.setTextSize(i, f);
        this.f2826c.setTextSize(i, f);
        this.f2827d.setTextSize(i, f);
    }

    /* renamed from: a */
    public void mo36958a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f2828e) {
            m36957a(i, this.f2824a.getAdapter());
        } else if (!z && f == this.f2829f) {
            return;
        }
        this.f2833j = true;
        int measuredWidth = this.f2825b.getMeasuredWidth();
        int measuredWidth2 = this.f2826c.getMeasuredWidth();
        int measuredWidth3 = this.f2827d.getMeasuredWidth();
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
        int baseline = this.f2825b.getBaseline();
        int baseline2 = this.f2826c.getBaseline();
        int baseline3 = this.f2827d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f2825b.getMeasuredHeight() + i10, this.f2826c.getMeasuredHeight() + i11), this.f2827d.getMeasuredHeight() + i12);
        int i13 = this.f2831h & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f2826c;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f2830g) - measuredWidth);
            TextView textView2 = this.f2825b;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f2830g);
            TextView textView3 = this.f2827d;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f2829f = f;
            this.f2833j = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f2826c;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f2830g) - measuredWidth);
        TextView textView22 = this.f2825b;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f2830g);
        TextView textView32 = this.f2827d;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f2829f = f;
        this.f2833j = false;
    }

    /* renamed from: a */
    public void m36957a(int i, AbstractC0573a aVar) {
        int count = aVar != null ? aVar.getCount() : 0;
        this.f2832i = true;
        this.f2825b.setText((i < 1 || aVar == null) ? null : aVar.getPageTitle(i - 1));
        this.f2826c.setText((aVar == null || i >= count) ? null : aVar.getPageTitle(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < count) {
            charSequence = null;
            if (aVar != null) {
                charSequence = aVar.getPageTitle(i2);
            }
        }
        this.f2827d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f2825b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2826c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2827d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2828e = i;
        if (!this.f2833j) {
            mo36958a(i, this.f2829f, false);
        }
        this.f2832i = false;
    }

    /* renamed from: a */
    public void m36956a(AbstractC0573a aVar, AbstractC0573a aVar2) {
        if (aVar != null) {
            aVar.unregisterDataSetObserver(this.f2834k);
            this.f2835l = null;
        }
        if (aVar2 != null) {
            aVar2.registerDataSetObserver(this.f2834k);
            this.f2835l = new WeakReference<>(aVar2);
        }
        ViewPager viewPager = this.f2824a;
        if (viewPager != null) {
            this.f2828e = -1;
            this.f2829f = -1.0f;
            m36957a(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.f2830g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            AbstractC0573a adapter = viewPager.getAdapter();
            viewPager.m36927b((ViewPager.AbstractC0566i) this.f2834k);
            viewPager.m36936a((ViewPager.AbstractC0565h) this.f2834k);
            this.f2824a = viewPager;
            WeakReference<AbstractC0573a> weakReference = this.f2835l;
            m36956a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f2824a;
        if (viewPager != null) {
            m36956a(viewPager.getAdapter(), (AbstractC0573a) null);
            this.f2824a.m36927b((ViewPager.AbstractC0566i) null);
            this.f2824a.m36928b((ViewPager.AbstractC0565h) this.f2834k);
            this.f2824a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f2824a != null) {
            float f = this.f2829f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo36958a(this.f2828e, f, true);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
            this.f2825b.measure(childMeasureSpec2, childMeasureSpec);
            this.f2826c.measure(childMeasureSpec2, childMeasureSpec);
            this.f2827d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(getMinHeight(), this.f2826c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f2826c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f2832i) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f2831h = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f2836m = i;
        int i2 = (i << 24) | (this.f2837n & 16777215);
        this.f2825b.setTextColor(i2);
        this.f2827d.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f2837n = i;
        this.f2826c.setTextColor(i);
        int i2 = (this.f2836m << 24) | (this.f2837n & 16777215);
        this.f2825b.setTextColor(i2);
        this.f2827d.setTextColor(i2);
    }

    public void setTextSpacing(int i) {
        this.f2830g = i;
        requestLayout();
    }
}
