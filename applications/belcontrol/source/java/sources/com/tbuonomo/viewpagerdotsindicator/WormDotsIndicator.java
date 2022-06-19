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
/* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/WormDotsIndicator.class */
public class WormDotsIndicator extends FrameLayout {

    /* renamed from: a */
    public List<ImageView> f5631a;

    /* renamed from: b */
    public ImageView f5632b;

    /* renamed from: c */
    public View f5633c;

    /* renamed from: d */
    public ViewPager f5634d;

    /* renamed from: f */
    public int f5635f;

    /* renamed from: g */
    public int f5636g;

    /* renamed from: h */
    public int f5637h;

    /* renamed from: j */
    public int f5638j;

    /* renamed from: k */
    public int f5639k;

    /* renamed from: l */
    public int f5640l;

    /* renamed from: m */
    public int f5641m;

    /* renamed from: n */
    public zc f5642n;

    /* renamed from: o */
    public zc f5643o;

    /* renamed from: p */
    public LinearLayout f5644p;

    /* renamed from: q */
    public boolean f5645q;

    /* renamed from: r */
    public ViewPager.AbstractC0208i f5646r;

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.WormDotsIndicator$a */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$a.class */
    public class C1253a extends yc {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1253a(String str) {
            super(str);
            WormDotsIndicator.this = r4;
        }

        public float getValue(Object obj) {
            return WormDotsIndicator.this.f5632b.getLayoutParams().width;
        }

        public void setValue(Object obj, float f) {
            WormDotsIndicator.this.f5632b.getLayoutParams().width = (int) f;
            WormDotsIndicator.this.f5632b.requestLayout();
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.WormDotsIndicator$b */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$b.class */
    public class View$OnClickListenerC1254b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f5648a;

        public View$OnClickListenerC1254b(int i) {
            WormDotsIndicator.this = r4;
            this.f5648a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!WormDotsIndicator.this.f5645q || WormDotsIndicator.this.f5634d == null || WormDotsIndicator.this.f5634d.getAdapter() == null || this.f5648a >= WormDotsIndicator.this.f5634d.getAdapter().e()) {
                return;
            }
            WormDotsIndicator.this.f5634d.setCurrentItem(this.f5648a, true);
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.WormDotsIndicator$c */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c.class */
    public class C1255c implements ViewPager.AbstractC0208i {
        public C1255c() {
            WormDotsIndicator.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        public void onPageScrollStateChanged(int i) {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onPageScrolled(int r5, float r6, int r7) {
            /*
                Method dump skipped, instructions count: 231
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tbuonomo.viewpagerdotsindicator.WormDotsIndicator.C1255c.onPageScrolled(int, float, int):void");
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
        public void onPageSelected(int i) {
        }
    }

    /* renamed from: com.tbuonomo.viewpagerdotsindicator.WormDotsIndicator$d */
    /* loaded from: classes3-dex2jar.jar:com/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$d.class */
    public class C1256d extends DataSetObserver {
        public C1256d() {
            WormDotsIndicator.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            WormDotsIndicator.this.m3026m();
        }
    }

    public WormDotsIndicator(Context context) {
        this(context, null);
    }

    public WormDotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WormDotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5631a = new ArrayList();
        this.f5644p = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int m3027l = m3027l(24);
        this.f5641m = m3027l;
        layoutParams.setMargins(m3027l, 0, m3027l, 0);
        this.f5644p.setLayoutParams(layoutParams);
        this.f5644p.setOrientation(0);
        addView(this.f5644p);
        this.f5635f = m3027l(16);
        this.f5636g = m3027l(4);
        this.f5637h = m3027l(2);
        this.f5638j = this.f5635f / 2;
        int m2145a = ej1.m2145a(context);
        this.f5639k = m2145a;
        this.f5640l = m2145a;
        this.f5645q = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, dj1.WormDotsIndicator);
            int color = obtainStyledAttributes.getColor(dj1.WormDotsIndicator_dotsColor, this.f5639k);
            this.f5639k = color;
            this.f5640l = obtainStyledAttributes.getColor(dj1.WormDotsIndicator_dotsStrokeColor, color);
            this.f5635f = (int) obtainStyledAttributes.getDimension(dj1.WormDotsIndicator_dotsSize, this.f5635f);
            this.f5636g = (int) obtainStyledAttributes.getDimension(dj1.WormDotsIndicator_dotsSpacing, this.f5636g);
            this.f5638j = (int) obtainStyledAttributes.getDimension(dj1.WormDotsIndicator_dotsCornerRadius, this.f5635f / 2);
            this.f5637h = (int) obtainStyledAttributes.getDimension(dj1.WormDotsIndicator_dotsStrokeWidth, this.f5637h);
            obtainStyledAttributes.recycle();
        }
        if (isInEditMode()) {
            m3029j(5);
            addView(m3028k(false));
        }
    }

    /* renamed from: j */
    public final void m3029j(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ViewGroup m3028k = m3028k(true);
            m3028k.setOnClickListener(new View$OnClickListenerC1254b(i2));
            this.f5631a.add((ImageView) m3028k.findViewById(bj1.worm_dot));
            this.f5644p.addView(m3028k);
        }
    }

    /* renamed from: k */
    public final ViewGroup m3028k(boolean z) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(cj1.worm_dot_layout, (ViewGroup) this, false);
        View findViewById = viewGroup.findViewById(bj1.worm_dot);
        findViewById.setBackground(g8.f(getContext(), z ? aj1.worm_dot_stroke_background : aj1.worm_dot_background));
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        int i = this.f5635f;
        layoutParams.height = i;
        layoutParams.width = i;
        layoutParams.addRule(15, -1);
        int i2 = this.f5636g;
        layoutParams.setMargins(i2, 0, i2, 0);
        m3024o(z, findViewById);
        return viewGroup;
    }

    /* renamed from: l */
    public final int m3027l(int i) {
        return (int) (getContext().getResources().getDisplayMetrics().density * i);
    }

    /* renamed from: m */
    public final void m3026m() {
        if (this.f5633c == null) {
            m3023p();
        }
        ViewPager viewPager = this.f5634d;
        if (viewPager == null || viewPager.getAdapter() == null) {
            Log.e(WormDotsIndicator.class.getSimpleName(), "You have to set an adapter to the view pager before !");
            return;
        }
        if (this.f5631a.size() < this.f5634d.getAdapter().e()) {
            m3029j(this.f5634d.getAdapter().e() - this.f5631a.size());
        } else if (this.f5631a.size() > this.f5634d.getAdapter().e()) {
            m3025n(this.f5631a.size() - this.f5634d.getAdapter().e());
        }
        m3022q();
    }

    /* renamed from: n */
    public final void m3025n(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            LinearLayout linearLayout = this.f5644p;
            linearLayout.removeViewAt(linearLayout.getChildCount() - 1);
            List<ImageView> list = this.f5631a;
            list.remove(list.size() - 1);
        }
    }

    /* renamed from: o */
    public final void m3024o(boolean z, View view) {
        GradientDrawable gradientDrawable = (GradientDrawable) view.getBackground();
        if (z) {
            gradientDrawable.setStroke(this.f5637h, this.f5640l);
        } else {
            gradientDrawable.setColor(this.f5639k);
        }
        gradientDrawable.setCornerRadius(this.f5638j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3026m();
    }

    /* renamed from: p */
    public final void m3023p() {
        ViewPager viewPager = this.f5634d;
        if (viewPager == null || viewPager.getAdapter() == null || this.f5634d.getAdapter().e() != 0) {
            ImageView imageView = this.f5632b;
            if (imageView != null && indexOfChild(imageView) != -1) {
                removeView(this.f5632b);
            }
            ViewGroup m3028k = m3028k(false);
            this.f5633c = m3028k;
            this.f5632b = (ImageView) m3028k.findViewById(bj1.worm_dot);
            addView(this.f5633c);
            this.f5642n = new zc(this.f5633c, xc.m);
            C0032ad c0032ad = new C0032ad(0.0f);
            c0032ad.m7233d(1.0f);
            c0032ad.m7231f(300.0f);
            this.f5642n.q(c0032ad);
            this.f5643o = new zc(this.f5633c, new C1253a("DotsWidth"));
            C0032ad c0032ad2 = new C0032ad(0.0f);
            c0032ad2.m7233d(1.0f);
            c0032ad2.m7231f(300.0f);
            this.f5643o.q(c0032ad2);
        }
    }

    /* renamed from: q */
    public final void m3022q() {
        ViewPager viewPager = this.f5634d;
        if (viewPager == null || viewPager.getAdapter() == null || this.f5634d.getAdapter().e() <= 0) {
            return;
        }
        ViewPager.AbstractC0208i abstractC0208i = this.f5646r;
        if (abstractC0208i != null) {
            this.f5634d.m5976J(abstractC0208i);
        }
        m3021r();
        this.f5634d.m5965c(this.f5646r);
        this.f5646r.onPageScrolled(0, 0.0f, 0);
    }

    /* renamed from: r */
    public final void m3021r() {
        this.f5646r = new C1255c();
    }

    /* renamed from: s */
    public final void m3020s() {
        if (this.f5634d.getAdapter() != null) {
            this.f5634d.getAdapter().l(new C1256d());
        }
    }

    public void setDotIndicatorColor(int i) {
        ImageView imageView = this.f5632b;
        if (imageView != null) {
            this.f5639k = i;
            m3024o(false, imageView);
        }
    }

    public void setDotsClickable(boolean z) {
        this.f5645q = z;
    }

    public void setStrokeDotsIndicatorColor(int i) {
        List<ImageView> list = this.f5631a;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f5640l = i;
        for (ImageView imageView : this.f5631a) {
            m3024o(true, imageView);
        }
    }

    public void setViewPager(ViewPager viewPager) {
        this.f5634d = viewPager;
        m3020s();
        m3026m();
    }
}
