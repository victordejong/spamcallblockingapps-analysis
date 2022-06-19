package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.viewpager2.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/d.class */
public final class C1221d extends ViewPager2.AbstractC1208i {

    /* renamed from: a */
    private final LinearLayoutManager f5184a;

    /* renamed from: b */
    private ViewPager2.AbstractC1213k f5185b;

    public C1221d(LinearLayoutManager linearLayoutManager) {
        this.f5184a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: a */
    public void mo30643a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: b */
    public void mo30642b(int i, float f, int i2) {
        if (this.f5185b == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.f5184a.m31858J(); i3++) {
            View m31860I = this.f5184a.m31860I(i3);
            if (m31860I == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f5184a.m31858J())));
            }
            this.f5185b.m30653a(m31860I, (this.f5184a.m31816h0(m31860I) - i) + f2);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1208i
    /* renamed from: c */
    public void mo30641c(int i) {
    }

    /* renamed from: d */
    public ViewPager2.AbstractC1213k m30640d() {
        return this.f5185b;
    }

    /* renamed from: e */
    public void m30639e(ViewPager2.AbstractC1213k abstractC1213k) {
        this.f5185b = abstractC1213k;
    }
}
