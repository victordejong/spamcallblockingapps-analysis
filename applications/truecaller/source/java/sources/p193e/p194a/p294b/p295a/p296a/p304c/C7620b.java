package p193e.p194a.p294b.p295a.p296a.p304c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1744b0.p1745a.AbstractC25626y;
import s1.z.b.l;
/* renamed from: e.a.b.a.a.c.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/b.class */
public final class C7620b extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f23967a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25626y f23968b;

    /* renamed from: c */
    public final /* synthetic */ l f23969c;

    public C7620b(RecyclerView recyclerView, AbstractC25626y abstractC25626y, l lVar) {
        this.f23967a = recyclerView;
        this.f23968b = abstractC25626y;
        this.f23969c = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        Integer num;
        s1.z.c.l.e(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0) {
            View m3115d = this.f23968b.m3115d(this.f23967a.getLayoutManager());
            RecyclerView.AbstractC0329o layoutManager = this.f23967a.getLayoutManager();
            if (layoutManager != null) {
                s1.z.c.l.c(m3115d);
                num = Integer.valueOf(layoutManager.getPosition(m3115d));
            } else {
                num = null;
            }
            String str = "selected position for imageList is " + num;
            if (num == null) {
                return;
            }
            num.intValue();
            this.f23969c.d(num);
        }
    }
}
