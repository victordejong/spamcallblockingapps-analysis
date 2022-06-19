package p193e.p194a.p1221t.p1222a.p1228y;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.tenor.android.core.constant.ViewAction;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.t.a.y.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/y/c.class */
public final class C20345c extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final int f57182a;

    /* renamed from: b */
    public final int f57183b;

    /* renamed from: c */
    public final int f57184c;

    public C20345c(int i) {
        this.f57182a = i;
        this.f57183b = i;
        this.f57184c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
        StaggeredGridLayoutManager.C0353d c0353d = ((StaggeredGridLayoutManager.C0352c) layoutParams).f1410e;
        if ((c0353d == null ? -1 : c0353d.f1416e) == 0) {
            rect.left = this.f57182a;
            rect.right = this.f57183b / 2;
        } else {
            int i = this.f57183b;
            rect.left = i - (i / 2);
            rect.right = i;
        }
        rect.bottom = this.f57184c;
    }
}
