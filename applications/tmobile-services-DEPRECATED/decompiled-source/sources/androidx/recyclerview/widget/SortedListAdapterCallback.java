package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SortedList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SortedListAdapterCallback.class */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {

    /* renamed from: f */
    final RecyclerView.Adapter f4850f;

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: a */
    public void mo17217a(int i, int i2) {
        this.f4850f.notifyItemMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: b */
    public void mo17216b(int i, int i2) {
        this.f4850f.notifyItemRangeInserted(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: c */
    public void mo17215c(int i, int i2) {
        this.f4850f.notifyItemRangeRemoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: d */
    public void mo17214d(int i, int i2, Object obj) {
        this.f4850f.notifyItemRangeChanged(i, i2, obj);
    }

    @Override // androidx.recyclerview.widget.SortedList.Callback
    /* renamed from: e */
    public void mo17213e(int i, int i2) {
        this.f4850f.notifyItemRangeChanged(i, i2);
    }
}
