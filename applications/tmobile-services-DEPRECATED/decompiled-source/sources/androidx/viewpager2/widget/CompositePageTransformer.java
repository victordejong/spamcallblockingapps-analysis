package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/CompositePageTransformer.class */
public final class CompositePageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a */
    private final List<ViewPager2.PageTransformer> f5609a = new ArrayList();

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    /* renamed from: a */
    public void mo16382a(@NonNull View view, float f) {
        for (ViewPager2.PageTransformer pageTransformer : this.f5609a) {
            pageTransformer.mo16382a(view, f);
        }
    }
}
