package p1727n3.p1829l0.p1831b;

import androidx.viewpager2.widget.ViewPager2;
/* renamed from: n3.l0.b.h */
/* loaded from: classes-dex2jar.jar:n3/l0/b/h.class */
public class C26661h extends ViewPager2.AbstractC0407e {

    /* renamed from: a */
    public final /* synthetic */ ViewPager2 f74617a;

    public C26661h(ViewPager2 viewPager2) {
        this.f74617a = viewPager2;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: g */
    public void mo1513g(int i) {
        this.f74617a.clearFocus();
        if (this.f74617a.hasFocus()) {
            this.f74617a.f1527j.requestFocus(2);
        }
    }
}
