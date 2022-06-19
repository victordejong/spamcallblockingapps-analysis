package io.realm;

import io.realm.internal.InvalidRow;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.core.QueryDescriptor;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl.class */
public abstract class OrderedRealmCollectionImpl<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    private static final String NOT_SUPPORTED_MESSAGE = "This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.";
    public final BaseRealm baseRealm;
    @Nullable
    final String className;
    @Nullable
    final Class<E> classSpec;
    final boolean forValues;
    final OsResults osResults;

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl$RealmCollectionIterator.class */
    public class RealmCollectionIterator extends OsResults.Iterator<E> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RealmCollectionIterator() {
            super(r4.osResults);
            OrderedRealmCollectionImpl.this = r4;
        }

        @Override // io.realm.internal.OsResults.Iterator
        protected E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.baseRealm.get((Class<RealmModel>) OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator.class */
    public class RealmCollectionListIterator extends OsResults.ListIterator<E> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RealmCollectionListIterator(int i) {
            super(r5.osResults, i);
            OrderedRealmCollectionImpl.this = r5;
        }

        @Override // io.realm.internal.OsResults.Iterator
        protected E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.baseRealm.get((Class<RealmModel>) OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    public OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        this(baseRealm, osResults, cls, null);
    }

    private OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, @Nullable Class<E> cls, @Nullable String str) {
        this.forValues = false;
        this.baseRealm = baseRealm;
        this.osResults = osResults;
        this.classSpec = cls;
        this.className = str;
    }

    public OrderedRealmCollectionImpl(BaseRealm baseRealm, OsResults osResults, String str) {
        this(baseRealm, osResults, null, str);
    }

    @Nullable
    private E firstImpl(boolean z, @Nullable E e) {
        UncheckedRow firstUncheckedRow = this.osResults.firstUncheckedRow();
        if (firstUncheckedRow != null) {
            return (E) this.baseRealm.get((Class<RealmModel>) this.classSpec, this.className, firstUncheckedRow);
        }
        if (z) {
            throw new IndexOutOfBoundsException("No results were found.");
        }
        return e;
    }

    private long getColumnKeyForSort(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Non-empty field name required.");
        }
        if (!str.contains(".")) {
            long columnKey = this.osResults.getTable().getColumnKey(str);
            if (columnKey < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' does not exist.", str));
            }
            return columnKey;
        }
        throw new IllegalArgumentException("Aggregates on child object fields are not supported: " + str);
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.baseRealm.getSchema());
    }

    @Nullable
    private E lastImpl(boolean z, @Nullable E e) {
        UncheckedRow lastUncheckedRow = this.osResults.lastUncheckedRow();
        if (lastUncheckedRow != null) {
            return (E) this.baseRealm.get((Class<RealmModel>) this.classSpec, this.className, lastUncheckedRow);
        }
        if (z) {
            throw new IndexOutOfBoundsException("No results were found.");
        }
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public void add(int i, E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean add(E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    public double average(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.AVERAGE, getColumnKeyForSort(str)).doubleValue();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public boolean contains(@Nullable Object obj) {
        if (isLoaded()) {
            if ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE) {
                return false;
            }
            Iterator<E> it = iterator();
            while (it.hasNext()) {
                if (it.next().equals(obj)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    RealmResults<E> createLoadedResults(OsResults osResults) {
        RealmResults<E> realmResults = this.className != null ? new RealmResults<>(this.baseRealm, osResults, this.className) : new RealmResults<>(this.baseRealm, osResults, this.classSpec);
        realmResults.load();
        return realmResults;
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        return this.className != null ? new OrderedRealmCollectionSnapshot<>(this.baseRealm, this.osResults, this.className) : new OrderedRealmCollectionSnapshot<>(this.baseRealm, this.osResults, this.classSpec);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        this.baseRealm.checkIfValid();
        if (size() > 0) {
            this.osResults.clear();
            return true;
        }
        return false;
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        this.baseRealm.checkIfValidAndInTransaction();
        return this.osResults.deleteFirst();
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int i) {
        this.baseRealm.checkIfValidAndInTransaction();
        this.osResults.delete(i);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        this.baseRealm.checkIfValidAndInTransaction();
        return this.osResults.deleteLast();
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first() {
        return firstImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first(@Nullable E e) {
        return firstImpl(false, e);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int i) {
        this.baseRealm.checkIfValid();
        return (E) this.baseRealm.get((Class<RealmModel>) this.classSpec, this.className, this.osResults.getUncheckedRow(i));
    }

    public OsResults getOsResults() {
        return this.osResults;
    }

    public Realm getRealm() {
        this.baseRealm.checkIfValid();
        BaseRealm baseRealm = this.baseRealm;
        if (baseRealm instanceof Realm) {
            return (Realm) baseRealm;
        }
        throw new IllegalStateException("This method is only available for typed Realms");
    }

    public Table getTable() {
        return this.osResults.getTable();
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManageableObject
    public boolean isManaged() {
        return true;
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManageableObject
    public boolean isValid() {
        return this.osResults.isValid();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new RealmCollectionIterator();
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last() {
        return lastImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last(@Nullable E e) {
        return lastImpl(false, e);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new RealmCollectionListIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        return new RealmCollectionListIterator(i);
    }

    @Override // io.realm.RealmCollection
    public Number max(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.MAXIMUM, getColumnKeyForSort(str));
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateDate(OsResults.Aggregate.MAXIMUM, getColumnKeyForSort(str));
    }

    @Override // io.realm.RealmCollection
    public Number min(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.MINIMUM, getColumnKeyForSort(str));
    }

    @Override // io.realm.RealmCollection
    public Date minDate(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateDate(OsResults.Aggregate.MINIMUM, getColumnKeyForSort(str));
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E remove(int i) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E set(int i, E e) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (isLoaded()) {
            long size = this.osResults.size();
            return size > 2147483647L ? Integer.MAX_VALUE : (int) size;
        }
        return 0;
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str) {
        return createLoadedResults(this.osResults.sort(QueryDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), str, Sort.ASCENDING)));
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort) {
        return createLoadedResults(this.osResults.sort(QueryDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), str, sort)));
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] strArr, Sort[] sortArr) {
        return createLoadedResults(this.osResults.sort(QueryDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), strArr, sortArr)));
    }

    @Override // io.realm.RealmCollection
    public Number sum(String str) {
        this.baseRealm.checkIfValid();
        return this.osResults.aggregateNumber(OsResults.Aggregate.SUM, getColumnKeyForSort(str));
    }
}
