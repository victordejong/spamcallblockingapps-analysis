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
import androidx.core.widget.h;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.a
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {
    private static final int[] n = {16842804, 16842901, 16842904, 16842927};
    private static final int[] o = {16843660};

    /* renamed from: a  reason: collision with root package name */
    ViewPager f5870a;

    /* renamed from: b  reason: collision with root package name */
    TextView f5871b;

    /* renamed from: c  reason: collision with root package name */
    TextView f5872c;

    /* renamed from: d  reason: collision with root package name */
    TextView f5873d;
    float e;
    int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private final a l;
    private WeakReference<androidx.viewpager.widget.a> m;
    private int p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$a.class */
    public final class a extends DataSetObserver implements ViewPager.d, ViewPager.e {

        /* renamed from: b  reason: collision with root package name */
        private int f5875b;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.d
        public final void a(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            PagerTitleStrip.this.a(aVar, aVar2);
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.a(pagerTitleStrip.f5870a.getCurrentItem(), PagerTitleStrip.this.f5870a.getAdapter());
            float f = PagerTitleStrip.this.e;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (f >= BitmapDescriptorFactory.HUE_RED) {
                f2 = PagerTitleStrip.this.e;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.a(pagerTitleStrip2.f5870a.getCurrentItem(), f2, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageScrollStateChanged(int i) {
            this.f5875b = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageScrolled(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.a(i3, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public final void onPageSelected(int i) {
            if (this.f5875b == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.a(pagerTitleStrip.f5870a.getCurrentItem(), PagerTitleStrip.this.f5870a.getAdapter());
                float f = PagerTitleStrip.this.e;
                float f2 = BitmapDescriptorFactory.HUE_RED;
                if (f >= BitmapDescriptorFactory.HUE_RED) {
                    f2 = PagerTitleStrip.this.e;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.a(pagerTitleStrip2.f5870a.getCurrentItem(), f2, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static final class b extends SingleLineTransformationMethod {

        /* renamed from: a  reason: collision with root package name */
        private Locale f5876a;

        b(Context context) {
            this.f5876a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f5876a);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.e = -1.0f;
        this.l = new a();
        TextView textView = new TextView(context);
        this.f5871b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f5872c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f5873d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            h.a(this.f5871b, resourceId);
            h.a(this.f5872c, resourceId);
            h.a(this.f5873d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f5871b.setTextColor(color);
            this.f5872c.setTextColor(color);
            this.f5873d.setTextColor(color);
        }
        this.i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f = this.f5872c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f5871b.setEllipsize(TextUtils.TruncateAt.END);
        this.f5872c.setEllipsize(TextUtils.TruncateAt.END);
        this.f5873d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, o);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            a(this.f5871b);
            a(this.f5872c);
            a(this.f5873d);
        } else {
            this.f5871b.setSingleLine();
            this.f5872c.setSingleLine();
            this.f5873d.setSingleLine();
        }
        this.h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void a(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.g) {
            a(i, this.f5870a.getAdapter());
        } else if (!z && f == this.e) {
            return;
        }
        this.k = true;
        int measuredWidth = this.f5871b.getMeasuredWidth();
        int measuredWidth2 = this.f5872c.getMeasuredWidth();
        int measuredWidth3 = this.f5873d.getMeasuredWidth();
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
        int baseline = this.f5871b.getBaseline();
        int baseline2 = this.f5872c.getBaseline();
        int baseline3 = this.f5873d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f5871b.getMeasuredHeight() + i10, this.f5872c.getMeasuredHeight() + i11), this.f5873d.getMeasuredHeight() + i12);
        int i13 = this.i & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f5872c;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.h) - measuredWidth);
            TextView textView2 = this.f5871b;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.h);
            TextView textView3 = this.f5873d;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.e = f;
            this.k = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f5872c;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.h) - measuredWidth);
        TextView textView22 = this.f5871b;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.h);
        TextView textView32 = this.f5873d;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.e = f;
        this.k = false;
    }

    final void a(int i, androidx.viewpager.widget.a aVar) {
        int count = aVar != null ? aVar.getCount() : 0;
        this.j = true;
        this.f5871b.setText((i <= 0 || aVar == null) ? null : aVar.getPageTitle(i - 1));
        this.f5872c.setText((aVar == null || i >= count) ? null : aVar.getPageTitle(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < count) {
            charSequence = null;
            if (aVar != null) {
                charSequence = aVar.getPageTitle(i2);
            }
        }
        this.f5873d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f5871b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5872c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f5873d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.g = i;
        if (!this.k) {
            a(i, this.e, false);
        }
        this.j = false;
    }

    final void a(androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
        if (aVar != null) {
            aVar.b(this.l);
            this.m = null;
        }
        if (aVar2 != null) {
            aVar2.a(this.l);
            this.m = new WeakReference<>(aVar2);
        }
        ViewPager viewPager = this.f5870a;
        if (viewPager != null) {
            this.g = -1;
            this.e = -1.0f;
            a(viewPager.getCurrentItem(), aVar2);
            requestLayout();
        }
    }

    public final int b() {
        return this.h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            viewPager.setInternalPageChangeListener(this.l);
            viewPager.addOnAdapterChangeListener(this.l);
            this.f5870a = viewPager;
            WeakReference<androidx.viewpager.widget.a> weakReference = this.m;
            a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f5870a;
        if (viewPager != null) {
            a(viewPager.getAdapter(), (androidx.viewpager.widget.a) null);
            this.f5870a.setInternalPageChangeListener(null);
            this.f5870a.removeOnAdapterChangeListener(this.l);
            this.f5870a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f5870a != null) {
            float f = this.e;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            a(this.g, f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
            int size = View.MeasureSpec.getSize(i);
            int childMeasureSpec2 = getChildMeasureSpec(i, (int) (size * 0.2f), -2);
            this.f5871b.measure(childMeasureSpec2, childMeasureSpec);
            this.f5872c.measure(childMeasureSpec2, childMeasureSpec);
            this.f5873d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(a(), this.f5872c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f5872c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.j) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.i = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.p = i;
        int i2 = (i << 24) | (this.f & 16777215);
        this.f5871b.setTextColor(i2);
        this.f5873d.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f = i;
        this.f5872c.setTextColor(i);
        int i2 = (this.p << 24) | (this.f & 16777215);
        this.f5871b.setTextColor(i2);
        this.f5873d.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f5871b.setTextSize(i, f);
        this.f5872c.setTextSize(i, f);
        this.f5873d.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.h = i;
        requestLayout();
    }
}
