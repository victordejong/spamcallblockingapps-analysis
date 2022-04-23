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

    /* renamed from: b  reason: collision with root package name */
    private HorizontalPagerAdapter<Data> f11903b;

    /* renamed from: c  reason: collision with root package name */
    private ViewPager.e f11904c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f11905d;
    private Timer f;
    private PaginationContainer j;
    private int e = 0;
    private final long g = 2500;
    private final long h = 2500;
    private boolean i = true;

    /* renamed from: a  reason: collision with root package name */
    public boolean f11902a = true;

    public HorizontalPagerLayoutViewHolder(ViewGroup viewGroup, HorizontalPagerAdapter horizontalPagerAdapter) {
        this.j = (PaginationContainer) viewGroup.findViewById(2131363475);
        this.f11903b = horizontalPagerAdapter;
        ViewPager viewPager = (ViewPager) viewGroup.findViewById(2131363474);
        this.f11905d = viewPager;
        viewPager.setAdapter(this.f11903b);
        ReflectionUtils.a(this.f11905d, "mScroller", new FixedSpeedScroller(this.f11905d.getContext()));
        ViewPager.f pageTransformer = getPageTransformer();
        if (pageTransformer != null) {
            this.f11905d.setPageTransformer(true, pageTransformer);
        }
        this.f11905d.addOnPageChangeListener(new ViewPager.e() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.1
            @Override // androidx.viewpager.widget.ViewPager.e
            public void onPageScrollStateChanged(int i) {
                if (HorizontalPagerLayoutViewHolder.this.f11904c != null) {
                    HorizontalPagerLayoutViewHolder.this.f11904c.onPageScrollStateChanged(i);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.e
            public void onPageScrolled(int i, float f, int i2) {
                if (HorizontalPagerLayoutViewHolder.this.f11904c != null) {
                    HorizontalPagerLayoutViewHolder.this.f11904c.onPageScrolled(i, f, i2);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.e
            public void onPageSelected(int i) {
                if (HorizontalPagerLayoutViewHolder.this.j != null) {
                    HorizontalPagerLayoutViewHolder.this.j.setCheckedPosition(i);
                }
                if (HorizontalPagerLayoutViewHolder.this.f11904c != null) {
                    HorizontalPagerLayoutViewHolder.this.f11904c.onPageSelected(i);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        d();
    }

    private void d() {
        final HorizontalPagerAdapter<Data> adapter;
        if (this.f11902a && (adapter = getAdapter()) != null && this.f11905d != null) {
            final Handler handler = new Handler();
            final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.2
                @Override // java.lang.Runnable
                public void run() {
                    if (HorizontalPagerLayoutViewHolder.this.e == adapter.getCount() - 1) {
                        HorizontalPagerLayoutViewHolder.this.e = 0;
                        HorizontalPagerLayoutViewHolder.this.f.cancel();
                    } else {
                        HorizontalPagerLayoutViewHolder.f(HorizontalPagerLayoutViewHolder.this);
                    }
                    HorizontalPagerLayoutViewHolder.this.f11905d.setCurrentItem(HorizontalPagerLayoutViewHolder.this.e, true);
                }
            };
            Timer timer = new Timer();
            this.f = timer;
            timer.schedule(new TimerTask() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.3
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    handler.post(runnable);
                }
            }, 2500L, 2500L);
        }
    }

    static /* synthetic */ int f(HorizontalPagerLayoutViewHolder horizontalPagerLayoutViewHolder) {
        int i = horizontalPagerLayoutViewHolder.e;
        horizontalPagerLayoutViewHolder.e = i + 1;
        return i;
    }

    static /* synthetic */ boolean h(HorizontalPagerLayoutViewHolder horizontalPagerLayoutViewHolder) {
        boolean z;
        Timer timer = horizontalPagerLayoutViewHolder.f;
        if (timer != null) {
            timer.cancel();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public final void a() {
        HorizontalPagerAdapter<Data> adapter = getAdapter();
        if (adapter != null && this.f11905d != null) {
            int count = adapter.getCount();
            this.f11905d.setOffscreenPageLimit(Math.min(count, 10));
            PaginationContainer paginationContainer = this.j;
            if (paginationContainer != null) {
                paginationContainer.a(count);
                this.j.setCheckedPosition(this.f11905d.getCurrentItem());
            }
        }
    }

    public final void a(List<Data> list) {
        HorizontalPagerAdapter<Data> adapter = getAdapter();
        if (adapter != null) {
            adapter.a(list);
            a();
        }
    }

    public final void b() {
        if (this.f11905d.getWidth() <= 0) {
            ViewUtils.a(this.f11905d, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager._$$Lambda$HorizontalPagerLayoutViewHolder$wVcoUkFqtuM2fMHhLEMqapkvZ6U
                @Override // com.callapp.contacts.api.ContextRunnable
                public final void run(Object obj) {
                    HorizontalPagerLayoutViewHolder.this.a((View) obj);
                }
            });
        } else {
            d();
        }
    }

    public final void c() {
        Timer timer = this.f;
        if (timer != null) {
            timer.cancel();
        }
    }

    public HorizontalPagerAdapter<Data> getAdapter() {
        return this.f11903b;
    }

    public View.OnTouchListener getCancelAnimationOnTouchListener() {
        return new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!HorizontalPagerLayoutViewHolder.h(HorizontalPagerLayoutViewHolder.this)) {
                    return false;
                }
                view.setOnTouchListener(null);
                return false;
            }
        };
    }

    protected ViewPager.f getPageTransformer() {
        return new DepthPageTransformer();
    }

    public ViewPager getPager() {
        return this.f11905d;
    }

    public void setPageChangedListener(ViewPager.e eVar) {
        this.f11904c = eVar;
    }
}
