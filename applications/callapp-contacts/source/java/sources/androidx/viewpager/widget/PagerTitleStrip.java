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
import androidx.core.widget.C0959h;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Locale;
@ViewPager.AbstractC2932a
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip.class */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: n */
    private static final int[] f10979n = {16842804, 16842901, 16842904, 16842927};

    /* renamed from: o */
    private static final int[] f10980o = {16843660};

    /* renamed from: a */
    ViewPager f10981a;

    /* renamed from: b */
    TextView f10982b;

    /* renamed from: c */
    TextView f10983c;

    /* renamed from: d */
    TextView f10984d;

    /* renamed from: e */
    float f10985e;

    /* renamed from: f */
    int f10986f;

    /* renamed from: g */
    private int f10987g;

    /* renamed from: h */
    private int f10988h;

    /* renamed from: i */
    private int f10989i;

    /* renamed from: j */
    private boolean f10990j;

    /* renamed from: k */
    private boolean f10991k;

    /* renamed from: l */
    private final C2925a f10992l;

    /* renamed from: m */
    private WeakReference<AbstractC2941a> f10993m;

    /* renamed from: p */
    private int f10994p;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$a.class */
    public final class C2925a extends DataSetObserver implements ViewPager.AbstractC2935d, ViewPager.AbstractC2936e {

        /* renamed from: b */
        private int f10996b;

        C2925a() {
            PagerTitleStrip.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2935d
        /* renamed from: a */
        public final void mo10092a(ViewPager viewPager, AbstractC2941a abstractC2941a, AbstractC2941a abstractC2941a2) {
            PagerTitleStrip.this.m39598a(abstractC2941a, abstractC2941a2);
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.m39600a(pagerTitleStrip.f10981a.getCurrentItem(), PagerTitleStrip.this.f10981a.getAdapter());
            float f = 0.0f;
            if (PagerTitleStrip.this.f10985e >= BitmapDescriptorFactory.HUE_RED) {
                f = PagerTitleStrip.this.f10985e;
            }
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            pagerTitleStrip2.mo39601a(pagerTitleStrip2.f10981a.getCurrentItem(), f, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageScrollStateChanged(int i) {
            this.f10996b = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageScrolled(int i, float f, int i2) {
            int i3 = i;
            if (f > 0.5f) {
                i3 = i + 1;
            }
            PagerTitleStrip.this.mo39601a(i3, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public final void onPageSelected(int i) {
            if (this.f10996b == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.m39600a(pagerTitleStrip.f10981a.getCurrentItem(), PagerTitleStrip.this.f10981a.getAdapter());
                float f = 0.0f;
                if (PagerTitleStrip.this.f10985e >= BitmapDescriptorFactory.HUE_RED) {
                    f = PagerTitleStrip.this.f10985e;
                }
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                pagerTitleStrip2.mo39601a(pagerTitleStrip2.f10981a.getCurrentItem(), f, true);
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTitleStrip$b.class */
    public static final class C2926b extends SingleLineTransformationMethod {

        /* renamed from: a */
        private Locale f10997a;

        C2926b(Context context) {
            this.f10997a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f10997a);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10987g = -1;
        this.f10985e = -1.0f;
        this.f10992l = new C2925a();
        TextView textView = new TextView(context);
        this.f10982b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f10983c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f10984d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10979n);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            C0959h.m43965a(this.f10982b, resourceId);
            C0959h.m43965a(this.f10983c, resourceId);
            C0959h.m43965a(this.f10984d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f10982b.setTextColor(color);
            this.f10983c.setTextColor(color);
            this.f10984d.setTextColor(color);
        }
        this.f10989i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f10986f = this.f10983c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f10982b.setEllipsize(TextUtils.TruncateAt.END);
        this.f10983c.setEllipsize(TextUtils.TruncateAt.END);
        this.f10984d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f10980o);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            m39599a(this.f10982b);
            m39599a(this.f10983c);
            m39599a(this.f10984d);
        } else {
            this.f10982b.setSingleLine();
            this.f10983c.setSingleLine();
            this.f10984d.setSingleLine();
        }
        this.f10988h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    /* renamed from: a */
    private static void m39599a(TextView textView) {
        textView.setTransformationMethod(new C2926b(textView.getContext()));
    }

    /* renamed from: a */
    public int mo39602a() {
        Drawable background = getBackground();
        return background != null ? background.getIntrinsicHeight() : 0;
    }

    /* renamed from: a */
    public void mo39601a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f10987g) {
            m39600a(i, this.f10981a.getAdapter());
        } else if (!z && f == this.f10985e) {
            return;
        }
        this.f10991k = true;
        int measuredWidth = this.f10982b.getMeasuredWidth();
        int measuredWidth2 = this.f10983c.getMeasuredWidth();
        int measuredWidth3 = this.f10984d.getMeasuredWidth();
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
        int baseline = this.f10982b.getBaseline();
        int baseline2 = this.f10983c.getBaseline();
        int baseline3 = this.f10984d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f10982b.getMeasuredHeight() + i10, this.f10983c.getMeasuredHeight() + i11), this.f10984d.getMeasuredHeight() + i12);
        int i13 = this.f10989i & 112;
        if (i13 == 16) {
            i5 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else if (i13 != 80) {
            i2 = i10 + paddingTop;
            i3 = i11 + paddingTop;
            i4 = paddingTop + i12;
            TextView textView = this.f10983c;
            textView.layout(i8, i3, i9, textView.getMeasuredHeight() + i3);
            int min = Math.min(paddingLeft, (i8 - this.f10988h) - measuredWidth);
            TextView textView2 = this.f10982b;
            textView2.layout(min, i2, measuredWidth + min, textView2.getMeasuredHeight() + i2);
            int max3 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f10988h);
            TextView textView3 = this.f10984d;
            textView3.layout(max3, i4, max3 + measuredWidth3, textView3.getMeasuredHeight() + i4);
            this.f10985e = f;
            this.f10991k = false;
        } else {
            i5 = (height - paddingBottom) - max2;
        }
        i2 = i10 + i5;
        i3 = i11 + i5;
        i4 = i5 + i12;
        TextView textView4 = this.f10983c;
        textView4.layout(i8, i3, i9, textView4.getMeasuredHeight() + i3);
        int min2 = Math.min(paddingLeft, (i8 - this.f10988h) - measuredWidth);
        TextView textView22 = this.f10982b;
        textView22.layout(min2, i2, measuredWidth + min2, textView22.getMeasuredHeight() + i2);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i9 + this.f10988h);
        TextView textView32 = this.f10984d;
        textView32.layout(max32, i4, max32 + measuredWidth3, textView32.getMeasuredHeight() + i4);
        this.f10985e = f;
        this.f10991k = false;
    }

    /* renamed from: a */
    final void m39600a(int i, AbstractC2941a abstractC2941a) {
        int count = abstractC2941a != null ? abstractC2941a.getCount() : 0;
        this.f10990j = true;
        this.f10982b.setText((i <= 0 || abstractC2941a == null) ? null : abstractC2941a.getPageTitle(i - 1));
        this.f10983c.setText((abstractC2941a == null || i >= count) ? null : abstractC2941a.getPageTitle(i));
        int i2 = i + 1;
        CharSequence charSequence = null;
        if (i2 < count) {
            charSequence = null;
            if (abstractC2941a != null) {
                charSequence = abstractC2941a.getPageTitle(i2);
            }
        }
        this.f10984d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f10982b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f10983c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f10984d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f10987g = i;
        if (!this.f10991k) {
            mo39601a(i, this.f10985e, false);
        }
        this.f10990j = false;
    }

    /* renamed from: a */
    final void m39598a(AbstractC2941a abstractC2941a, AbstractC2941a abstractC2941a2) {
        if (abstractC2941a != null) {
            abstractC2941a.m39590b(this.f10992l);
            this.f10993m = null;
        }
        if (abstractC2941a2 != null) {
            abstractC2941a2.m39594a(this.f10992l);
            this.f10993m = new WeakReference<>(abstractC2941a2);
        }
        ViewPager viewPager = this.f10981a;
        if (viewPager != null) {
            this.f10987g = -1;
            this.f10985e = -1.0f;
            m39600a(viewPager.getCurrentItem(), abstractC2941a2);
            requestLayout();
        }
    }

    /* renamed from: b */
    public final int m39597b() {
        return this.f10988h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewPager) {
            ViewPager viewPager = (ViewPager) parent;
            AbstractC2941a adapter = viewPager.getAdapter();
            viewPager.setInternalPageChangeListener(this.f10992l);
            viewPager.addOnAdapterChangeListener(this.f10992l);
            this.f10981a = viewPager;
            WeakReference<AbstractC2941a> weakReference = this.f10993m;
            m39598a(weakReference != null ? weakReference.get() : null, adapter);
            return;
        }
        throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f10981a;
        if (viewPager != null) {
            m39598a(viewPager.getAdapter(), (AbstractC2941a) null);
            this.f10981a.setInternalPageChangeListener(null);
            this.f10981a.removeOnAdapterChangeListener(this.f10992l);
            this.f10981a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f10981a != null) {
            float f = this.f10985e;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f = 0.0f;
            }
            mo39601a(this.f10987g, f, true);
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
            this.f10982b.measure(childMeasureSpec2, childMeasureSpec);
            this.f10983c.measure(childMeasureSpec2, childMeasureSpec);
            this.f10984d.measure(childMeasureSpec2, childMeasureSpec);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                i3 = View.MeasureSpec.getSize(i2);
            } else {
                i3 = Math.max(mo39602a(), this.f10983c.getMeasuredHeight() + paddingTop);
            }
            setMeasuredDimension(size, View.resolveSizeAndState(i3, i2, this.f10983c.getMeasuredState() << 16));
            return;
        }
        throw new IllegalStateException("Must measure with an exact width");
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f10990j) {
            super.requestLayout();
        }
    }

    public void setGravity(int i) {
        this.f10989i = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & 255;
        this.f10994p = i;
        int i2 = (i << 24) | (this.f10986f & 16777215);
        this.f10982b.setTextColor(i2);
        this.f10984d.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.f10986f = i;
        this.f10983c.setTextColor(i);
        int i2 = (this.f10994p << 24) | (this.f10986f & 16777215);
        this.f10982b.setTextColor(i2);
        this.f10984d.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f10982b.setTextSize(i, f);
        this.f10983c.setTextSize(i, f);
        this.f10984d.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.f10988h = i;
        requestLayout();
    }
}
