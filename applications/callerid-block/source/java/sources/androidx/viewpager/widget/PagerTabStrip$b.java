package androidx.viewpager.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$b.class */
class PagerTabStrip$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ PagerTabStrip f2789b;

    PagerTabStrip$b(PagerTabStrip pagerTabStrip) {
        this.f2789b = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewPager viewPager = this.f2789b.f2792b;
        viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
    }
}
