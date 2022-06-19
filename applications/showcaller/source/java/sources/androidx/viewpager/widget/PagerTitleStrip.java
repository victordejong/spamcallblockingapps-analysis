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
import androidx.core.widget.C0649k;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.AbstractC1189e
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: d */
    private static final int[] f5032d = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: e */
    private static final int[] f5033e = {16843660};

    /* renamed from: f */
    ViewPager f5034f;

    /* renamed from: g */
    TextView f5035g;

    /* renamed from: h */
    TextView f5036h;

    /* renamed from: i */
    TextView f5037i;

    /* renamed from: j */
    private int f5038j;

    /* renamed from: k */
    float f5039k;

    /* renamed from: l */
    private int f5040l;

    /* renamed from: m */
    private int f5041m;

    /* renamed from: n */
    private boolean f5042n;

    /* renamed from: o */
    private boolean f5043o;

    /* renamed from: p */
    private final C1182a f5044p;

    /* renamed from: q */
    private WeakReference<AbstractC1197a> f5045q;

    /* renamed from: r */
    private int f5046r;

    /* renamed from: s */
    int f5047s;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$a.class */
    public class C1182a extends DataSetObserver implements ViewPager.AbstractC1193i, ViewPager.AbstractC1192h {

        /* renamed from: d */
        private int f5048d;

        C1182a() {
            PagerTitleStrip.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.mo30769c(i3, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1192h
        /* renamed from: b */
        public void mo4126b(ViewPager viewPager, AbstractC1197a abstractC1197a, AbstractC1197a abstractC1197a2) {
            PagerTitleStrip.this.m30771a(abstractC1197a, abstractC1197a2);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
            this.f5048d = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            if (this.f5048d == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m30770b(pagerTitleStrip.f5034f.getCurrentItem(), PagerTitleStrip.this.f5034f.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f = pagerTitleStrip2.f5039k;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip2.mo30769c(pagerTitleStrip2.f5034f.getCurrentItem(), f, true);
            }
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m30770b(pagerTitleStrip.f5034f.getCurrentItem(), PagerTitleStrip.this.f5034f.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f = pagerTitleStrip2.f5039k;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip2.mo30769c(pagerTitleStrip2.f5034f.getCurrentItem(), f, true);
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static class C1183b extends SingleLineTransformationMethod {

        /* renamed from: d */
        private Locale f5050d;

        C1183b(Context context) {
            this.f5050d = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f5050d) : null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5038j = -1;
        this.f5039k = -1.0f;
        this.f5044p = new C1182a();
        TextView textView = new TextView(context);
        this.f5035g = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f5036h = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f5037i = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f5032d);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C0649k.m33074q(this.f5035g, resourceId);
            C0649k.m33074q(this.f5036h, resourceId);
            C0649k.m33074q(this.f5037i, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f5035g.setTextColor(color);
            this.f5036h.setTextColor(color);
            this.f5037i.setTextColor(color);
        }
        this.f5041m = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f5047s = this.f5036h.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f5035g.setEllipsize(TextUtils.TruncateAt.END);
        this.f5036h.setEllipsize(TextUtils.TruncateAt.END);
        this.f5037i.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f5033e);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.f5035g);
            setSingleLineAllCaps(this.f5036h);
            setSingleLineAllCaps(this.f5037i);
        } else {
            this.f5035g.setSingleLine();
            this.f5036h.setSingleLine();
            this.f5037i.setSingleLine();
        }
        this.f5040l = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new C1183b(textView.getContext()));
    }

    /* renamed from: a */
    void m30771a(AbstractC1197a abstractC1197a, AbstractC1197a abstractC1197a2) {
        if (abstractC1197a != null) {
            abstractC1197a.m30702u(this.f5044p);
            this.f5045q = null;
        }
        if (abstractC1197a2 != null) {
            abstractC1197a2.m30707m(this.f5044p);
            this.f5045q = new WeakReference<>(abstractC1197a2);
        }
        ViewPager viewPager = this.f5034f;
        if (viewPager != null) {
            this.f5038j = -1;
            this.f5039k = -1.0f;
            m30770b(viewPager.getCurrentItem(), abstractC1197a2);
            requestLayout();
        }
    }

    /* renamed from: b */
    void m30770b(int i, AbstractC1197a abstractC1197a) {
        int mo25082e = abstractC1197a != null ? abstractC1197a.mo25082e() : 0;
        this.f5042n = true;
        this.f5035g.setText((i < 1 || abstractC1197a == null) ? null : abstractC1197a.mo25081g(i - 1));
        this.f5036h.setText((abstractC1197a == null || i >= mo25082e) ? null : abstractC1197a.mo25081g(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < mo25082e) {
            charSequence = null;
            if (abstractC1197a != null) {
                charSequence = abstractC1197a.mo25081g(i2);
            }
        }
        this.f5037i.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f5035g.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5036h.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5037i.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5038j = i;
        if (!this.f5043o) {
            mo30769c(i, this.f5039k, false);
        }
        this.f5042n = false;
    }

    /* renamed from: c */
    public void mo30769c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f5038j) {
            m30770b(i, this.f5034f.getAdapter());
        } else if (!z && f == this.f5039k) {
            return;
        }
        this.f5043o = true;
        int measuredWidth = this.f5035g.getMeasuredWidth();
        int measuredWidth2 = this.f5036h.getMeasuredWidth();
        int measuredWidth3 = this.f5037i.getMeasuredWidth();
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
        int baseline = this.f5035g.getBaseline();
        int baseline2 = this.f5036h.getBaseline();
        int baseline3 = this.f5037i.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f5035g.getMeasuredHeight() + i10, this.f5036h.getMeasuredHeight() + i11), this.f5037i.getMeasuredHeight() + i12);
        int i13 = this.f5041m & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f5036h;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f5040l) - measuredWidth);
            TextView textView2 = this.f5035g;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5040l);
            TextView textView3 = this.f5037i;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f5039k = f;
            this.f5043o = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f5036h;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f5040l) - measuredWidth);
        TextView textView22 = this.f5035g;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f5040l);
        TextView textView32 = this.f5037i;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f5039k = f;
        this.f5043o = false;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.f5040l;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            AbstractC1197a adapter = viewPager.getAdapter();
            viewPager.m30749T(this.f5044p);
            viewPager.m30745b(this.f5044p);
            this.f5034f = viewPager;
            WeakReference<AbstractC1197a> weakReference = this.f5045q;
            m30771a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f5034f;
        if (viewPager != null) {
            m30771a(viewPager.getAdapter(), null);
            this.f5034f.m30749T(null);
            this.f5034f.m30756M(this.f5044p);
            this.f5034f = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f5034f != null) {
            float f = this.f5039k;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo30769c(this.f5038j, f, true);
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
            this.f5035g.measure(childMeasureSpec2, childMeasureSpec);
            this.f5036h.measure(childMeasureSpec2, childMeasureSpec);
            this.f5037i.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(getMinHeight(), this.f5036h.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f5036h.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f5042n) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f5041m = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f5046r = i;
        int i2 = (i << 24) | (this.f5047s & 16777215);
        this.f5035g.setTextColor(i2);
        this.f5037i.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f5047s = i;
        this.f5036h.setTextColor(i);
        int i2 = (this.f5046r << 24) | (this.f5047s & 16777215);
        this.f5035g.setTextColor(i2);
        this.f5037i.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f5035g.setTextSize(i, f);
        this.f5036h.setTextSize(i, f);
        this.f5037i.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f5040l = i;
        requestLayout();
    }
}
