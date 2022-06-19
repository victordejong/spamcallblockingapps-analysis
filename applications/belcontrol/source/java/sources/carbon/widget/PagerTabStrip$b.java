package carbon.widget;
/* loaded from: classes-dex2jar.jar:carbon/widget/PagerTabStrip$b.class */
public class PagerTabStrip$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ PagerTabStrip$SavedState f2303a;

    /* renamed from: b */
    public final /* synthetic */ PagerTabStrip f2304b;

    public PagerTabStrip$b(PagerTabStrip pagerTabStrip, PagerTabStrip$SavedState pagerTabStrip$SavedState) {
        this.f2304b = pagerTabStrip;
        this.f2303a = pagerTabStrip$SavedState;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2304b.setScrollX(this.f2303a.m5366c());
    }
}
