package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.p023rx.CollectionChange;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmList.class */
public class RealmList<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    static final String ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE = "This feature is available only when the element type is implementing RealmModel.";
    private static final String ONLY_IN_MANAGED_MODE_MESSAGE = "This method is only available in managed mode.";
    private static final String REMOVE_OUTSIDE_TRANSACTION_ERROR = "Objects can only be removed from inside a write transaction.";
    public final BaseRealm baseRealm;
    @Nullable
    protected String className;
    @Nullable
    protected Class<E> clazz;
    private final ManagedListOperator<E> osListOperator;
    private List<E> unmanagedList;

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmList$RealmItr.class */
    public class RealmItr implements Iterator<E> {
        int cursor;
        int expectedModCount;
        int lastRet;

        private RealmItr() {
            RealmList.this = r4;
            this.cursor = 0;
            this.lastRet = -1;
            this.expectedModCount = r4.modCount;
        }

        final void checkConcurrentModification() {
            if (RealmList.this.modCount == this.expectedModCount) {
                return;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            return this.cursor != RealmList.this.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public E next() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            int i = this.cursor;
            try {
                E e = (E) RealmList.this.get(i);
                this.lastRet = i;
                this.cursor = i + 1;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index " + i + " when size is " + RealmList.this.size() + ". Remember to check hasNext() before using next().");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            RealmList.this.checkValidRealm();
            if (this.lastRet >= 0) {
                checkConcurrentModification();
                try {
                    RealmList.this.remove(this.lastRet);
                    int i = this.lastRet;
                    int i2 = this.cursor;
                    if (i < i2) {
                        this.cursor = i2 - 1;
                    }
                    this.lastRet = -1;
                    this.expectedModCount = RealmList.this.modCount;
                    return;
                } catch (IndexOutOfBoundsException e) {
                    throw new ConcurrentModificationException();
                }
            }
            throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmList$RealmListItr.class */
    public class RealmListItr extends RealmList<E>.RealmItr implements ListIterator<E> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RealmListItr(int i) {
            super();
            RealmList.this = r5;
            if (i >= 0 && i <= r5.size()) {
                this.cursor = i;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (r5.size() - 1) + "]. Index was " + i);
        }

        @Override // java.util.ListIterator
        public void add(@Nullable E e) {
            RealmList.this.baseRealm.checkIfValid();
            checkConcurrentModification();
            try {
                int i = this.cursor;
                RealmList.this.add(i, e);
                this.lastRet = -1;
                this.cursor = i + 1;
                this.expectedModCount = RealmList.this.modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.cursor != 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.cursor;
        }

        @Override // java.util.ListIterator
        @Nullable
        public E previous() {
            checkConcurrentModification();
            int i = this.cursor - 1;
            try {
                E e = (E) RealmList.this.get(i);
                this.cursor = i;
                this.lastRet = i;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index less than zero. This was " + i + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override // java.util.ListIterator
        public void set(@Nullable E e) {
            RealmList.this.baseRealm.checkIfValid();
            if (this.lastRet >= 0) {
                checkConcurrentModification();
                try {
                    RealmList.this.set(this.lastRet, e);
                    this.expectedModCount = RealmList.this.modCount;
                    return;
                } catch (IndexOutOfBoundsException e2) {
                    throw new ConcurrentModificationException();
                }
            }
            throw new IllegalStateException();
        }
    }

    public RealmList() {
        this.baseRealm = null;
        this.osListOperator = null;
        this.unmanagedList = new ArrayList();
    }

    public RealmList(Class<E> cls, OsList osList, BaseRealm baseRealm) {
        this.clazz = cls;
        this.osListOperator = getOperator(baseRealm, osList, cls, null);
        this.baseRealm = baseRealm;
    }

    public RealmList(String str, OsList osList, BaseRealm baseRealm) {
        this.baseRealm = baseRealm;
        this.className = str;
        this.osListOperator = getOperator(baseRealm, osList, null, str);
    }

    public RealmList(E... eArr) {
        if (eArr != null) {
            this.baseRealm = null;
            this.osListOperator = null;
            ArrayList arrayList = new ArrayList(eArr.length);
            this.unmanagedList = arrayList;
            Collections.addAll(arrayList, eArr);
            return;
        }
        throw new IllegalArgumentException("The objects argument cannot be null");
    }

    private void checkForAddRemoveListener(@Nullable Object obj, boolean z) {
        if (!z || obj != null) {
            this.baseRealm.checkIfValid();
            this.baseRealm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public void checkValidRealm() {
        this.baseRealm.checkIfValid();
    }

    @Nullable
    private E firstImpl(boolean z, @Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(0);
            }
        } else {
            List<E> list = this.unmanagedList;
            if (list != null && !list.isEmpty()) {
                return this.unmanagedList.get(0);
            }
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("The list is empty.");
    }

    private ManagedListOperator<E> getOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<E> cls, @Nullable String str) {
        if (cls == null || isClassForRealmModel(cls)) {
            return new RealmModelListOperator(baseRealm, osList, cls, str);
        }
        if (cls == String.class) {
            return new StringListOperator(baseRealm, osList, cls);
        }
        if (cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class) {
            return new LongListOperator(baseRealm, osList, cls);
        }
        if (cls == Boolean.class) {
            return new BooleanListOperator(baseRealm, osList, cls);
        }
        if (cls == byte[].class) {
            return new BinaryListOperator(baseRealm, osList, cls);
        }
        if (cls == Double.class) {
            return new DoubleListOperator(baseRealm, osList, cls);
        }
        if (cls == Float.class) {
            return new FloatListOperator(baseRealm, osList, cls);
        }
        if (cls == Date.class) {
            return new DateListOperator(baseRealm, osList, cls);
        }
        if (cls == Decimal128.class) {
            return new Decimal128ListOperator(baseRealm, osList, cls);
        }
        if (cls == ObjectId.class) {
            return new ObjectIdListOperator(baseRealm, osList, cls);
        }
        throw new IllegalArgumentException("Unexpected value class: " + cls.getName());
    }

    private boolean isAttached() {
        ManagedListOperator<E> managedListOperator = this.osListOperator;
        return managedListOperator != null && managedListOperator.isValid();
    }

    private static boolean isClassForRealmModel(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    @Nullable
    private E lastImpl(boolean z, @Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(this.osListOperator.size() - 1);
            }
        } else {
            List<E> list = this.unmanagedList;
            if (list != null && !list.isEmpty()) {
                List<E> list2 = this.unmanagedList;
                return list2.get(list2.size() - 1);
            }
        }
        if (!z) {
            return e;
        }
        throw new IndexOutOfBoundsException("The list is empty.");
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, @Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.insert(i, e);
        } else {
            this.unmanagedList.add(i, e);
        }
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(@Nullable E e) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.append(e);
        } else {
            this.unmanagedList.add(e);
        }
        this.modCount++;
        return true;
    }

    public void addChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        checkForAddRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osListOperator.getOsList().addListener((OsList) this, (OrderedRealmCollectionChangeListener<OsList>) orderedRealmCollectionChangeListener);
    }

    public void addChangeListener(RealmChangeListener<RealmList<E>> realmChangeListener) {
        checkForAddRemoveListener(realmChangeListener, true);
        this.osListOperator.getOsList().addListener((OsList) this, (RealmChangeListener<OsList>) realmChangeListener);
    }

    public Observable<CollectionChange<RealmList<E>>> asChangesetObservable() {
        BaseRealm baseRealm = this.baseRealm;
        if (baseRealm instanceof Realm) {
            return baseRealm.configuration.getRxFactory().changesetsFrom((Realm) this.baseRealm, this);
        }
        if (baseRealm instanceof DynamicRealm) {
            return baseRealm.configuration.getRxFactory().changesetsFrom((DynamicRealm) baseRealm, this);
        }
        throw new UnsupportedOperationException(this.baseRealm.getClass() + " does not support RxJava2.");
    }

    public Flowable<RealmList<E>> asFlowable() {
        BaseRealm baseRealm = this.baseRealm;
        if (baseRealm instanceof Realm) {
            return baseRealm.configuration.getRxFactory().from((Realm) this.baseRealm, this);
        }
        if (baseRealm instanceof DynamicRealm) {
            return baseRealm.configuration.getRxFactory().from((DynamicRealm) this.baseRealm, this);
        }
        throw new UnsupportedOperationException(this.baseRealm.getClass() + " does not support RxJava2.");
    }

    @Override // io.realm.RealmCollection
    public double average(String str) {
        return where().average(str);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.removeAll();
        } else {
            this.unmanagedList.clear();
        }
        this.modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public boolean contains(@Nullable Object obj) {
        if (isManaged()) {
            this.baseRealm.checkIfValid();
            if ((obj instanceof RealmObjectProxy) && ((RealmObjectProxy) obj).realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE) {
                return false;
            }
            return super.contains(obj);
        }
        return this.unmanagedList.contains(obj);
    }

    long createAndAddEmbeddedObject() {
        return this.osListOperator.getOsList().createAndAddEmbeddedObject();
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.forRealmModel()) {
                throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
            }
            if (this.className != null) {
                BaseRealm baseRealm = this.baseRealm;
                return new OrderedRealmCollectionSnapshot<>(baseRealm, OsResults.createFromQuery(baseRealm.sharedRealm, this.osListOperator.getOsList().getQuery()), this.className);
            }
            BaseRealm baseRealm2 = this.baseRealm;
            return new OrderedRealmCollectionSnapshot<>(baseRealm2, OsResults.createFromQuery(baseRealm2.sharedRealm, this.osListOperator.getOsList().getQuery()), this.clazz);
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        if (isManaged()) {
            checkValidRealm();
            if (this.osListOperator.isEmpty()) {
                return false;
            }
            this.osListOperator.deleteAll();
            this.modCount++;
            return true;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        if (isManaged()) {
            boolean z = false;
            if (!this.osListOperator.isEmpty()) {
                deleteFromRealm(0);
                z = true;
                this.modCount++;
            }
            return z;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int i) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.delete(i);
            this.modCount++;
            return;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        if (isManaged()) {
            if (this.osListOperator.isEmpty()) {
                return false;
            }
            this.osListOperator.deleteLast();
            this.modCount++;
            return true;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
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

    @Override // io.realm.RealmCollection
    public RealmList<E> freeze() {
        if (isManaged()) {
            if (!isValid()) {
                throw new IllegalStateException("Only valid, managed RealmLists can be frozen.");
            }
            BaseRealm freeze = this.baseRealm.freeze();
            OsList freeze2 = getOsList().freeze(freeze.sharedRealm);
            return this.className != null ? new RealmList<>(this.className, freeze2, freeze) : new RealmList<>(this.clazz, freeze2, freeze);
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int i) {
        if (isManaged()) {
            checkValidRealm();
            return this.osListOperator.get(i);
        }
        return this.unmanagedList.get(i);
    }

    public OsList getOsList() {
        return this.osListOperator.getOsList();
    }

    public Realm getRealm() {
        BaseRealm baseRealm = this.baseRealm;
        if (baseRealm == null) {
            return null;
        }
        baseRealm.checkIfValid();
        BaseRealm baseRealm2 = this.baseRealm;
        if (!(baseRealm2 instanceof Realm)) {
            throw new IllegalStateException("This method is only available for typed Realms");
        }
        return (Realm) baseRealm2;
    }

    @Override // io.realm.internal.ManageableObject
    public boolean isFrozen() {
        BaseRealm baseRealm = this.baseRealm;
        return baseRealm != null && baseRealm.isFrozen();
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManageableObject
    public boolean isManaged() {
        return this.baseRealm != null;
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManageableObject
    public boolean isValid() {
        BaseRealm baseRealm = this.baseRealm;
        if (baseRealm == null) {
            return true;
        }
        if (!baseRealm.isClosed()) {
            return isAttached();
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @Nonnull
    public Iterator<E> iterator() {
        return isManaged() ? new RealmItr() : super.iterator();
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
    @Nonnull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<E> listIterator(int i) {
        return isManaged() ? new RealmListItr(i) : super.listIterator(i);
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        return true;
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number max(String str) {
        return where().max(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String str) {
        return where().maximumDate(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number min(String str) {
        return where().min(str);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date minDate(String str) {
        return where().minimumDate(str);
    }

    public void move(int i, int i2) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.move(i, i2);
            return;
        }
        int size = this.unmanagedList.size();
        if (i < 0 || size <= i) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + size);
        } else if (i2 >= 0 && size > i2) {
            this.unmanagedList.add(i2, this.unmanagedList.remove(i));
        } else {
            throw new IndexOutOfBoundsException("Invalid index " + i2 + ", size is " + size);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        E e;
        if (isManaged()) {
            checkValidRealm();
            e = get(i);
            this.osListOperator.remove(i);
        } else {
            e = this.unmanagedList.remove(i);
        }
        this.modCount++;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(@Nullable Object obj) {
        if (!isManaged() || this.baseRealm.isInTransaction()) {
            return super.remove(obj);
        }
        throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        if (!isManaged() || this.baseRealm.isInTransaction()) {
            return super.removeAll(collection);
        }
        throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
    }

    public void removeAllChangeListeners() {
        checkForAddRemoveListener(null, false);
        this.osListOperator.getOsList().removeAllListeners();
    }

    public void removeChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> orderedRealmCollectionChangeListener) {
        checkForAddRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osListOperator.getOsList().removeListener((OsList) this, (OrderedRealmCollectionChangeListener<OsList>) orderedRealmCollectionChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<RealmList<E>> realmChangeListener) {
        checkForAddRemoveListener(realmChangeListener, true);
        this.osListOperator.getOsList().removeListener((OsList) this, (RealmChangeListener<OsList>) realmChangeListener);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, @Nullable E e) {
        E e2;
        if (isManaged()) {
            checkValidRealm();
            e2 = this.osListOperator.set(i, e);
        } else {
            e2 = this.unmanagedList.set(i, e);
        }
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (isManaged()) {
            checkValidRealm();
            return this.osListOperator.size();
        }
        return this.unmanagedList.size();
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str) {
        return sort(str, Sort.ASCENDING);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort) {
        if (isManaged()) {
            return where().sort(str, sort).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] strArr, Sort[] sortArr) {
        if (isManaged()) {
            return where().sort(strArr, sortArr).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    public Number sum(String str) {
        return where().sum(str);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!isManaged()) {
            sb.append("RealmList<?>@[");
            int size = size();
            for (int i = 0; i < size; i++) {
                E e = get(i);
                if (e instanceof RealmModel) {
                    sb.append(System.identityHashCode(e));
                } else if (e instanceof byte[]) {
                    sb.append("byte[");
                    sb.append(((byte[]) e).length);
                    sb.append("]");
                } else {
                    sb.append(e);
                }
                sb.append(",");
            }
            if (size() > 0) {
                sb.setLength(sb.length() - 1);
            }
            sb.append("]");
        } else {
            sb.append("RealmList<");
            String str = this.className;
            if (str != null) {
                sb.append(str);
            } else if (isClassForRealmModel(this.clazz)) {
                sb.append(this.baseRealm.getSchema().getSchemaForClass((Class<? extends RealmModel>) this.clazz).getClassName());
            } else {
                Class<E> cls = this.clazz;
                if (cls == byte[].class) {
                    sb.append(cls.getSimpleName());
                } else {
                    sb.append(cls.getName());
                }
            }
            sb.append(">@[");
            if (!isAttached()) {
                sb.append("invalid");
            } else {
                if (isClassForRealmModel(this.clazz)) {
                    for (int i2 = 0; i2 < size(); i2++) {
                        sb.append(((RealmObjectProxy) get(i2)).realmGet$proxyState().getRow$realm().getObjectKey());
                        sb.append(",");
                    }
                    if (size() > 0) {
                        sb.setLength(sb.length() - 1);
                    }
                } else {
                    for (int i3 = 0; i3 < size(); i3++) {
                        E e2 = get(i3);
                        if (e2 instanceof byte[]) {
                            sb.append("byte[");
                            sb.append(((byte[]) e2).length);
                            sb.append("]");
                        } else {
                            sb.append(e2);
                        }
                        sb.append(",");
                    }
                    if (size() > 0) {
                        sb.setLength(sb.length() - 1);
                    }
                }
            }
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // io.realm.RealmCollection
    public RealmQuery<E> where() {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.forRealmModel()) {
                throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
            }
            return RealmQuery.createQueryFromList(this);
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }
}
