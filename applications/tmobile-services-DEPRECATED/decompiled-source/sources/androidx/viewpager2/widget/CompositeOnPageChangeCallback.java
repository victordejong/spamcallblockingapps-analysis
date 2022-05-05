package androidx.viewpager2.widget;

import androidx.annotation.AbstractC0040Px;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/CompositeOnPageChangeCallback.class */
public final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
    @NonNull

    /* renamed from: a */
    private final List<ViewPager2.OnPageChangeCallback> f5608a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeOnPageChangeCallback(int i) {
        this.f5608a = new ArrayList(i);
    }

    /* renamed from: f */
    private void m16445f(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: a */
    public void mo8895a(int i) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f5608a) {
                onPageChangeCallback.mo8895a(i);
            }
        } catch (ConcurrentModificationException e) {
            m16445f(e);
            throw null;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: b */
    public void mo8894b(int i, float f, @AbstractC0040Px int i2) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f5608a) {
                onPageChangeCallback.mo8894b(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            m16445f(e);
            throw null;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: c */
    public void mo8893c(int i) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f5608a) {
                onPageChangeCallback.mo8893c(i);
            }
        } catch (ConcurrentModificationException e) {
            m16445f(e);
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m16447d(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f5608a.add(onPageChangeCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m16446e(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f5608a.remove(onPageChangeCallback);
    }
}
