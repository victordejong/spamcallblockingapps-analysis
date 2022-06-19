package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.widget.C0299i;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.AbstractC0526e
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: p */
    private static final int[] f2790p = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: q */
    private static final int[] f2791q = {16843660};

    /* renamed from: b */
    ViewPager f2792b;

    /* renamed from: c */
    TextView f2793c;

    /* renamed from: d */
    TextView f2794d;

    /* renamed from: e */
    TextView f2795e;

    /* renamed from: f */
    private int f2796f;

    /* renamed from: g */
    float f2797g;

    /* renamed from: h */
    private int f2798h;

    /* renamed from: i */
    private int f2799i;

    /* renamed from: j */
    private boolean f2800j;

    /* renamed from: k */
    private boolean f2801k;

    /* renamed from: l */
    private final a f2802l;

    /* renamed from: m */
    private WeakReference<AbstractC0533a> f2803m;

    /* renamed from: n */
    private int f2804n;

    /* renamed from: o */
    int f2805o;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static class C0522b extends SingleLineTransformationMethod {

        /* renamed from: b */
        private Locale f2806b;

        C0522b(Context context) {
            this.f2806b = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f2806b) : null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2796f = -1;
        this.f2797g = -1.0f;
        this.f2802l = new a(this);
        TextView textView = new TextView(context);
        this.f2793c = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f2794d = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f2795e = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2790p);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C0299i.m13388q(this.f2793c, resourceId);
            C0299i.m13388q(this.f2794d, resourceId);
            C0299i.m13388q(this.f2795e, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f2793c.setTextColor(color);
            this.f2794d.setTextColor(color);
            this.f2795e.setTextColor(color);
        }
        this.f2799i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f2805o = this.f2794d.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f2793c.setEllipsize(TextUtils.TruncateAt.END);
        this.f2794d.setEllipsize(TextUtils.TruncateAt.END);
        this.f2795e.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f2791q);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        TextView textView4 = this.f2793c;
        if (z) {
            setSingleLineAllCaps(textView4);
            setSingleLineAllCaps(this.f2794d);
            setSingleLineAllCaps(this.f2795e);
        } else {
            textView4.setSingleLine();
            this.f2794d.setSingleLine();
            this.f2795e.setSingleLine();
        }
        this.f2798h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new C0522b(textView.getContext()));
    }

    /* renamed from: a */
    void m11932a(AbstractC0533a abstractC0533a, AbstractC0533a abstractC0533a2) {
        if (abstractC0533a != null) {
            abstractC0533a.m11859t(this.f2802l);
            this.f2803m = null;
        }
        if (abstractC0533a2 != null) {
            abstractC0533a2.m11867l(this.f2802l);
            this.f2803m = new WeakReference<>(abstractC0533a2);
        }
        ViewPager viewPager = this.f2792b;
        if (viewPager != null) {
            this.f2796f = -1;
            this.f2797g = -1.0f;
            m11931b(viewPager.getCurrentItem(), abstractC0533a2);
            requestLayout();
        }
    }

    /* renamed from: b */
    void m11931b(int i, AbstractC0533a abstractC0533a) {
        int mo66e = abstractC0533a != null ? abstractC0533a.mo66e() : 0;
        this.f2800j = true;
        this.f2793c.setText((i < 1 || abstractC0533a == null) ? null : abstractC0533a.m11870g(i - 1));
        this.f2794d.setText((abstractC0533a == null || i >= mo66e) ? null : abstractC0533a.m11870g(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < mo66e) {
            charSequence = null;
            if (abstractC0533a != null) {
                charSequence = abstractC0533a.m11870g(i2);
            }
        }
        this.f2795e.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f2793c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2794d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2795e.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f2796f = i;
        if (!this.f2801k) {
            m11930c(i, this.f2797g, false);
        }
        this.f2800j = false;
    }

    /* renamed from: c */
    void m11930c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f2796f) {
            m11931b(i, this.f2792b.getAdapter());
        } else if (!z && f == this.f2797g) {
            return;
        }
        this.f2801k = true;
        int measuredWidth = this.f2793c.getMeasuredWidth();
        int measuredWidth2 = this.f2794d.getMeasuredWidth();
        int measuredWidth3 = this.f2795e.getMeasuredWidth();
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
        int baseline = this.f2793c.getBaseline();
        int baseline2 = this.f2794d.getBaseline();
        int baseline3 = this.f2795e.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f2793c.getMeasuredHeight() + i10, this.f2794d.getMeasuredHeight() + i11), this.f2795e.getMeasuredHeight() + i12);
        int i13 = this.f2799i & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f2794d;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f2798h) - measuredWidth);
            TextView textView2 = this.f2793c;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f2798h);
            TextView textView3 = this.f2795e;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f2797g = f;
            this.f2801k = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f2794d;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f2798h) - measuredWidth);
        TextView textView22 = this.f2793c;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f2798h);
        TextView textView32 = this.f2795e;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f2797g = f;
        this.f2801k = false;
    }

    int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.f2798h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            AbstractC0533a adapter = viewPager.getAdapter();
            viewPager.m11910T(this.f2802l);
            viewPager.m11906b(this.f2802l);
            this.f2792b = viewPager;
            WeakReference<AbstractC0533a> weakReference = this.f2803m;
            m11932a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f2792b;
        if (viewPager != null) {
            m11932a(viewPager.getAdapter(), null);
            this.f2792b.m11910T(null);
            this.f2792b.m11917M(this.f2802l);
            this.f2792b = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f2792b != null) {
            float f = this.f2797g;
            if (f < 0.0f) {
                f = 0.0f;
            }
            m11930c(this.f2796f, f, true);
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
            this.f2793c.measure(childMeasureSpec2, childMeasureSpec);
            this.f2794d.measure(childMeasureSpec2, childMeasureSpec);
            this.f2795e.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(getMinHeight(), this.f2794d.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f2794d.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f2800j) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f2799i = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f2804n = i;
        int i2 = (i << 24) | (this.f2805o & 16777215);
        this.f2793c.setTextColor(i2);
        this.f2795e.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f2805o = i;
        this.f2794d.setTextColor(i);
        int i2 = (this.f2804n << 24) | (this.f2805o & 16777215);
        this.f2793c.setTextColor(i2);
        this.f2795e.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f2793c.setTextSize(i, f);
        this.f2794d.setTextSize(i, f);
        this.f2795e.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f2798h = i;
        requestLayout();
    }
}
