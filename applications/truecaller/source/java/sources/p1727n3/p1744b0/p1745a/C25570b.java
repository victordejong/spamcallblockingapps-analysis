package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.b */
/* loaded from: classes-dex2jar.jar:n3/b0/a/b.class */
public final class C25570b implements AbstractC25617q {

    /* renamed from: a */
    public final RecyclerView.AbstractC0317g f71571a;

    public C25570b(RecyclerView.AbstractC0317g abstractC0317g) {
        this.f71571a = abstractC0317g;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onChanged(int i, int i2, Object obj) {
        this.f71571a.notifyItemRangeChanged(i, i2, obj);
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onInserted(int i, int i2) {
        this.f71571a.notifyItemRangeInserted(i, i2);
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onMoved(int i, int i2) {
        this.f71571a.notifyItemMoved(i, i2);
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onRemoved(int i, int i2) {
        this.f71571a.notifyItemRangeRemoved(i, i2);
    }
}
