package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.PagingAwareViewPager */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PagingAwareViewPager.class */
public class PagingAwareViewPager extends ViewPager {

    /* renamed from: a */
    public boolean f11511a = false;

    public PagingAwareViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public int m27341a(int i) {
        PagerAdapter adapter = getAdapter();
        return (adapter == null || !C12212s0.m6783d()) ? i : (adapter.getCount() - 1) - i;
    }

    /* renamed from: a */
    public void m27340a(boolean z) {
        this.f11511a = z;
        this.f11511a = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.f11511a) {
            return super.canScrollHorizontally(i);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public int getCurrentItem() {
        return m27341a(super.getCurrentItem());
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f11511a) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f11511a) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i) {
        super.setCurrentItem(m27341a(i));
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i, boolean z) {
        super.setCurrentItem(m27341a(i), z);
    }
}
