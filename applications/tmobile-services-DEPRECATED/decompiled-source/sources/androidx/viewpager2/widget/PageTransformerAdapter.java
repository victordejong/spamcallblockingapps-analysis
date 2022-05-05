package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/PageTransformerAdapter.class */
public final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a */
    private final LinearLayoutManager f5612a;

    /* renamed from: b */
    private ViewPager2.PageTransformer f5613b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f5612a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: a */
    public void mo8895a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: b */
    public void mo8894b(int i, float f, int i2) {
        if (this.f5613b != null) {
            float f2 = -f;
            for (int i3 = 0; i3 < this.f5612a.m17441K(); i3++) {
                View J = this.f5612a.m17442J(i3);
                if (J != null) {
                    this.f5613b.mo16382a(J, (this.f5612a.m17400i0(J) - i) + f2);
                } else {
                    throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f5612a.m17441K())));
                }
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    /* renamed from: c */
    public void mo8893c(int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public ViewPager2.PageTransformer m16442d() {
        return this.f5613b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m16441e(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.f5613b = pageTransformer;
    }
}
