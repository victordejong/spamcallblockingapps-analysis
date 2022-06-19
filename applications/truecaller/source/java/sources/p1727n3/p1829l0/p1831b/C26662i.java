package p1727n3.p1829l0.p1831b;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* renamed from: n3.l0.b.i */
/* loaded from: classes-dex2jar.jar:n3/l0/b/i.class */
public class C26662i implements RecyclerView.AbstractC0335q {
    public C26662i(ViewPager2 viewPager2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewAttachedToWindow(View view) {
        RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams) c0334p).width == -1 && ((ViewGroup.MarginLayoutParams) c0334p).height == -1) {
            return;
        }
        throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewDetachedFromWindow(View view) {
    }
}
