package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseResults;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/dao/EagerForeignCollection.class */
public class EagerForeignCollection<T, ID> extends BaseForeignCollection<T, ID> implements CloseableWrappedIterable<T>, Serializable, List<T> {
    private static final long serialVersionUID = -2523335606983317721L;
    private List<T> results;

    public EagerForeignCollection(Dao<T, ID> dao, Object obj, Object obj2, FieldType fieldType, String str, boolean z) throws SQLException {
        super(dao, obj, obj2, fieldType, str, z);
        if (obj2 == null) {
            this.results = new ArrayList();
        } else {
            this.results = dao.query(getPreparedQuery());
        }
    }

    @Override // java.util.List
    public void add(int i, T t) {
        throw new UnsupportedOperationException("adding an element at an index is not supported by foreign-collections");
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, com.j256.ormlite.dao.ForeignCollection, java.util.Collection
    public boolean add(T t) {
        if (this.results.add(t)) {
            return super.add(t);
        }
        return false;
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends T> collection) {
        throw new UnsupportedOperationException("addAll() at an index is not supported by foreign-collections, use addAll()");
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        if (this.results.addAll(collection)) {
            return super.addAll(collection);
        }
        return false;
    }

    @Override // com.j256.ormlite.dao.CloseableWrappedIterable, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public void closeLastIterator() {
    }

    @Override // com.j256.ormlite.dao.CloseableIterable
    public CloseableIterator<T> closeableIterator() {
        return iteratorThrow(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> closeableIterator(int i) {
        return iteratorThrow(-1);
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.results.contains(obj);
    }

    @Override // java.util.Collection, java.util.List
    public boolean containsAll(Collection<?> collection) {
        return this.results.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (!(obj instanceof EagerForeignCollection)) {
            return false;
        }
        return this.results.equals(((EagerForeignCollection) obj).results);
    }

    @Override // java.util.List
    public T get(int i) {
        return this.results.get(i);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable() {
        return this;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable(int i) {
        return this;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return this.results.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.results.indexOf(obj);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public boolean isEager() {
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.results.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public CloseableIterator<T> iterator() {
        return iteratorThrow(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iterator(int i) {
        return iteratorThrow(i);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow() {
        return iteratorThrow(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow(int i) {
        return new CloseableIterator<T>() { // from class: com.j256.ormlite.dao.EagerForeignCollection.1
            private int offset = -1;

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public void closeQuietly() {
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T current() {
                if (this.offset < 0) {
                    this.offset = 0;
                }
                if (this.offset >= EagerForeignCollection.this.results.size()) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T first() {
                this.offset = 0;
                if (EagerForeignCollection.this.results.size() <= 0) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(0);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public DatabaseResults getRawResults() {
                return null;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                boolean z = true;
                if (this.offset + 1 >= EagerForeignCollection.this.results.size()) {
                    z = false;
                }
                return z;
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T moveAbsolute(int i2) {
                this.offset = i2;
                if (i2 < 0 || i2 >= EagerForeignCollection.this.results.size()) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T moveRelative(int i2) {
                int i3 = this.offset + i2;
                this.offset = i3;
                if (i3 < 0 || i3 >= EagerForeignCollection.this.results.size()) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public void moveToNext() {
                this.offset++;
            }

            @Override // java.util.Iterator
            public T next() {
                this.offset++;
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T nextThrow() {
                int i2 = this.offset + 1;
                this.offset = i2;
                if (i2 >= EagerForeignCollection.this.results.size()) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            @Override // com.j256.ormlite.dao.CloseableIterator
            public T previous() {
                int i2 = this.offset - 1;
                this.offset = i2;
                if (i2 < 0 || i2 >= EagerForeignCollection.this.results.size()) {
                    return null;
                }
                return (T) EagerForeignCollection.this.results.get(this.offset);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Iterator
            public void remove() {
                int i2 = this.offset;
                if (i2 >= 0) {
                    if (i2 >= EagerForeignCollection.this.results.size()) {
                        throw new IllegalStateException("current results position (" + this.offset + ") is out of bounds");
                    }
                    Object remove = EagerForeignCollection.this.results.remove(this.offset);
                    this.offset--;
                    if (EagerForeignCollection.this.dao == null) {
                        return;
                    }
                    try {
                        EagerForeignCollection.this.dao.delete((Dao<T, ID>) remove);
                        return;
                    } catch (SQLException e) {
                        throw new RuntimeException(e);
                    }
                }
                throw new IllegalStateException("next() must be called before remove()");
            }
        };
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.results.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return this.results.listIterator();
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i) {
        return this.results.listIterator(i);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshAll() throws SQLException {
        Iterator<T> it = this.results.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + this.dao.refresh(it.next());
            } else {
                return i2;
            }
        }
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshCollection() throws SQLException {
        List<T> query = this.dao.query(getPreparedQuery());
        this.results = query;
        return query.size();
    }

    @Override // java.util.List
    public T remove(int i) {
        T t = this.results.get(0);
        remove(t);
        return t;
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean remove(Object obj) {
        boolean z = false;
        if (!this.results.remove(obj) || this.dao == null) {
            return false;
        }
        try {
            if (this.dao.delete((Dao<T, ID>) obj) == 1) {
                z = true;
            }
            return z;
        } catch (SQLException e) {
            throw new IllegalStateException("Could not delete data element from dao", e);
        }
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.List
    public T set(int i, T t) {
        throw new UnsupportedOperationException("setting an element at an index is not supported by foreign-collections, use update");
    }

    @Override // java.util.Collection, java.util.List
    public int size() {
        return this.results.size();
    }

    @Override // java.util.List
    public List<T> subList(int i, int i2) {
        return this.results.subList(i, i2);
    }

    @Override // java.util.Collection, java.util.List
    public Object[] toArray() {
        return this.results.toArray();
    }

    @Override // java.util.Collection, java.util.List
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.results.toArray(eArr);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int updateAll() throws SQLException {
        Iterator<T> it = this.results.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + this.dao.update((Dao<T, ID>) it.next());
            } else {
                return i2;
            }
        }
    }
}
