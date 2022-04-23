package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/MarginPageTransformer.class */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    public final int mMarginPx;

    public MarginPageTransformer(@AbstractC0053Px int i) {
        Preconditions.checkArgumentNonnegative(i, "Margin must be non-negative");
        this.mMarginPx = i;
    }

    private ViewPager2 requireViewPager(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f) {
        ViewPager2 requireViewPager = requireViewPager(view);
        float f2 = this.mMarginPx * f;
        if (requireViewPager.getOrientation() == 0) {
            float f3 = f2;
            if (requireViewPager.isRtl()) {
                f3 = -f2;
            }
            view.setTranslationX(f3);
            return;
        }
        view.setTranslationY(f2);
    }
}
