package io.realm;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.BaseAdapter;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmBaseAdapter.class */
public abstract class RealmBaseAdapter<T extends RealmModel> extends BaseAdapter {
    @Nullable
    protected OrderedRealmCollection<T> adapterData;
    private final RealmChangeListener<OrderedRealmCollection<T>> listener;

    public RealmBaseAdapter(@Nullable OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection == null || orderedRealmCollection.isManaged()) {
            this.adapterData = orderedRealmCollection;
            this.listener = (RealmChangeListener<OrderedRealmCollection<T>>) new RealmChangeListener<OrderedRealmCollection<T>>() { // from class: io.realm.RealmBaseAdapter.1
                public void onChange(OrderedRealmCollection<T> orderedRealmCollection2) {
                    RealmBaseAdapter.this.notifyDataSetChanged();
                }

                @Override // io.realm.RealmChangeListener
                public /* bridge */ /* synthetic */ void onChange(Object obj) {
                    onChange((OrderedRealmCollection) ((OrderedRealmCollection) obj));
                }
            };
            if (orderedRealmCollection != null) {
                addListener(orderedRealmCollection);
                return;
            }
            return;
        }
        throw new IllegalStateException("Only use this adapter with managed list, for un-managed lists you can just use the BaseAdapter");
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

    private void removeListener(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).removeChangeListener(this.listener);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).removeChangeListener(this.listener);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.adapterData == null) {
            return 0;
        }
        return this.adapterData.size();
    }

    @Override // android.widget.Adapter
    @Nullable
    public T getItem(int i) {
        if (this.adapterData == null) {
            return null;
        }
        return this.adapterData.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public void updateData(@Nullable OrderedRealmCollection<T> orderedRealmCollection) {
        if (this.listener != null) {
            if (this.adapterData != null) {
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
