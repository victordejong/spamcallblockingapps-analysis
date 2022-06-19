package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.IOUtils;
import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/dao/LazyForeignCollection.class */
public class LazyForeignCollection<T, ID> extends BaseForeignCollection<T, ID> implements Serializable {
    private static final long serialVersionUID = -5460708106909626233L;
    private transient CloseableIterator<T> lastIterator;

    public LazyForeignCollection(Dao<T, ID> dao, Object obj, Object obj2, FieldType fieldType, String str, boolean z) {
        super(dao, obj, obj2, fieldType, str, z);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public void closeLastIterator() throws IOException {
        CloseableIterator<T> closeableIterator = this.lastIterator;
        if (closeableIterator != null) {
            closeableIterator.close();
            this.lastIterator = null;
        }
    }

    @Override // com.j256.ormlite.dao.CloseableIterable
    public CloseableIterator<T> closeableIterator() {
        return closeableIterator(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> closeableIterator(int i) {
        try {
            return iteratorThrow(i);
        } catch (SQLException e) {
            throw new IllegalStateException("Could not build lazy iterator for " + this.dao.getDataClass(), e);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean z;
        CloseableIterator<T> it = iterator();
        while (true) {
            try {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().equals(obj)) {
                    z = true;
                    break;
                }
            } catch (Throwable th) {
                IOUtils.closeQuietly(it);
                throw th;
            }
        }
        IOUtils.closeQuietly(it);
        return z;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        HashSet hashSet = new HashSet(collection);
        CloseableIterator<T> it = iterator();
        while (it.hasNext()) {
            try {
                hashSet.remove(it.next());
            } finally {
                IOUtils.closeQuietly(it);
            }
        }
        return hashSet.isEmpty();
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable() {
        return getWrappedIterable(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableWrappedIterable<T> getWrappedIterable(final int i) {
        return new CloseableWrappedIterableImpl(new CloseableIterable<T>() { // from class: com.j256.ormlite.dao.LazyForeignCollection.1
            @Override // com.j256.ormlite.dao.CloseableIterable
            public CloseableIterator<T> closeableIterator() {
                try {
                    return LazyForeignCollection.this.seperateIteratorThrow(i);
                } catch (Exception e) {
                    throw new IllegalStateException("Could not build lazy iterator for " + LazyForeignCollection.this.dao.getDataClass(), e);
                }
            }

            @Override // java.lang.Iterable
            public CloseableIterator<T> iterator() {
                return closeableIterator();
            }
        });
    }

    @Override // java.util.Collection
    public int hashCode() {
        return super.hashCode();
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public boolean isEager() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Collection
    public boolean isEmpty() {
        CloseableIterator<T> it = iterator();
        try {
            boolean hasNext = it.hasNext();
            IOUtils.closeQuietly(it);
            return !hasNext;
        } catch (Throwable th) {
            IOUtils.closeQuietly(it);
            throw th;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public CloseableIterator<T> iterator() {
        return closeableIterator(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iterator(int i) {
        return closeableIterator(i);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow() throws SQLException {
        return iteratorThrow(-1);
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public CloseableIterator<T> iteratorThrow(int i) throws SQLException {
        CloseableIterator<T> seperateIteratorThrow = seperateIteratorThrow(i);
        this.lastIterator = seperateIteratorThrow;
        return seperateIteratorThrow;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshAll() {
        throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int refreshCollection() {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        r0.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        r6 = true;
     */
    /* JADX WARN: Finally extract failed */
    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean remove(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            com.j256.ormlite.dao.CloseableIterator r0 = r0.iterator()
            r5 = r0
        L5:
            r0 = r5
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L29
            r0 = r5
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L2e
            r1 = r4
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L5
            r0 = r5
            r0.remove()     // Catch: java.lang.Throwable -> L2e
            r0 = 1
            r6 = r0
        L23:
            r0 = r5
            com.j256.ormlite.misc.IOUtils.closeQuietly(r0)
            r0 = r6
            return r0
        L29:
            r0 = 0
            r6 = r0
            goto L23
        L2e:
            r4 = move-exception
            r0 = r5
            com.j256.ormlite.misc.IOUtils.closeQuietly(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.j256.ormlite.dao.LazyForeignCollection.remove(java.lang.Object):boolean");
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.j256.ormlite.dao.BaseForeignCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        CloseableIterator<T> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            try {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            } catch (Throwable th) {
                IOUtils.closeQuietly(it);
                throw th;
            }
        }
        IOUtils.closeQuietly(it);
        return z;
    }

    CloseableIterator<T> seperateIteratorThrow(int i) throws SQLException {
        if (this.dao != null) {
            return this.dao.iterator(getPreparedQuery(), i);
        }
        throw new IllegalStateException("Internal DAO object is null.  Maybe the collection was deserialized or otherwise constructed wrongly.  Use dao.assignEmptyForeignCollection(...) or dao.getEmptyForeignCollection(...) instead");
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Collection
    public int size() {
        CloseableIterator<T> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            try {
                it.moveToNext();
                i++;
            } catch (Throwable th) {
                IOUtils.closeQuietly(it);
                throw th;
            }
        }
        IOUtils.closeQuietly(it);
        return i;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return toList().toArray();
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.Collection
    public <E> E[] toArray(E[] eArr) {
        ArrayList arrayList;
        CloseableIterator<T> it = iterator();
        ArrayList arrayList2 = null;
        int i = 0;
        while (it.hasNext()) {
            try {
                T next = it.next();
                if (i >= eArr.length) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        ArrayList arrayList3 = new ArrayList();
                        int length = eArr.length;
                        int i2 = 0;
                        while (true) {
                            arrayList = arrayList3;
                            if (i2 >= length) {
                                break;
                            }
                            arrayList3.add(eArr[i2]);
                            i2++;
                        }
                    }
                    arrayList.add(next);
                } else {
                    eArr[i] = next;
                    arrayList = arrayList2;
                }
                i++;
                arrayList2 = arrayList;
            } catch (Throwable th) {
                IOUtils.closeQuietly(it);
                throw th;
            }
        }
        IOUtils.closeQuietly(it);
        if (arrayList2 == null) {
            if (i < eArr.length - 1) {
                eArr[i] = 0;
            }
            return eArr;
        }
        return (E[]) arrayList2.toArray(eArr);
    }

    public List<T> toList() {
        ArrayList arrayList = new ArrayList();
        CloseableIterator<T> it = iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(it.next());
            } finally {
                IOUtils.closeQuietly(it);
            }
        }
        return arrayList;
    }

    @Override // com.j256.ormlite.dao.ForeignCollection
    public int updateAll() {
        throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
    }
}
