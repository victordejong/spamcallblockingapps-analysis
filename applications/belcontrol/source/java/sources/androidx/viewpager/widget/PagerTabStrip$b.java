package androidx.viewpager.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$b.class */
public class PagerTabStrip$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PagerTabStrip f1541a;

    public PagerTabStrip$b(PagerTabStrip pagerTabStrip) {
        this.f1541a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewPager viewPager = this.f1541a.f1544a;
        viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
    }
}
