package io.realm.p008rx;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import javax.annotation.Nullable;
/* renamed from: io.realm.rx.CollectionChange */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/CollectionChange.class */
public class CollectionChange<E extends OrderedRealmCollection> {

    /* renamed from: a */
    private final E f20281a;

    /* renamed from: b */
    private final OrderedCollectionChangeSet f20282b;

    public CollectionChange(E e, @Nullable OrderedCollectionChangeSet orderedCollectionChangeSet) {
        this.f20281a = e;
        this.f20282b = orderedCollectionChangeSet;
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
        if (!this.f20281a.equals(collectionChange.f20281a)) {
            return false;
        }
        OrderedCollectionChangeSet orderedCollectionChangeSet = this.f20282b;
        OrderedCollectionChangeSet orderedCollectionChangeSet2 = collectionChange.f20282b;
        if (orderedCollectionChangeSet != null) {
            z = orderedCollectionChangeSet.equals(orderedCollectionChangeSet2);
        } else if (orderedCollectionChangeSet2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f20281a.hashCode();
        OrderedCollectionChangeSet orderedCollectionChangeSet = this.f20282b;
        return (hashCode * 31) + (orderedCollectionChangeSet != null ? orderedCollectionChangeSet.hashCode() : 0);
    }
}
