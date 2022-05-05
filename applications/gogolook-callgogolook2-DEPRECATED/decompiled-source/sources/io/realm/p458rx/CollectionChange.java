package io.realm.p458rx;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import javax.annotation.Nullable;
/* renamed from: io.realm.rx.CollectionChange */
/* loaded from: classes3-dex2jar.jar:io/realm/rx/CollectionChange.class */
public class CollectionChange<E extends OrderedRealmCollection> {
    public final OrderedCollectionChangeSet changeset;
    public final E collection;

    public CollectionChange(E e, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
        this.collection = e;
        this.changeset = orderedCollectionChangeSet;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CollectionChange.class != obj.getClass()) {
            return false;
        }
        CollectionChange collectionChange = (CollectionChange) obj;
        if (!this.collection.equals(collectionChange.collection)) {
            return false;
        }
        OrderedCollectionChangeSet orderedCollectionChangeSet = this.changeset;
        OrderedCollectionChangeSet orderedCollectionChangeSet2 = collectionChange.changeset;
        if (orderedCollectionChangeSet != null) {
            z = orderedCollectionChangeSet.equals(orderedCollectionChangeSet2);
        } else if (orderedCollectionChangeSet2 != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public OrderedCollectionChangeSet getChangeset() {
        return this.changeset;
    }

    public E getCollection() {
        return this.collection;
    }

    public int hashCode() {
        int hashCode = this.collection.hashCode();
        OrderedCollectionChangeSet orderedCollectionChangeSet = this.changeset;
        return (hashCode * 31) + (orderedCollectionChangeSet != null ? orderedCollectionChangeSet.hashCode() : 0);
    }
}
