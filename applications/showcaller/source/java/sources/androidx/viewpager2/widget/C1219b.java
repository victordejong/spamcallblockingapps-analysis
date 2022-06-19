package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.viewpager2.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/b.class */
public final class C1219b extends ViewPager2.AbstractC1208i {

    /* renamed from: a */
    private final List<ViewPager2.AbstractC1208i> f5180a;

    public C1219b(int i) {
        this.f5180a = new ArrayList(i);
    }

    /* renamed from: e */
    private void m30645e(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: a */
    public void mo30643a(int i) {
        try {
            for (ViewPager2.AbstractC1208i abstractC1208i : this.f5180a) {
                abstractC1208i.mo30643a(i);
            }
        } catch (ConcurrentModificationException e) {
            m30645e(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: b */
    public void mo30642b(int i, float f, int i2) {
        try {
            for (ViewPager2.AbstractC1208i abstractC1208i : this.f5180a) {
                abstractC1208i.mo30642b(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m30645e(e);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: c */
    public void mo30641c(int i) {
        try {
            for (ViewPager2.AbstractC1208i abstractC1208i : this.f5180a) {
                abstractC1208i.mo30641c(i);
            }
        } catch (ConcurrentModificationException e) {
            m30645e(e);
        }
    }

    /* renamed from: d */
    public void m30646d(ViewPager2.AbstractC1208i abstractC1208i) {
        this.f5180a.add(abstractC1208i);
    }
}
