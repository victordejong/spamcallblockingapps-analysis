package org.bson.types;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.bson.assertions.Assertions;
/* loaded from: classes3-dex2jar.jar:org/bson/types/StringRangeSet.class */
public class StringRangeSet implements Set<String> {
    private static final String[] STRINGS = new String[1024];
    private final int size;

    static {
        int i = 0;
        while (true) {
            String[] strArr = STRINGS;
            if (i < strArr.length) {
                strArr[i] = String.valueOf(i);
                i++;
            } else {
                return;
            }
        }
    }

    public StringRangeSet(int i) {
        Assertions.isTrue("size >= 0", i >= 0);
        this.size = i;
    }

    public String intToString(int i) {
        String[] strArr = STRINGS;
        return i < strArr.length ? strArr[i] : Integer.toString(i);
    }

    public boolean add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends String> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        boolean z;
        if (!(obj instanceof String)) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt((String) obj);
            z = false;
            if (parseInt >= 0) {
                z = false;
                if (parseInt < size()) {
                    z = true;
                }
            }
        } catch (NumberFormatException e) {
            z = false;
        }
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<String> iterator() {
        return new Iterator<String>() { // from class: org.bson.types.StringRangeSet.1
            private int cur = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cur < StringRangeSet.this.size;
            }

            @Override // java.util.Iterator
            public String next() {
                if (hasNext()) {
                    StringRangeSet stringRangeSet = StringRangeSet.this;
                    int i = this.cur;
                    this.cur = i + 1;
                    return stringRangeSet.intToString(i);
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        for (int i = 0; i < size(); i++) {
            objArr[i] = intToString(i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object[]] */
    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        T[] tArr2 = tArr.length >= size() ? tArr : (Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.size);
        for (int i = 0; i < size(); i++) {
            tArr2[i] = intToString(i);
        }
        if (tArr.length > size()) {
            tArr[this.size] = null;
        }
        return tArr2;
    }
}
