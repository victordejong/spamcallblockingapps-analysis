package org.bson;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:org/bson/LazyBSONList.class */
public class LazyBSONList extends LazyBSONObject implements List {

    /* loaded from: classes-dex2jar.jar:org/bson/LazyBSONList$LazyBSONListIterator.class */
    public class LazyBSONListIterator implements Iterator {
        private BsonType cachedBsonType;
        private final BsonBinaryReader reader;

        public LazyBSONListIterator() {
            LazyBSONList.this = r4;
            BsonBinaryReader bsonReader = r4.getBsonReader();
            this.reader = bsonReader;
            bsonReader.readStartDocument();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.cachedBsonType == null) {
                this.cachedBsonType = this.reader.readBsonType();
            }
            return this.cachedBsonType != BsonType.END_OF_DOCUMENT;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.cachedBsonType = null;
                this.reader.readName();
                return LazyBSONList.this.readValue(this.reader);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported");
        }
    }

    public LazyBSONList(byte[] bArr, int i, LazyBSONCallback lazyBSONCallback) {
        super(bArr, i, lazyBSONCallback);
    }

    public LazyBSONList(byte[] bArr, LazyBSONCallback lazyBSONCallback) {
        super(bArr, lazyBSONCallback);
    }

    @Override // java.util.List
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) > -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        HashSet hashSet = new HashSet();
        Iterator it = iterator();
        while (it.hasNext()) {
            hashSet.add(it.next());
        }
        return hashSet.containsAll(collection);
    }

    @Override // java.util.List
    public Object get(int i) {
        return get(String.valueOf(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new LazyBSONListIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        Iterator it = iterator();
        int i = -1;
        int i2 = 0;
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                i = i2;
            }
            i2++;
        }
        return i;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        throw new UnsupportedOperationException("Operation is not supported instance of this type");
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        throw new UnsupportedOperationException("Operation is not supported instance of this type");
    }

    @Override // java.util.List
    public Object remove(int i) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return keySet().size();
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        throw new UnsupportedOperationException("Operation is not supported");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        throw new UnsupportedOperationException("Operation is not supported");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        throw new UnsupportedOperationException("Operation is not supported");
    }
}
