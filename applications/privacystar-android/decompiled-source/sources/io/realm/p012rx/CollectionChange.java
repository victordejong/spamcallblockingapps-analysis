package io.realm.p012rx;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import javax.annotation.Nullable;
/* renamed from: io.realm.rx.CollectionChange */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/CollectionChange.class */
public class CollectionChange<E extends OrderedRealmCollection> {
    private final OrderedCollectionChangeSet changeset;
    private final E collection;

    public CollectionChange(E e, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
        this.collection = e;
        this.changeset = orderedCollectionChangeSet;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CollectionChange collectionChange = (CollectionChange) obj;
        if (!this.collection.equals(collectionChange.collection)) {
            return false;
        }
        if (this.changeset != null) {
            z = this.changeset.equals(collectionChange.changeset);
        } else if (collectionChange.changeset != null) {
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
        return (this.collection.hashCode() * 31) + (this.changeset != null ? this.changeset.hashCode() : 0);
    }
}
