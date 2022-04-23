package io.realm;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import io.realm.OrderedCollectionChangeSet;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmRecyclerViewAdapter.class */
public abstract class RealmRecyclerViewAdapter<T extends RealmModel, S extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<S> {
    @Nullable
    private OrderedRealmCollection<T> adapterData;
    private final boolean hasAutoUpdates;
    private final OrderedRealmCollectionChangeListener listener;

    public RealmRecyclerViewAdapter(@Nullable OrderedRealmCollection<T> orderedRealmCollection, boolean z) {
        if (orderedRealmCollection == null || orderedRealmCollection.isManaged()) {
            this.adapterData = orderedRealmCollection;
            this.hasAutoUpdates = z;
            this.listener = this.hasAutoUpdates ? createListener() : null;
            return;
        }
        throw new IllegalStateException("Only use this adapter with managed RealmCollection, for un-managed lists you can just use the BaseRecyclerViewAdapter");
    }

    private void addListener(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).addChangeListener(this.listener);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).addChangeListener(this.listener);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    private OrderedRealmCollectionChangeListener createListener() {
        return new OrderedRealmCollectionChangeListener() { // from class: io.realm.RealmRecyclerViewAdapter.1
            @Override // io.realm.OrderedRealmCollectionChangeListener
            public void onChange(Object obj, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                OrderedCollectionChangeSet.Range[] insertionRanges;
                OrderedCollectionChangeSet.Range[] changeRanges;
                if (orderedCollectionChangeSet == null) {
                    RealmRecyclerViewAdapter.this.notifyDataSetChanged();
                    return;
                }
                OrderedCollectionChangeSet.Range[] deletionRanges = orderedCollectionChangeSet.getDeletionRanges();
                for (int length = deletionRanges.length - 1; length >= 0; length--) {
                    OrderedCollectionChangeSet.Range range = deletionRanges[length];
                    RealmRecyclerViewAdapter.this.notifyItemRangeRemoved(range.startIndex, range.length);
                }
                for (OrderedCollectionChangeSet.Range range2 : orderedCollectionChangeSet.getInsertionRanges()) {
                    RealmRecyclerViewAdapter.this.notifyItemRangeInserted(range2.startIndex, range2.length);
                }
                for (OrderedCollectionChangeSet.Range range3 : orderedCollectionChangeSet.getChangeRanges()) {
                    RealmRecyclerViewAdapter.this.notifyItemRangeChanged(range3.startIndex, range3.length);
                }
            }
        };
    }

    private boolean isDataValid() {
        return this.adapterData != null && this.adapterData.isValid();
    }

    private void removeListener(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).removeChangeListener(this.listener);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).removeChangeListener(this.listener);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    @Nullable
    public OrderedRealmCollection<T> getData() {
        return this.adapterData;
    }

    @Nullable
    public T getItem(int i) {
        return isDataValid() ? this.adapterData.get(i) : null;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return isDataValid() ? this.adapterData.size() : 0;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        if (this.hasAutoUpdates && isDataValid()) {
            addListener(this.adapterData);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        if (this.hasAutoUpdates && isDataValid()) {
            removeListener(this.adapterData);
        }
    }

    public void updateData(@Nullable OrderedRealmCollection<T> orderedRealmCollection) {
        if (this.hasAutoUpdates) {
            if (isDataValid()) {
                removeListener(this.adapterData);
            }
            if (orderedRealmCollection != null) {
                addListener(orderedRealmCollection);
            }
        }
        this.adapterData = orderedRealmCollection;
        notifyDataSetChanged();
    }
}
