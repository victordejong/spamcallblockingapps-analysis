package p1727n3.p1829l0.p1831b;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* renamed from: n3.l0.b.e */
/* loaded from: classes-dex2jar.jar:n3/l0/b/e.class */
public final class C26657e extends ViewPager2.AbstractC0407e {

    /* renamed from: a */
    public final LinearLayoutManager f74598a;

    /* renamed from: b */
    public ViewPager2.AbstractC0411g f74599b;

    public C26657e(LinearLayoutManager linearLayoutManager) {
        this.f74598a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: a */
    public void mo1520a(int i, float f, int i2) {
        if (this.f74599b == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.f74598a.getChildCount(); i3++) {
            View childAt = this.f74598a.getChildAt(i3);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f74598a.getChildCount())));
            }
            this.f74599b.m42613a(childAt, (this.f74598a.getPosition(childAt) - i) + f2);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e, androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: g */
    public void mo1513g(int i) {
    }
}
