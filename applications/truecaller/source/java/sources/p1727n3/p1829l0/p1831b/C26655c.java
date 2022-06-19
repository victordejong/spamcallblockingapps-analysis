package p1727n3.p1829l0.p1831b;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* renamed from: n3.l0.b.c */
/* loaded from: classes-dex2jar.jar:n3/l0/b/c.class */
public final class C26655c extends ViewPager2.AbstractC0407e {

    /* renamed from: a */
    public final List<ViewPager2.AbstractC0407e> f74596a;

    public C26655c(int i) {
        this.f74596a = new ArrayList(i);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: a */
    public void mo1520a(int i, float f, int i2) {
        try {
            for (ViewPager2.AbstractC0407e abstractC0407e : this.f74596a) {
                abstractC0407e.mo1520a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m1521c(e);
            throw null;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e, androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
        try {
            for (ViewPager2.AbstractC0407e abstractC0407e : this.f74596a) {
                abstractC0407e.mo1514b(i);
            }
        } catch (ConcurrentModificationException e) {
            m1521c(e);
            throw null;
        }
    }

    /* renamed from: c */
    public final void m1521c(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
    /* renamed from: g */
    public void mo1513g(int i) {
        try {
            for (ViewPager2.AbstractC0407e abstractC0407e : this.f74596a) {
                abstractC0407e.mo1513g(i);
            }
        } catch (ConcurrentModificationException e) {
            m1521c(e);
            throw null;
        }
    }
}
