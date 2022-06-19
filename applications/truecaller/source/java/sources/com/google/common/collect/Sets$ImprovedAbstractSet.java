package com.google.common.collect;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/Sets$ImprovedAbstractSet.class */
public abstract class Sets$ImprovedAbstractSet<E> extends AbstractSet<E> {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        boolean z;
        Objects.requireNonNull(collection);
        Set<E> set = collection;
        if (collection instanceof Multiset) {
            set = ((Multiset) collection).elementSet();
        }
        if ((set instanceof Set) && set.size() > size()) {
            Iterator<E> it = iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                } else if (set.contains(it.next())) {
                    it.remove();
                    z2 = true;
                }
            }
        } else {
            z = Collections2.removeAllImpl(this, set.iterator());
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        Objects.requireNonNull(collection);
        return super.retainAll(collection);
    }
}
