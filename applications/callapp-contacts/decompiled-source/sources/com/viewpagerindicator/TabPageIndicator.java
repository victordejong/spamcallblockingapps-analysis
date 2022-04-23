package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.viewpagerindicator.d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator.class */
public class TabPageIndicator extends HorizontalScrollView implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final CharSequence f35915a = "";

    /* renamed from: b  reason: collision with root package name */
    private Runnable f35916b;

    /* renamed from: c  reason: collision with root package name */
    private final View.OnClickListener f35917c;

    /* renamed from: d  reason: collision with root package name */
    private final com.viewpagerindicator.b f35918d;
    private ViewPager e;
    private ViewPager.e f;
    private int g;
    private int h;
    private a i;

    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$a.class */
    public interface a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$b.class */
    public final class b extends TextView {

        /* renamed from: a  reason: collision with root package name */
        int f35922a;

        public b(Context context) {
            super(context, null, d.a.vpiTabPageIndicatorStyle);
        }

        @Override // android.widget.TextView, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (TabPageIndicator.this.g > 0 && getMeasuredWidth() > TabPageIndicator.this.g) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.this.g, 1073741824), i2);
            }
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35917c = new View.OnClickListener() { // from class: com.viewpagerindicator.TabPageIndicator.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int currentItem = TabPageIndicator.this.e.getCurrentItem();
                int i = ((b) view).f35922a;
                TabPageIndicator.this.e.setCurrentItem(i);
                if (currentItem == i && TabPageIndicator.this.i != null) {
                    a unused = TabPageIndicator.this.i;
                }
            }
        };
        setHorizontalScrollBarEnabled(false);
        com.viewpagerindicator.b bVar = new com.viewpagerindicator.b(context, d.a.vpiTabPageIndicatorStyle);
        this.f35918d = bVar;
        addView(bVar, new ViewGroup.LayoutParams(-2, -1));
    }

    private void a() {
        this.f35918d.removeAllViews();
        androidx.viewpager.widget.a adapter = this.e.getAdapter();
        com.viewpagerindicator.a aVar = adapter instanceof com.viewpagerindicator.a ? (com.viewpagerindicator.a) adapter : null;
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            CharSequence pageTitle = adapter.getPageTitle(i);
            CharSequence charSequence = pageTitle;
            if (pageTitle == null) {
                charSequence = f35915a;
            }
            int a2 = aVar != null ? aVar.a() : 0;
            b bVar = new b(getContext());
            bVar.f35922a = i;
            bVar.setFocusable(true);
            bVar.setOnClickListener(this.f35917c);
            bVar.setText(charSequence);
            if (a2 != 0) {
                bVar.setCompoundDrawablesWithIntrinsicBounds(a2, 0, 0, 0);
            }
            this.f35918d.addView(bVar, new LinearLayout.LayoutParams(0, -1, 1.0f));
        }
        if (this.h > count) {
            this.h = count - 1;
        }
        setCurrentItem(this.h);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f35916b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f35916b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f35918d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.g = -1;
        } else if (childCount > 2) {
            this.g = (int) (View.MeasureSpec.getSize(i) * 0.4f);
        } else {
            this.g = View.MeasureSpec.getSize(i) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, i2);
        int measuredWidth2 = getMeasuredWidth();
        if (z && measuredWidth != measuredWidth2) {
            setCurrentItem(this.h);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrollStateChanged(int i) {
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.e
    public void onPageSelected(int i) {
        setCurrentItem(i);
        ViewPager.e eVar = this.f;
        if (eVar != null) {
            eVar.onPageSelected(i);
        }
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.e;
        if (viewPager != null) {
            this.h = i;
            viewPager.setCurrentItem(i);
            int childCount = this.f35918d.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f35918d.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    final View childAt2 = this.f35918d.getChildAt(i);
                    Runnable runnable = this.f35916b;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() { // from class: com.viewpagerindicator.TabPageIndicator.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            TabPageIndicator.this.smoothScrollTo(childAt2.getLeft() - ((TabPageIndicator.this.getWidth() - childAt2.getWidth()) / 2), 0);
                            TabPageIndicator.this.f35916b = null;
                        }
                    };
                    this.f35916b = runnable2;
                    post(runnable2);
                }
                i2++;
            }
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setOnPageChangeListener(ViewPager.e eVar) {
        this.f = eVar;
    }

    public void setOnTabReselectedListener(a aVar) {
        this.i = aVar;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.e;
        if (viewPager2 != viewPager) {
            if (viewPager2 != null) {
                viewPager2.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() != null) {
                this.e = viewPager;
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
