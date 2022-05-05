package io.realm;
/* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionSnapshot.class */
public class OrderedRealmCollectionSnapshot<E> extends OrderedRealmCollectionImpl<E> {

    /* renamed from: j */
    private int f19843j;

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (this.f19843j == -1) {
            this.f19843j = super.size();
        }
        return this.f19843j;
    }
}
