package androidx.viewpager.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/PagerTabStrip$a.class */
public class PagerTabStrip$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PagerTabStrip f1540a;

    public PagerTabStrip$a(PagerTabStrip pagerTabStrip) {
        this.f1540a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ViewPager viewPager = this.f1540a.f1544a;
        viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
    }
}
