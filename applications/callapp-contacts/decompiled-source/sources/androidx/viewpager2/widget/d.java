package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/d.class */
final class d extends ViewPager2.e {

    /* renamed from: a  reason: collision with root package name */
    ViewPager2.g f5942a;

    /* renamed from: b  reason: collision with root package name */
    private final LinearLayoutManager f5943b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(LinearLayoutManager linearLayoutManager) {
        this.f5943b = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void a(int i, float f, int i2) {
        if (this.f5942a != null) {
            for (int i3 = 0; i3 < this.f5943b.getChildCount(); i3++) {
                View childAt = this.f5943b.getChildAt(i3);
                if (childAt != null) {
                    LinearLayoutManager.c(childAt);
                } else {
                    throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f5943b.getChildCount())));
                }
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.e
    public final void b(int i) {
    }
}
