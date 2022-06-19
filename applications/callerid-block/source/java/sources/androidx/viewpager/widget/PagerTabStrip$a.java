package androidx.viewpager.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$a.class */
class PagerTabStrip$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ PagerTabStrip f2788b;

    PagerTabStrip$a(PagerTabStrip pagerTabStrip) {
        this.f2788b = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewPager viewPager = this.f2788b.f2792b;
        viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
    }
}
