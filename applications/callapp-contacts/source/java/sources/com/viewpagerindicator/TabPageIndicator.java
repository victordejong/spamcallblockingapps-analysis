package com.viewpagerindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.AbstractC2941a;
import androidx.viewpager.widget.ViewPager;
import com.viewpagerindicator.C17579d;
/* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator.class */
public class TabPageIndicator extends HorizontalScrollView implements AbstractC17578c {

    /* renamed from: a */
    private static final CharSequence f62247a = "";

    /* renamed from: b */
    private Runnable f62248b;

    /* renamed from: c */
    private final View.OnClickListener f62249c;

    /* renamed from: d */
    private final C17577b f62250d;

    /* renamed from: e */
    private ViewPager f62251e;

    /* renamed from: f */
    private ViewPager.AbstractC2936e f62252f;

    /* renamed from: g */
    private int f62253g;

    /* renamed from: h */
    private int f62254h;

    /* renamed from: i */
    private AbstractC17566a f62255i;

    /* renamed from: com.viewpagerindicator.TabPageIndicator$a */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$a.class */
    public interface AbstractC17566a {
    }

    /* renamed from: com.viewpagerindicator.TabPageIndicator$b */
    /* loaded from: classes5-dex2jar.jar:com/viewpagerindicator/TabPageIndicator$b.class */
    public final class C17567b extends TextView {

        /* renamed from: a */
        int f62259a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17567b(Context context) {
            super(context, null, C17579d.C17580a.vpiTabPageIndicatorStyle);
            TabPageIndicator.this = r6;
        }

        @Override // android.widget.TextView, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (TabPageIndicator.this.f62253g <= 0 || getMeasuredWidth() <= TabPageIndicator.this.f62253g) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.this.f62253g, 1073741824), i2);
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f62249c = new View.OnClickListener() { // from class: com.viewpagerindicator.TabPageIndicator.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int currentItem = TabPageIndicator.this.f62251e.getCurrentItem();
                int i = ((C17567b) view).f62259a;
                TabPageIndicator.this.f62251e.setCurrentItem(i);
                if (currentItem != i || TabPageIndicator.this.f62255i == null) {
                    return;
                }
                AbstractC17566a unused = TabPageIndicator.this.f62255i;
            }
        };
        setHorizontalScrollBarEnabled(false);
        C17577b c17577b = new C17577b(context, C17579d.C17580a.vpiTabPageIndicatorStyle);
        this.f62250d = c17577b;
        addView(c17577b, new ViewGroup.LayoutParams(-2, -1));
    }

    /* renamed from: a */
    private void m4920a() {
        this.f62250d.removeAllViews();
        AbstractC2941a adapter = this.f62251e.getAdapter();
        AbstractC17576a abstractC17576a = adapter instanceof AbstractC17576a ? (AbstractC17576a) adapter : null;
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            CharSequence pageTitle = adapter.getPageTitle(i);
            CharSequence charSequence = pageTitle;
            if (pageTitle == null) {
                charSequence = f62247a;
            }
            int m4907a = abstractC17576a != null ? abstractC17576a.m4907a() : 0;
            C17567b c17567b = new C17567b(getContext());
            c17567b.f62259a = i;
            c17567b.setFocusable(true);
            c17567b.setOnClickListener(this.f62249c);
            c17567b.setText(charSequence);
            if (m4907a != 0) {
                c17567b.setCompoundDrawablesWithIntrinsicBounds(m4907a, 0, 0, 0);
            }
            this.f62250d.addView(c17567b, new LinearLayout.LayoutParams(0, -1, 1.0f));
        }
        if (this.f62254h > count) {
            this.f62254h = count - 1;
        }
        setCurrentItem(this.f62254h);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f62248b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f62248b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f62250d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f62253g = -1;
        } else if (childCount > 2) {
            this.f62253g = (int) (View.MeasureSpec.getSize(i) * 0.4f);
        } else {
            this.f62253g = View.MeasureSpec.getSize(i) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, i2);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setCurrentItem(this.f62254h);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrollStateChanged(int i) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62252f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.AbstractC2936e abstractC2936e = this.f62252f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
    public void onPageSelected(int i) {
        setCurrentItem(i);
        ViewPager.AbstractC2936e abstractC2936e = this.f62252f;
        if (abstractC2936e != null) {
            abstractC2936e.onPageSelected(i);
        }
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.f62251e;
        if (viewPager != null) {
            this.f62254h = i;
            viewPager.setCurrentItem(i);
            int childCount = this.f62250d.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f62250d.getChildAt(i2);
                boolean z = i2 == i;
                childAt.setSelected(z);
                if (z) {
                    final View childAt2 = this.f62250d.getChildAt(i);
                    Runnable runnable = this.f62248b;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() { // from class: com.viewpagerindicator.TabPageIndicator.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            TabPageIndicator.this.smoothScrollTo(childAt2.getLeft() - ((TabPageIndicator.this.getWidth() - childAt2.getWidth()) / 2), 0);
                            TabPageIndicator.this.f62248b = null;
                        }
                    };
                    this.f62248b = runnable2;
                    post(runnable2);
                }
                i2++;
            }
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    public void setOnPageChangeListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f62252f = abstractC2936e;
    }

    public void setOnTabReselectedListener(AbstractC17566a abstractC17566a) {
        this.f62255i = abstractC17566a;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f62251e;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f62251e = viewPager;
        viewPager.setOnPageChangeListener(this);
        m4920a();
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
