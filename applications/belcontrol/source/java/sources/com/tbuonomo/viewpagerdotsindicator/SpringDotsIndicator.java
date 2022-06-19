package com.tbuonomo.viewpagerdotsindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator.class */
public class SpringDotsIndicator extends FrameLayout {

    /* renamed from: a */
    public List<ImageView> f5609a;

    /* renamed from: b */
    public View f5610b;

    /* renamed from: c */
    public ViewPager f5611c;

    /* renamed from: d */
    public int f5612d;

    /* renamed from: f */
    public int f5613f;

    /* renamed from: g */
    public int f5614g;

    /* renamed from: h */
    public int f5615h;

    /* renamed from: j */
    public int f5616j;

    /* renamed from: k */
    public int f5617k;

    /* renamed from: l */
    public float f5618l;

    /* renamed from: m */
    public float f5619m;

    /* renamed from: n */
    public int f5620n;

    /* renamed from: o */
    public int f5621o;

    /* renamed from: p */
    public int f5622p;

    /* renamed from: q */
    public zc f5623q;

    /* renamed from: r */
    public LinearLayout f5624r;

    /* renamed from: s */
    public boolean f5625s;

    /* renamed from: t */
    public ViewPager.AbstractC0208i f5626t;

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.SpringDotsIndicator$a */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$a.class */
    public class View$OnClickListenerC1250a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f5627a;

        public View$OnClickListenerC1250a(int i) {
            SpringDotsIndicator.this = r4;
            this.f5627a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!SpringDotsIndicator.this.f5625s || SpringDotsIndicator.this.f5611c == null || SpringDotsIndicator.this.f5611c.getAdapter() == null || this.f5627a >= SpringDotsIndicator.this.f5611c.getAdapter().e()) {
                return;
            }
            SpringDotsIndicator.this.f5611c.setCurrentItem(this.f5627a, true);
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.SpringDotsIndicator$b */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b.class */
    public class C1251b implements ViewPager.AbstractC0208i {
        public C1251b() {
            SpringDotsIndicator.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        public void onPageScrolled(int i, float f, int i2) {
            float f2 = ((((i * (SpringDotsIndicator.this.f5612d + (SpringDotsIndicator.this.f5613f * 2))) + ((SpringDotsIndicator.this.f5612d + (SpringDotsIndicator.this.f5613f * 2)) * f)) + SpringDotsIndicator.this.f5622p) + SpringDotsIndicator.this.f5614g) - (SpringDotsIndicator.this.f5621o / 2.0f);
            SpringDotsIndicator.this.f5623q.n().m7232e(f2);
            SpringDotsIndicator.this.f5623q.m(f2);
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        public void onPageSelected(int i) {
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.SpringDotsIndicator$c */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$c.class */
    public class C1252c extends DataSetObserver {
        public C1252c() {
            SpringDotsIndicator.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            SpringDotsIndicator.this.m3045m();
        }
    }

    public SpringDotsIndicator(Context context) {
        this(context, null);
    }

    public SpringDotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpringDotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5609a = new ArrayList();
        this.f5624r = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int m3046l = m3046l(24);
        this.f5622p = m3046l;
        layoutParams.setMargins(m3046l, 0, m3046l, 0);
        this.f5624r.setLayoutParams(layoutParams);
        this.f5624r.setOrientation(0);
        addView(this.f5624r);
        this.f5612d = m3046l(16);
        this.f5613f = m3046l(4);
        this.f5614g = m3046l(2);
        this.f5621o = m3046l(1);
        this.f5615h = this.f5612d / 2;
        int m2145a = ej1.m2145a(context);
        this.f5617k = m2145a;
        this.f5616j = m2145a;
        this.f5618l = 300.0f;
        this.f5619m = 0.5f;
        this.f5625s = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, dj1.SpringDotsIndicator);
            int color = obtainStyledAttributes.getColor(dj1.SpringDotsIndicator_dotsColor, this.f5617k);
            this.f5617k = color;
            this.f5616j = obtainStyledAttributes.getColor(dj1.SpringDotsIndicator_dotsStrokeColor, color);
            this.f5612d = (int) obtainStyledAttributes.getDimension(dj1.SpringDotsIndicator_dotsSize, this.f5612d);
            this.f5613f = (int) obtainStyledAttributes.getDimension(dj1.SpringDotsIndicator_dotsSpacing, this.f5613f);
            this.f5615h = (int) obtainStyledAttributes.getDimension(dj1.SpringDotsIndicator_dotsCornerRadius, this.f5612d / 2);
            this.f5618l = obtainStyledAttributes.getFloat(dj1.SpringDotsIndicator_stiffness, this.f5618l);
            this.f5619m = obtainStyledAttributes.getFloat(dj1.SpringDotsIndicator_dampingRatio, this.f5619m);
            this.f5614g = (int) obtainStyledAttributes.getDimension(dj1.SpringDotsIndicator_dotsStrokeWidth, this.f5614g);
            obtainStyledAttributes.recycle();
        }
        this.f5620n = (this.f5612d - (this.f5614g * 2)) + this.f5621o;
        if (isInEditMode()) {
            m3048j(5);
            addView(m3047k(false));
        }
    }

    /* renamed from: j */
    public final void m3048j(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ViewGroup m3047k = m3047k(true);
            m3047k.setOnClickListener(new View$OnClickListenerC1250a(i2));
            this.f5609a.add((ImageView) m3047k.findViewById(bj1.spring_dot));
            this.f5624r.addView(m3047k);
        }
    }

    /* renamed from: k */
    public final ViewGroup m3047k(boolean z) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(cj1.spring_dot_layout, (ViewGroup) this, false);
        ImageView imageView = (ImageView) viewGroup.findViewById(bj1.spring_dot);
        imageView.setBackground(g8.f(getContext(), z ? aj1.spring_dot_stroke_background : aj1.spring_dot_background));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        int i = z ? this.f5612d : this.f5620n;
        layoutParams.height = i;
        layoutParams.width = i;
        layoutParams.addRule(15, -1);
        int i2 = this.f5613f;
        layoutParams.setMargins(i2, 0, i2, 0);
        m3043o(z, imageView);
        return viewGroup;
    }

    /* renamed from: l */
    public final int m3046l(int i) {
        return (int) (getContext().getResources().getDisplayMetrics().density * i);
    }

    /* renamed from: m */
    public final void m3045m() {
        if (this.f5610b == null) {
            m3042p();
        }
        ViewPager viewPager = this.f5611c;
        if (viewPager == null || viewPager.getAdapter() == null) {
            Log.e(SpringDotsIndicator.class.getSimpleName(), "You have to set an adapter to the view pager before !");
            return;
        }
        if (this.f5609a.size() < this.f5611c.getAdapter().e()) {
            m3048j(this.f5611c.getAdapter().e() - this.f5609a.size());
        } else if (this.f5609a.size() > this.f5611c.getAdapter().e()) {
            m3044n(this.f5609a.size() - this.f5611c.getAdapter().e());
        }
        m3041q();
    }

    /* renamed from: n */
    public final void m3044n(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            LinearLayout linearLayout = this.f5624r;
            linearLayout.removeViewAt(linearLayout.getChildCount() - 1);
            List<ImageView> list = this.f5609a;
            list.remove(list.size() - 1);
        }
    }

    /* renamed from: o */
    public final void m3043o(boolean z, View view) {
        GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
        if (z) {
            gradientDrawable.setStroke(this.f5614g, this.f5616j);
        } else {
            gradientDrawable.setColor(this.f5617k);
        }
        gradientDrawable.setCornerRadius(this.f5615h);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3045m();
    }

    /* renamed from: p */
    public final void m3042p() {
        ViewPager viewPager = this.f5611c;
        if (viewPager == null || viewPager.getAdapter() == null || this.f5611c.getAdapter().e() != 0) {
            View view = this.f5610b;
            if (view != null && indexOfChild(view) != -1) {
                removeView(this.f5610b);
            }
            ViewGroup m3047k = m3047k(false);
            this.f5610b = m3047k;
            addView(m3047k);
            this.f5623q = new zc(this.f5610b, xc.m);
            C0032ad c0032ad = new C0032ad(0.0f);
            c0032ad.m7233d(this.f5619m);
            c0032ad.m7231f(this.f5618l);
            this.f5623q.q(c0032ad);
        }
    }

    /* renamed from: q */
    public final void m3041q() {
        ViewPager viewPager = this.f5611c;
        if (viewPager == null || viewPager.getAdapter() == null || this.f5611c.getAdapter().e() <= 0) {
            return;
        }
        ViewPager.AbstractC0208i abstractC0208i = this.f5626t;
        if (abstractC0208i != null) {
            this.f5611c.m5976J(abstractC0208i);
        }
        m3040r();
        this.f5611c.m5965c(this.f5626t);
        this.f5626t.onPageScrolled(0, 0.0f, 0);
    }

    /* renamed from: r */
    public final void m3040r() {
        this.f5626t = new C1251b();
    }

    /* renamed from: s */
    public final void m3039s() {
        if (this.f5611c.getAdapter() != null) {
            this.f5611c.getAdapter().l(new C1252c());
        }
    }

    public void setDotIndicatorColor(int i) {
        View view = this.f5610b;
        if (view != null) {
            this.f5617k = i;
            m3043o(false, view);
        }
    }

    public void setDotsClickable(boolean z) {
        this.f5625s = z;
    }

    public void setStrokeDotsIndicatorColor(int i) {
        List<ImageView> list = this.f5609a;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f5616j = i;
        for (ImageView imageView : this.f5609a) {
            m3043o(true, imageView);
        }
    }

    public void setViewPager(ViewPager viewPager) {
        this.f5611c = viewPager;
        m3039s();
        m3045m();
    }
}
