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
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.AbstractC0205e
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: q */
    public static final int[] f1542q = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: r */
    public static final int[] f1543r = {16843660};

    /* renamed from: a */
    public ViewPager f1544a;

    /* renamed from: b */
    public TextView f1545b;

    /* renamed from: c */
    public TextView f1546c;

    /* renamed from: d */
    public TextView f1547d;

    /* renamed from: f */
    public int f1548f;

    /* renamed from: g */
    public float f1549g;

    /* renamed from: h */
    public int f1550h;

    /* renamed from: j */
    public int f1551j;

    /* renamed from: k */
    public boolean f1552k;

    /* renamed from: l */
    public boolean f1553l;

    /* renamed from: m */
    public final a f1554m;

    /* renamed from: n */
    public WeakReference<g40> f1555n;

    /* renamed from: o */
    public int f1556o;

    /* renamed from: p */
    public int f1557p;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static class C0201b extends SingleLineTransformationMethod {

        /* renamed from: a */
        public Locale f1558a;

        public C0201b(Context context) {
            this.f1558a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f1558a) : null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1548f = -1;
        this.f1549g = -1.0f;
        this.f1554m = new a(this);
        TextView textView = new TextView(context);
        this.f1545b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f1546c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f1547d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1542q);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            ic.q(this.f1545b, resourceId);
            ic.q(this.f1546c, resourceId);
            ic.q(this.f1547d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f1545b.setTextColor(color);
            this.f1546c.setTextColor(color);
            this.f1547d.setTextColor(color);
        }
        this.f1551j = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f1557p = this.f1546c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f1545b.setEllipsize(TextUtils.TruncateAt.END);
        this.f1546c.setEllipsize(TextUtils.TruncateAt.END);
        this.f1547d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f1543r);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        TextView textView4 = this.f1545b;
        if (z) {
            setSingleLineAllCaps(textView4);
            setSingleLineAllCaps(this.f1546c);
            setSingleLineAllCaps(this.f1547d);
        } else {
            textView4.setSingleLine();
            this.f1546c.setSingleLine();
            this.f1547d.setSingleLine();
        }
        this.f1550h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new C0201b(textView.getContext()));
    }

    /* renamed from: a */
    public void m5988a(g40 g40Var, g40 g40Var2) {
        if (g40Var != null) {
            g40Var.t(this.f1554m);
            this.f1555n = null;
        }
        if (g40Var2 != null) {
            g40Var2.l(this.f1554m);
            this.f1555n = new WeakReference<>(g40Var2);
        }
        ViewPager viewPager = this.f1544a;
        if (viewPager != null) {
            this.f1548f = -1;
            this.f1549g = -1.0f;
            m5987b(viewPager.getCurrentItem(), g40Var2);
            requestLayout();
        }
    }

    /* renamed from: b */
    public void m5987b(int i, g40 g40Var) {
        int e = g40Var != null ? g40Var.e() : 0;
        this.f1552k = true;
        this.f1545b.setText((i < 1 || g40Var == null) ? null : g40Var.g(i - 1));
        this.f1546c.setText((g40Var == null || i >= e) ? null : g40Var.g(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < e) {
            charSequence = null;
            if (g40Var != null) {
                charSequence = g40Var.g(i2);
            }
        }
        this.f1547d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f1545b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f1546c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f1547d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f1548f = i;
        if (!this.f1553l) {
            m5986c(i, this.f1549g, false);
        }
        this.f1552k = false;
    }

    /* renamed from: c */
    public void m5986c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f1548f) {
            m5987b(i, this.f1544a.getAdapter());
        } else if (!z && f == this.f1549g) {
            return;
        }
        this.f1553l = true;
        int measuredWidth = this.f1545b.getMeasuredWidth();
        int measuredWidth2 = this.f1546c.getMeasuredWidth();
        int measuredWidth3 = this.f1547d.getMeasuredWidth();
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
        int baseline = this.f1545b.getBaseline();
        int baseline2 = this.f1546c.getBaseline();
        int baseline3 = this.f1547d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f1545b.getMeasuredHeight() + i10, this.f1546c.getMeasuredHeight() + i11), this.f1547d.getMeasuredHeight() + i12);
        int i13 = this.f1551j & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f1546c;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f1550h) - measuredWidth);
            TextView textView2 = this.f1545b;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f1550h);
            TextView textView3 = this.f1547d;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f1549g = f;
            this.f1553l = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f1546c;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f1550h) - measuredWidth);
        TextView textView22 = this.f1545b;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f1550h);
        TextView textView32 = this.f1547d;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f1549g = f;
        this.f1553l = false;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    public int getTextSpacing() {
        return this.f1550h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            g40 adapter = viewPager.getAdapter();
            viewPager.m5970P(this.f1554m);
            viewPager.m5966b(this.f1554m);
            this.f1544a = viewPager;
            WeakReference<g40> weakReference = this.f1555n;
            m5988a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f1544a;
        if (viewPager != null) {
            m5988a(viewPager.getAdapter(), null);
            this.f1544a.m5970P(null);
            this.f1544a.m5977I(this.f1554m);
            this.f1544a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1544a != null) {
            float f = this.f1549g;
            if (f < 0.0f) {
                f = 0.0f;
            }
            m5986c(this.f1548f, f, true);
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
            this.f1545b.measure(childMeasureSpec2, childMeasureSpec);
            this.f1546c.measure(childMeasureSpec2, childMeasureSpec);
            this.f1547d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(getMinHeight(), this.f1546c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f1546c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f1552k) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f1551j = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f1556o = i;
        int i2 = (i << 24) | (this.f1557p & 16777215);
        this.f1545b.setTextColor(i2);
        this.f1547d.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f1557p = i;
        this.f1546c.setTextColor(i);
        int i2 = (this.f1556o << 24) | (this.f1557p & 16777215);
        this.f1545b.setTextColor(i2);
        this.f1547d.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f1545b.setTextSize(i, f);
        this.f1546c.setTextSize(i, f);
        this.f1547d.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f1550h = i;
        requestLayout();
    }
}
