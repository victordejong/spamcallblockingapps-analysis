package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import com.viewpagerindicator.C17579d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/IconPageIndicator.class */
public class IconPageIndicator extends HorizontalScrollView implements AbstractC17578c {

    /* renamed from: a */
    private final C17577b f62228a;

    /* renamed from: b */
    private ViewPager f62229b;

    /* renamed from: c */
    private ViewPager.AbstractC2936e f62230c;

    /* renamed from: d */
    private Runnable f62231d;

    /* renamed from: e */
    private int f62232e;

    public IconPageIndicator(Context context) {
        this(context, null);
    }

    public IconPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setHorizontalScrollBarEnabled(false);
        C17577b c17577b = new C17577b(context, C17579d.C17580a.vpiIconPageIndicatorStyle);
        this.f62228a = c17577b;
        addView(c17577b, new FrameLayout.LayoutParams(-2, -1, 17));
    }

    /* renamed from: a */
    private void m4922a() {
        this.f62228a.removeAllViews();
        AbstractC17576a abstractC17576a = (AbstractC17576a) this.f62229b.getAdapter();
        int m4906b = abstractC17576a.m4906b();
        for (int i = 0; i < m4906b; i++) {
            ImageView imageView = new ImageView(getContext(), null, C17579d.C17580a.vpiIconPageIndicatorStyle);
            imageView.setImageResource(abstractC17576a.m4907a());
            this.f62228a.addView(imageView);
        }
        if (this.f62232e > m4906b) {
            this.f62232e = m4906b - 1;
        }
        setCurrentItem(this.f62232e);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f62231d;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f62231d;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62230c;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62230c;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        setCurrentItem(i);
        ViewPager.AbstractC2936e abstractC2936e = this.f62230c;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62229b;
        if (viewPager != null) {
            this.f62232e = i;
            viewPager.setCurrentItem(i);
            int childCount = this.f62228a.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f62228a.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    final View childAt2 = this.f62228a.getChildAt(i);
                    Runnable runnable = this.f62231d;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() { // from class: com.viewpagerindicator.IconPageIndicator.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            IconPageIndicator.this.smoothScrollTo(childAt2.getLeft() - ((IconPageIndicator.this.getWidth() - childAt2.getWidth()) / 2), 0);
                            IconPageIndicator.this.f62231d = null;
                        }
                    };
                    this.f62231d = runnable2;
                    post(runnable2);
                }
                i2++;
            }
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62230c = abstractC2936e;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62229b;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62229b = viewPager;
        viewPager.setOnPageChangeListener(this);
        m4922a();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
