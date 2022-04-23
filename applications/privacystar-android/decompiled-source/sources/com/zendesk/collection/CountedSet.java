package com.zendesk.collection;

import com.zendesk.util.CollectionUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/zendesk/collection/CountedSet.class */
public class CountedSet<E> implements Set<E> {
    public static final int NOT_FOUND = 0;
    private Map<E, Integer> countingMap;

    public CountedSet() {
        this.countingMap = new LinkedHashMap();
    }

    public CountedSet(int i) {
        this.countingMap = new LinkedHashMap(i);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(E e) {
        if (e == null) {
            return false;
        }
        if (this.countingMap.containsKey(e)) {
            this.countingMap.put(e, Integer.valueOf(this.countingMap.get(e).intValue() + 1));
            return true;
        }
        this.countingMap.put(e, 1);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        if (!CollectionUtils.isNotEmpty(collection)) {
            return false;
        }
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            if (!add(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.countingMap.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.countingMap.containsKey(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        if (!CollectionUtils.isNotEmpty(collection)) {
            return false;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!this.countingMap.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public int getCount(E e) {
        if (e == null || !this.countingMap.containsKey(e)) {
            return 0;
        }
        return this.countingMap.get(e).intValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.countingMap.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.countingMap.keySet().iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        if (!this.countingMap.containsKey(obj)) {
            return false;
        }
        int intValue = this.countingMap.get(obj).intValue();
        if (intValue > 1) {
            this.countingMap.put(obj, Integer.valueOf(intValue - 1));
            return true;
        }
        this.countingMap.remove(obj);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (!CollectionUtils.isNotEmpty(collection)) {
            return false;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!this.countingMap.containsKey(it.next())) {
                return false;
            }
        }
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            this.countingMap.remove(it2.next());
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.countingMap.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return this.countingMap.keySet().toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.countingMap.keySet().toArray(tArr);
    }
}
