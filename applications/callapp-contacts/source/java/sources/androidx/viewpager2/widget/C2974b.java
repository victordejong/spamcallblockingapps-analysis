package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* renamed from: androidx.viewpager2.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/b.class */
public final class C2974b extends ViewPager2.AbstractC2963e {

    /* renamed from: a */
    public final List<ViewPager2.AbstractC2963e> f11087a;

    public C2974b(int i) {
        this.f11087a = new ArrayList(i);
    }

    /* renamed from: a */
    private static void m39534a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: a */
    public final void mo39533a(int i) {
        try {
            for (ViewPager2.AbstractC2963e abstractC2963e : this.f11087a) {
                abstractC2963e.mo39533a(i);
            }
        } catch (ConcurrentModificationException e) {
            m39534a(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: a */
    public final void mo39532a(int i, float f, int i2) {
        try {
            for (ViewPager2.AbstractC2963e abstractC2963e : this.f11087a) {
                abstractC2963e.mo39532a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m39534a(e);
        }
    }

    /* renamed from: a */
    public final void m39535a(ViewPager2.AbstractC2963e abstractC2963e) {
        this.f11087a.add(abstractC2963e);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: b */
    public final void mo39531b(int i) {
        try {
            for (ViewPager2.AbstractC2963e abstractC2963e : this.f11087a) {
                abstractC2963e.mo39531b(i);
            }
        } catch (ConcurrentModificationException e) {
            m39534a(e);
        }
    }
}
