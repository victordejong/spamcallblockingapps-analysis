package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import com.viewpagerindicator.d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/IconPageIndicator.class */
public class IconPageIndicator extends HorizontalScrollView implements c {

    /* renamed from: a  reason: collision with root package name */
    private final b f35905a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f35906b;

    /* renamed from: c  reason: collision with root package name */
    private ViewPager.e f35907c;

    /* renamed from: d  reason: collision with root package name */
    private Runnable f35908d;
    private int e;

    public IconPageIndicator(Context context) {
        this(context, null);
    }

    public IconPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setHorizontalScrollBarEnabled(false);
        b bVar = new b(context, d.a.vpiIconPageIndicatorStyle);
        this.f35905a = bVar;
        addView(bVar, new FrameLayout.LayoutParams(-2, -1, 17));
    }

    private void a() {
        this.f35905a.removeAllViews();
        a aVar = (a) this.f35906b.getAdapter();
        int b2 = aVar.b();
        for (int i = 0; i < b2; i++) {
            ImageView imageView = new ImageView(getContext(), null, d.a.vpiIconPageIndicatorStyle);
            imageView.setImageResource(aVar.a());
            this.f35905a.addView(imageView);
        }
        if (this.e > b2) {
            this.e = b2 - 1;
        }
        setCurrentItem(this.e);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f35908d;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f35908d;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        ViewPager.e eVar = this.f35907c;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.e eVar = this.f35907c;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        setCurrentItem(i);
        ViewPager.e eVar = this.f35907c;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f35906b;
        if (viewPager != null) {
            this.e = i;
            viewPager.setCurrentItem(i);
            int childCount = this.f35905a.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f35905a.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    final View childAt2 = this.f35905a.getChildAt(i);
                    Runnable runnable = this.f35908d;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() { // from class: com.viewpagerindicator.IconPageIndicator.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            IconPageIndicator.this.smoothScrollTo(childAt2.getLeft() - ((IconPageIndicator.this.getWidth() - childAt2.getWidth()) / 2), 0);
                            IconPageIndicator.this.f35908d = null;
                        }
                    };
                    this.f35908d = runnable2;
                    post(runnable2);
                }
                i2++;
            }
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.f35907c = eVar;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f35906b;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.f35906b = viewPager;
                viewPager.setOnPageChangeListener(this);
                a();
                return;
            }
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
