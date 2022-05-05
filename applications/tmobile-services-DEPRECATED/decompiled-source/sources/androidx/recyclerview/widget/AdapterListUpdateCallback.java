package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AdapterListUpdateCallback.class */
public final class AdapterListUpdateCallback implements ListUpdateCallback {
    @NonNull

    /* renamed from: f */
    private final RecyclerView.Adapter f4398f;

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: a */
    public void mo17217a(int i, int i2) {
        this.f4398f.notifyItemMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: b */
    public void mo17216b(int i, int i2) {
        this.f4398f.notifyItemRangeInserted(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: c */
    public void mo17215c(int i, int i2) {
        this.f4398f.notifyItemRangeRemoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: d */
    public void mo17214d(int i, int i2, Object obj) {
        this.f4398f.notifyItemRangeChanged(i, i2, obj);
    }
}
