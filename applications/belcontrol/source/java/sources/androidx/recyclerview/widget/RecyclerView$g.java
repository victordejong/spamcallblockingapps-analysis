package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$b0;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
public abstract class RecyclerView$g<VH extends RecyclerView$b0> {
    private final RecyclerView$h mObservable = new RecyclerView$h();
    private boolean mHasStableIds = false;

    public final void bindViewHolder(VH vh, int i) {
        vh.mPosition = i;
        if (hasStableIds()) {
            vh.mItemId = getItemId(i);
        }
        vh.setFlags(1, 519);
        w9.a("RV OnBindView");
        onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
        vh.clearPayload();
        ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
        if (layoutParams instanceof RecyclerView$LayoutParams) {
            ((RecyclerView$LayoutParams) layoutParams).f1338c = true;
        }
        w9.b();
    }

    public final VH createViewHolder(ViewGroup viewGroup, int i) {
        try {
            w9.a("RV CreateView");
            VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
            if (onCreateViewHolder.itemView.getParent() != null) {
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            }
            onCreateViewHolder.mItemViewType = i;
            w9.b();
            return onCreateViewHolder;
        } catch (Throwable th) {
            w9.b();
            throw th;
        }
    }

    public abstract int getItemCount();

    public long getItemId(int i) {
        return -1L;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public final boolean hasObservers() {
        return this.mObservable.m6214a();
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.m6213b();
    }

    public final void notifyItemChanged(int i) {
        this.mObservable.m6211d(i, 1);
    }

    public final void notifyItemChanged(int i, Object obj) {
        this.mObservable.m6210e(i, 1, obj);
    }

    public final void notifyItemInserted(int i) {
        this.mObservable.m6209f(i, 1);
    }

    public final void notifyItemMoved(int i, int i2) {
        this.mObservable.m6212c(i, i2);
    }

    public final void notifyItemRangeChanged(int i, int i2) {
        this.mObservable.m6211d(i, i2);
    }

    public final void notifyItemRangeChanged(int i, int i2, Object obj) {
        this.mObservable.m6210e(i, i2, obj);
    }

    public final void notifyItemRangeInserted(int i, int i2) {
        this.mObservable.m6209f(i, i2);
    }

    public final void notifyItemRangeRemoved(int i, int i2) {
        this.mObservable.m6208g(i, i2);
    }

    public final void notifyItemRemoved(int i) {
        this.mObservable.m6208g(i, 1);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(VH vh, int i);

    public void onBindViewHolder(VH vh, int i, List<Object> list) {
        onBindViewHolder(vh, i);
    }

    public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
    }

    public boolean onFailedToRecycleView(VH vh) {
        return false;
    }

    public void onViewAttachedToWindow(VH vh) {
    }

    public void onViewDetachedFromWindow(VH vh) {
    }

    public void onViewRecycled(VH vh) {
    }

    public void registerAdapterDataObserver(RecyclerView$i recyclerView$i) {
        this.mObservable.registerObserver(recyclerView$i);
    }

    public void setHasStableIds(boolean z) {
        if (!hasObservers()) {
            this.mHasStableIds = z;
            return;
        }
        throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }

    public void unregisterAdapterDataObserver(RecyclerView$i recyclerView$i) {
        this.mObservable.unregisterObserver(recyclerView$i);
    }
}
