package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.viewpager2.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/d.class */
public final class C2976d extends ViewPager2.AbstractC2963e {

    /* renamed from: a */
    ViewPager2.AbstractC2968g f11091a;

    /* renamed from: b */
    private final LinearLayoutManager f11092b;

    public C2976d(LinearLayoutManager linearLayoutManager) {
        this.f11092b = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: a */
    public final void mo39533a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: a */
    public final void mo39532a(int i, float f, int i2) {
        if (this.f11091a == null) {
            return;
        }
        for (int i3 = 0; i3 < this.f11092b.getChildCount(); i3++) {
            View childAt = this.f11092b.getChildAt(i3);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f11092b.getChildCount())));
            }
            LinearLayoutManager.m40366c(childAt);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
    /* renamed from: b */
    public final void mo39531b(int i) {
    }
}
