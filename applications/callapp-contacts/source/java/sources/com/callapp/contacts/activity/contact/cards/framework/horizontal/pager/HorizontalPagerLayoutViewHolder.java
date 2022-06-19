package com.callapp.contacts.activity.contact.cards.framework.horizontal.pager;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.PaginationContainer;
import com.callapp.contacts.widget.horizontalHeader.FixedSpeedScroller;
import com.callapp.contacts.widget.viewpagertransformer.DepthPageTransformer;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder.class */
public class HorizontalPagerLayoutViewHolder<Data> {

    /* renamed from: b */
    private HorizontalPagerAdapter<Data> f21447b;

    /* renamed from: c */
    private ViewPager.AbstractC2936e f21448c;

    /* renamed from: d */
    private ViewPager f21449d;

    /* renamed from: f */
    private Timer f21451f;

    /* renamed from: j */
    private PaginationContainer f21455j;

    /* renamed from: e */
    private int f21450e = 0;

    /* renamed from: g */
    private final long f21452g = 2500;

    /* renamed from: h */
    private final long f21453h = 2500;

    /* renamed from: i */
    private boolean f21454i = true;

    /* renamed from: a */
    public boolean f21446a = true;

    public HorizontalPagerLayoutViewHolder(ViewGroup viewGroup, HorizontalPagerAdapter horizontalPagerAdapter) {
        this.f21455j = (PaginationContainer) viewGroup.findViewById(2131363475);
        this.f21447b = horizontalPagerAdapter;
        ViewPager viewPager = (ViewPager) viewGroup.findViewById(2131363474);
        this.f21449d = viewPager;
        viewPager.setAdapter(this.f21447b);
        ReflectionUtils.m27422a(this.f21449d, "mScroller", new FixedSpeedScroller(this.f21449d.getContext()));
        ViewPager.AbstractC2937f pageTransformer = getPageTransformer();
        if (pageTransformer != null) {
            this.f21449d.setPageTransformer(true, pageTransformer);
        }
        this.f21449d.addOnPageChangeListener(new ViewPager.AbstractC2936e() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.1
            @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
            public void onPageScrollStateChanged(int i) {
                if (HorizontalPagerLayoutViewHolder.this.f21448c != null) {
                    HorizontalPagerLayoutViewHolder.this.f21448c.onPageScrollStateChanged(i);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
            public void onPageScrolled(int i, float f, int i2) {
                if (HorizontalPagerLayoutViewHolder.this.f21448c != null) {
                    HorizontalPagerLayoutViewHolder.this.f21448c.onPageScrolled(i, f, i2);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
            public void onPageSelected(int i) {
                if (HorizontalPagerLayoutViewHolder.this.f21455j != null) {
                    HorizontalPagerLayoutViewHolder.this.f21455j.setCheckedPosition(i);
                }
                if (HorizontalPagerLayoutViewHolder.this.f21448c != null) {
                    HorizontalPagerLayoutViewHolder.this.f21448c.onPageSelected(i);
                }
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m31116a(View view) {
        m31109d();
    }

    /* renamed from: d */
    private void m31109d() {
        final HorizontalPagerAdapter<Data> adapter;
        if (!this.f21446a || (adapter = getAdapter()) == null || this.f21449d == null) {
            return;
        }
        final Handler handler = new Handler();
        final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.2
            @Override // java.lang.Runnable
            public void run() {
                if (HorizontalPagerLayoutViewHolder.this.f21450e == adapter.getCount() - 1) {
                    HorizontalPagerLayoutViewHolder.this.f21450e = 0;
                    HorizontalPagerLayoutViewHolder.this.f21451f.cancel();
                } else {
                    HorizontalPagerLayoutViewHolder.m31106f(HorizontalPagerLayoutViewHolder.this);
                }
                HorizontalPagerLayoutViewHolder.this.f21449d.setCurrentItem(HorizontalPagerLayoutViewHolder.this.f21450e, true);
            }
        };
        Timer timer = new Timer();
        this.f21451f = timer;
        timer.schedule(new TimerTask() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                handler.post(runnable);
            }
        }, 2500L, 2500L);
    }

    /* renamed from: f */
    static /* synthetic */ int m31106f(HorizontalPagerLayoutViewHolder horizontalPagerLayoutViewHolder) {
        int i = horizontalPagerLayoutViewHolder.f21450e;
        horizontalPagerLayoutViewHolder.f21450e = i + 1;
        return i;
    }

    /* renamed from: h */
    static /* synthetic */ boolean m31104h(HorizontalPagerLayoutViewHolder horizontalPagerLayoutViewHolder) {
        boolean z;
        Timer timer = horizontalPagerLayoutViewHolder.f21451f;
        if (timer != null) {
            timer.cancel();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final void m31117a() {
        HorizontalPagerAdapter<Data> adapter = getAdapter();
        if (adapter == null || this.f21449d == null) {
            return;
        }
        int count = adapter.getCount();
        this.f21449d.setOffscreenPageLimit(Math.min(count, 10));
        PaginationContainer paginationContainer = this.f21455j;
        if (paginationContainer == null) {
            return;
        }
        paginationContainer.mo26690a(count);
        this.f21455j.setCheckedPosition(this.f21449d.getCurrentItem());
    }

    /* renamed from: a */
    public final void m31114a(List<Data> list) {
        HorizontalPagerAdapter<Data> adapter = getAdapter();
        if (adapter != null) {
            adapter.m31118a(list);
            m31117a();
        }
    }

    /* renamed from: b */
    public final void m31113b() {
        if (this.f21449d.getWidth() <= 0) {
            ViewUtils.m27317a(this.f21449d, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager._$$Lambda$HorizontalPagerLayoutViewHolder$wVcoUkFqtuM2fMHhLEMqapkvZ6U
                @Override // com.callapp.contacts.api.ContextRunnable
                public final void run(Object obj) {
                    HorizontalPagerLayoutViewHolder.this.m31116a((View) obj);
                }
            });
        } else {
            m31109d();
        }
    }

    /* renamed from: c */
    public final void m31111c() {
        Timer timer = this.f21451f;
        if (timer != null) {
            timer.cancel();
        }
    }

    public HorizontalPagerAdapter<Data> getAdapter() {
        return this.f21447b;
    }

    public View.OnTouchListener getCancelAnimationOnTouchListener() {
        return new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (HorizontalPagerLayoutViewHolder.m31104h(HorizontalPagerLayoutViewHolder.this)) {
                    view.setOnTouchListener(null);
                    return false;
                }
                return false;
            }
        };
    }

    protected ViewPager.AbstractC2937f getPageTransformer() {
        return new DepthPageTransformer();
    }

    public ViewPager getPager() {
        return this.f21449d;
    }

    public void setPageChangedListener(ViewPager.AbstractC2936e abstractC2936e) {
        this.f21448c = abstractC2936e;
    }
}
