package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/MarginPageTransformer.class */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a */
    private final int f5611a;

    /* renamed from: b */
    private ViewPager2 m16443b(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    /* renamed from: a */
    public void mo16382a(@NonNull View view, float f) {
        ViewPager2 b = m16443b(view);
        float f2 = this.f5611a * f;
        if (b.getOrientation() == 0) {
            float f3 = f2;
            if (b.m16421d()) {
                f3 = -f2;
            }
            view.setTranslationX(f3);
            return;
        }
        view.setTranslationY(f2);
    }
}
