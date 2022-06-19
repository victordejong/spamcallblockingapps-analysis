package com.tbuonomo.viewpagerdotsindicator;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/DotsIndicator.class */
public class DotsIndicator extends LinearLayout {

    /* renamed from: a */
    public List<ImageView> f5592a;

    /* renamed from: b */
    public ViewPager f5593b;

    /* renamed from: c */
    public float f5594c;

    /* renamed from: d */
    public float f5595d;

    /* renamed from: f */
    public float f5596f;

    /* renamed from: g */
    public float f5597g;

    /* renamed from: h */
    public int f5598h;

    /* renamed from: j */
    public int f5599j;

    /* renamed from: k */
    public boolean f5600k;

    /* renamed from: l */
    public boolean f5601l;

    /* renamed from: m */
    public ArgbEvaluator f5602m;

    /* renamed from: n */
    public yi1 f5603n;

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$a */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/DotsIndicator$a.class */
    public class RunnableC1246a implements Runnable {
        public RunnableC1246a() {
            DotsIndicator.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DotsIndicator.this.m3062v();
            DotsIndicator.this.m3063u();
            DotsIndicator.this.m3061w();
            DotsIndicator.this.m3060x();
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$b */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/DotsIndicator$b.class */
    public class View$OnClickListenerC1247b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f5605a;

        public View$OnClickListenerC1247b(int i) {
            DotsIndicator.this = r4;
            this.f5605a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!DotsIndicator.this.f5601l || DotsIndicator.this.f5593b == null || DotsIndicator.this.f5593b.getAdapter() == null || this.f5605a >= DotsIndicator.this.f5593b.getAdapter().e()) {
                return;
            }
            DotsIndicator.this.f5593b.setCurrentItem(this.f5605a, true);
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$c */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/DotsIndicator$c.class */
    public class C1248c extends yi1 {
        public C1248c() {
            DotsIndicator.this = r4;
        }

        @Override // p000.yi1
        /* renamed from: a */
        public int mo78a() {
            return DotsIndicator.this.f5592a.size();
        }

        @Override // p000.yi1
        /* renamed from: b */
        public void mo77b(int i, int i2, float f) {
            if (i == -1) {
                return;
            }
            ImageView imageView = (ImageView) DotsIndicator.this.f5592a.get(i);
            DotsIndicator.this.m3058z(imageView, (int) (DotsIndicator.this.f5594c + (DotsIndicator.this.f5594c * (DotsIndicator.this.f5597g - 1.0f) * (1.0f - f))));
            if (i2 == -1) {
                return;
            }
            ImageView imageView2 = (ImageView) DotsIndicator.this.f5592a.get(i2);
            if (imageView2 != null) {
                DotsIndicator.this.m3058z(imageView2, (int) (DotsIndicator.this.f5594c + (DotsIndicator.this.f5594c * (DotsIndicator.this.f5597g - 1.0f) * f)));
                xi1 xi1Var = (xi1) imageView.getBackground();
                xi1 xi1Var2 = (xi1) imageView2.getBackground();
                if (DotsIndicator.this.f5599j != DotsIndicator.this.f5598h) {
                    int intValue = ((Integer) DotsIndicator.this.f5602m.evaluate(f, Integer.valueOf(DotsIndicator.this.f5599j), Integer.valueOf(DotsIndicator.this.f5598h))).intValue();
                    xi1Var2.setColor(((Integer) DotsIndicator.this.f5602m.evaluate(f, Integer.valueOf(DotsIndicator.this.f5598h), Integer.valueOf(DotsIndicator.this.f5599j))).intValue());
                    if (!DotsIndicator.this.f5600k || i > DotsIndicator.this.f5593b.getCurrentItem()) {
                        xi1Var.setColor(intValue);
                    } else {
                        xi1Var.setColor(DotsIndicator.this.f5599j);
                    }
                }
            }
            DotsIndicator.this.invalidate();
        }

        @Override // p000.yi1
        /* renamed from: c */
        public void mo76c(int i) {
            DotsIndicator dotsIndicator = DotsIndicator.this;
            dotsIndicator.m3058z((ImageView) dotsIndicator.f5592a.get(i), (int) DotsIndicator.this.f5594c);
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$d */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/DotsIndicator$d.class */
    public class C1249d extends DataSetObserver {
        public C1249d() {
            DotsIndicator.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            DotsIndicator.this.m3064t();
        }
    }

    public DotsIndicator(Context context) {
        this(context, null);
    }

    public DotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5602m = new ArgbEvaluator();
        m3065s(attributeSet);
    }

    /* renamed from: A */
    public final void m3084A() {
        if (this.f5593b.getAdapter() != null) {
            this.f5593b.getAdapter().l(new C1249d());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3064t();
    }

    /* renamed from: p */
    public final void m3068p(int i) {
        int i2 = 0;
        while (i2 < i) {
            View inflate = LayoutInflater.from(getContext()).inflate(cj1.dot_layout, (ViewGroup) this, false);
            ImageView imageView = (ImageView) inflate.findViewById(bj1.dot);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            int i3 = (int) this.f5594c;
            layoutParams.height = i3;
            layoutParams.width = i3;
            float f = this.f5596f;
            layoutParams.setMargins((int) f, 0, (int) f, 0);
            xi1 xi1Var = new xi1();
            xi1Var.setCornerRadius(this.f5595d);
            xi1Var.setColor((!isInEditMode() ? this.f5593b.getCurrentItem() != i2 : i2 != 0) ? this.f5598h : this.f5599j);
            imageView.setBackground(xi1Var);
            inflate.setOnClickListener(new View$OnClickListenerC1247b(i2));
            this.f5592a.add(imageView);
            addView(inflate);
            i2++;
        }
    }

    /* renamed from: q */
    public final yi1 m3067q() {
        return new C1248c();
    }

    /* renamed from: r */
    public final int m3066r(int i) {
        return (int) (getContext().getResources().getDisplayMetrics().density * i);
    }

    /* renamed from: s */
    public final void m3065s(AttributeSet attributeSet) {
        this.f5592a = new ArrayList();
        setOrientation(0);
        this.f5594c = m3066r(16);
        this.f5596f = m3066r(4);
        this.f5595d = this.f5594c / 2.0f;
        this.f5597g = 2.5f;
        this.f5598h = -16711681;
        this.f5601l = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, dj1.DotsIndicator);
            this.f5598h = obtainStyledAttributes.getColor(dj1.DotsIndicator_dotsColor, -16711681);
            this.f5599j = obtainStyledAttributes.getColor(dj1.DotsIndicator_selectedDotColor, -16711681);
            float f = obtainStyledAttributes.getFloat(dj1.DotsIndicator_dotsWidthFactor, 2.5f);
            this.f5597g = f;
            if (f < 1.0f) {
                this.f5597g = 2.5f;
            }
            float dimension = obtainStyledAttributes.getDimension(dj1.DotsIndicator_dotsSize, this.f5594c);
            this.f5594c = dimension;
            this.f5595d = (int) obtainStyledAttributes.getDimension(dj1.DotsIndicator_dotsCornerRadius, dimension / 2.0f);
            this.f5596f = obtainStyledAttributes.getDimension(dj1.DotsIndicator_dotsSpacing, this.f5596f);
            this.f5600k = obtainStyledAttributes.getBoolean(dj1.DotsIndicator_progressMode, false);
            obtainStyledAttributes.recycle();
        }
        if (isInEditMode()) {
            m3068p(5);
        }
        m3064t();
    }

    public void setDotsClickable(boolean z) {
        this.f5601l = z;
    }

    public void setPointsColor(int i) {
        this.f5598h = i;
        m3063u();
    }

    public void setSelectedPointColor(int i) {
        this.f5599j = i;
        m3063u();
    }

    public void setViewPager(ViewPager viewPager) {
        this.f5593b = viewPager;
        m3084A();
        m3064t();
    }

    /* renamed from: t */
    public final void m3064t() {
        ViewPager viewPager = this.f5593b;
        if (viewPager == null || viewPager.getAdapter() == null) {
            Log.e(DotsIndicator.class.getSimpleName(), "You have to set an adapter to the view pager before !");
        } else {
            post(new RunnableC1246a());
        }
    }

    /* renamed from: u */
    public final void m3063u() {
        if (this.f5592a == null) {
            return;
        }
        int i = 0;
        while (i < this.f5592a.size()) {
            ImageView imageView = this.f5592a.get(i);
            xi1 xi1Var = (xi1) imageView.getBackground();
            xi1Var.setColor((i == this.f5593b.getCurrentItem() || (this.f5600k && i < this.f5593b.getCurrentItem())) ? this.f5599j : this.f5598h);
            imageView.setBackground(xi1Var);
            imageView.invalidate();
            i++;
        }
    }

    /* renamed from: v */
    public final void m3062v() {
        if (this.f5592a.size() < this.f5593b.getAdapter().e()) {
            m3068p(this.f5593b.getAdapter().e() - this.f5592a.size());
        } else if (this.f5592a.size() <= this.f5593b.getAdapter().e()) {
        } else {
            m3059y(this.f5592a.size() - this.f5593b.getAdapter().e());
        }
    }

    /* renamed from: w */
    public final void m3061w() {
        if (this.f5592a == null) {
            return;
        }
        for (int i = 0; i < this.f5593b.getCurrentItem(); i++) {
            m3058z(this.f5592a.get(i), (int) this.f5594c);
        }
    }

    /* renamed from: x */
    public final void m3060x() {
        ViewPager viewPager = this.f5593b;
        if (viewPager == null || viewPager.getAdapter() == null || this.f5593b.getAdapter().e() <= 0) {
            return;
        }
        this.f5593b.m5976J(this.f5603n);
        yi1 m3067q = m3067q();
        this.f5603n = m3067q;
        this.f5593b.m5965c(m3067q);
        this.f5603n.mo77b(this.f5593b.getCurrentItem(), -1, 0.0f);
    }

    /* renamed from: y */
    public final void m3059y(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            removeViewAt(getChildCount() - 1);
            List<ImageView> list = this.f5592a;
            list.remove(list.size() - 1);
        }
    }

    /* renamed from: z */
    public final void m3058z(ImageView imageView, int i) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = i;
        imageView.setLayoutParams(layoutParams);
    }
}
