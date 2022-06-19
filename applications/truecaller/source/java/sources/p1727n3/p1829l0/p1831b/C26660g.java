package p1727n3.p1829l0.p1831b;

import androidx.viewpager2.widget.ViewPager2;
/* renamed from: n3.l0.b.g */
/* loaded from: classes-dex2jar.jar:n3/l0/b/g.class */
public class C26660g extends ViewPager2.AbstractC0407e {

    /* renamed from: a */
    public final /* synthetic */ ViewPager2 f74616a;

    public C26660g(ViewPager2 viewPager2) {
        this.f74616a = viewPager2;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e, androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
        if (i == 0) {
            this.f74616a.m42617g();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: g */
    public void mo1513g(int i) {
        ViewPager2 viewPager2 = this.f74616a;
        if (viewPager2.f1521d != i) {
            viewPager2.f1521d = i;
            ((ViewPager2.C0408f) viewPager2.f1537t).m42614c();
        }
    }
}
