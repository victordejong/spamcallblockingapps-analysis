package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/b.class */
public final class b extends ViewPager2.e {

    /* renamed from: a  reason: collision with root package name */
    public final List<ViewPager2.e> f5938a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i) {
        this.f5938a = new ArrayList(i);
    }

    private static void a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void a(int i) {
        try {
            for (ViewPager2.e eVar : this.f5938a) {
                eVar.a(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void a(int i, float f, int i2) {
        try {
            for (ViewPager2.e eVar : this.f5938a) {
                eVar.a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    public final void a(ViewPager2.e eVar) {
        this.f5938a.add(eVar);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void b(int i) {
        try {
            for (ViewPager2.e eVar : this.f5938a) {
                eVar.b(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }
}
