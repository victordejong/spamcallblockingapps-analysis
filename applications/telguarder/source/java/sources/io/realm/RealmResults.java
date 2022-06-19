package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.android.JsonUtils;
import io.realm.log.RealmLog;
import io.realm.p023rx.CollectionChange;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmResults.class */
public class RealmResults<E> extends OrderedRealmCollectionImpl<E> {

    /* renamed from: io.realm.RealmResults$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmResults$1.class */
    public static /* synthetic */ class C23901 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            $SwitchMap$io$realm$RealmFieldType = iArr;
            try {
                iArr[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DECIMAL128.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT_ID.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LIST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER_LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN_LIST.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.STRING_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BINARY_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DECIMAL128_LIST.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT_ID_LIST.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT_LIST.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE_LIST.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    public RealmResults(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        super(baseRealm, osResults, cls);
    }

    public RealmResults(BaseRealm baseRealm, OsResults osResults, String str) {
        super(baseRealm, osResults, str);
    }

    private void checkForAddListener(@Nullable Object obj) {
        if (obj != null) {
            this.baseRealm.checkIfValid();
            this.baseRealm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    private void checkForRemoveListener(@Nullable Object obj, boolean z) {
        if (!z || obj != null) {
            if (!this.baseRealm.isClosed()) {
                return;
            }
            RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.baseRealm.configuration.getPath());
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    private void checkNonEmptyFieldName(String str) {
        if (!Util.isEmptyString(str)) {
            return;
        }
        throw new IllegalArgumentException("Non-empty 'fieldname' required.");
    }

    private void checkNotNull(@Nullable Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("Non-null 'value' required. Use 'setNull(fieldName)' instead.");
    }

    private Row checkRealmObjectConstraints(String str, @Nullable RealmModel realmModel) {
        if (realmModel != null) {
            if (!RealmObject.isManaged(realmModel) || !RealmObject.isValid(realmModel)) {
                throw new IllegalArgumentException("'value' is not a valid, managed Realm object.");
            }
            ProxyState realmGet$proxyState = ((RealmObjectProxy) realmModel).realmGet$proxyState();
            if (!realmGet$proxyState.getRealm$realm().getPath().equals(this.baseRealm.getPath())) {
                throw new IllegalArgumentException("'value' does not belong to the same Realm as the RealmResults.");
            }
            Table table = this.osResults.getTable();
            Table linkTarget = table.getLinkTarget(table.getColumnKey(str));
            Table table2 = realmGet$proxyState.getRow$realm().getTable();
            if (!linkTarget.hasSameSchema(table2)) {
                throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was '%s', expected '%s'", table2.getClassName(), linkTarget.getClassName()));
            }
            return realmGet$proxyState.getRow$realm();
        }
        return null;
    }

    private void checkType(String str, RealmFieldType realmFieldType) {
        String className = this.osResults.getTable().getClassName();
        RealmFieldType fieldType = this.baseRealm.getSchema().get(className).getFieldType(str);
        if (fieldType == realmFieldType) {
            return;
        }
        throw new IllegalArgumentException(String.format("The field '%s.%s' is not of the expected type. Actual: %s, Expected: %s", className, str, fieldType, realmFieldType));
    }

    private <T> void checkTypeOfListElements(RealmList<T> realmList, Class<?> cls) {
        if (!realmList.isEmpty()) {
            Class<?> cls2 = realmList.first().getClass();
            if (!cls.isAssignableFrom(cls2)) {
                throw new IllegalArgumentException(String.format("List contained the wrong type of elements. Elements of type '%s' was expected, but the actual type is '%s'", cls, cls2));
            }
        }
    }

    static <T extends RealmModel> RealmResults<T> createBacklinkResults(BaseRealm baseRealm, Row row, Class<T> cls, String str) {
        Table table = baseRealm.getSchema().getTable(cls);
        return new RealmResults<>(baseRealm, OsResults.createForBacklinks(baseRealm.sharedRealm, (UncheckedRow) row, table, str), cls);
    }

    public static RealmResults<DynamicRealmObject> createDynamicBacklinkResults(DynamicRealm dynamicRealm, UncheckedRow uncheckedRow, Table table, String str) {
        return new RealmResults<>(dynamicRealm, OsResults.createForBacklinks(dynamicRealm.sharedRealm, uncheckedRow, table, str), Table.getClassNameForTable(table.getName()));
    }

    private Class<?> getListType(RealmList realmList) {
        return !realmList.isEmpty() ? realmList.first().getClass() : Long.class;
    }

    private String mapFieldNameToInternalName(String str) {
        String str2 = str;
        if (this.baseRealm instanceof Realm) {
            str2 = this.baseRealm.getSchema().getColumnInfo(this.osResults.getTable().getClassName()).getInternalFieldName(str);
            if (str2 == null) {
                throw new IllegalArgumentException(String.format("Field '%s' does not exists.", str));
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ void add(int i, Object obj) {
        super.add(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(int i, Collection collection) {
        return super.addAll(i, collection);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    public void addChangeListener(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        checkForAddListener(orderedRealmCollectionChangeListener);
        this.osResults.addListener((OsResults) this, (OrderedRealmCollectionChangeListener<OsResults>) orderedRealmCollectionChangeListener);
    }

    public void addChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForAddListener(realmChangeListener);
        this.osResults.addListener((OsResults) this, (RealmChangeListener<OsResults>) realmChangeListener);
    }

    public Observable<CollectionChange<RealmResults<E>>> asChangesetObservable() {
        if (this.baseRealm instanceof Realm) {
            return this.baseRealm.configuration.getRxFactory().changesetsFrom((Realm) this.baseRealm, this);
        }
        if (this.baseRealm instanceof DynamicRealm) {
            return this.baseRealm.configuration.getRxFactory().changesetsFrom((DynamicRealm) this.baseRealm, this);
        }
        throw new UnsupportedOperationException(this.baseRealm.getClass() + " does not support RxJava2.");
    }

    public Flowable<RealmResults<E>> asFlowable() {
        if (this.baseRealm instanceof Realm) {
            return this.baseRealm.configuration.getRxFactory().from((Realm) this.baseRealm, this);
        }
        if (this.baseRealm instanceof DynamicRealm) {
            return this.baseRealm.configuration.getRxFactory().from((DynamicRealm) this.baseRealm, this);
        }
        throw new UnsupportedOperationException(this.baseRealm.getClass() + " does not support RxJava2.");
    }

    public String asJSON() {
        return this.osResults.toJSON(-1);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ double average(String str) {
        return super.average(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj) {
        return super.contains(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ OrderedRealmCollectionSnapshot createSnapshot() {
        return super.createSnapshot();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean deleteAllFromRealm() {
        return super.deleteAllFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ boolean deleteFirstFromRealm() {
        return super.deleteFirstFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ void deleteFromRealm(int i) {
        super.deleteFromRealm(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ boolean deleteLastFromRealm() {
        return super.deleteLastFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first() {
        return super.first();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first(@Nullable Object obj) {
        return super.first(obj);
    }

    @Override // io.realm.RealmCollection
    public RealmResults<E> freeze() {
        if (isValid()) {
            BaseRealm freeze = this.baseRealm.freeze();
            OsResults freeze2 = this.osResults.freeze(freeze.sharedRealm);
            return this.className != null ? new RealmResults<>(freeze, freeze2, this.className) : new RealmResults<>(freeze, freeze2, this.classSpec);
        }
        throw new IllegalStateException("Only valid, managed RealmResults can be frozen.");
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Nullable
    public /* bridge */ /* synthetic */ Object get(int i) {
        return super.get(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl
    public /* bridge */ /* synthetic */ Realm getRealm() {
        return super.getRealm();
    }

    @Override // io.realm.internal.ManageableObject
    public boolean isFrozen() {
        return this.baseRealm != null && this.baseRealm.isFrozen();
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        this.baseRealm.checkIfValid();
        return this.osResults.isLoaded();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection, io.realm.internal.ManageableObject
    public /* bridge */ /* synthetic */ boolean isManaged() {
        return super.isManaged();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection, io.realm.internal.ManageableObject
    public /* bridge */ /* synthetic */ boolean isValid() {
        return super.isValid();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last() {
        return super.last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last(@Nullable Object obj) {
        return super.last(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator() {
        return super.listIterator();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        this.baseRealm.checkIfValid();
        this.osResults.load();
        return true;
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number max(String str) {
        return super.max(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Date maxDate(String str) {
        return super.maxDate(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number min(String str) {
        return super.min(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Date minDate(String str) {
        return super.minDate(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ Object remove(int i) {
        return super.remove(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    public void removeAllChangeListeners() {
        checkForRemoveListener(null, false);
        this.osResults.removeAllListeners();
    }

    public void removeChangeListener(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        checkForRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osResults.removeListener((OsResults) this, (OrderedRealmCollectionChangeListener<OsResults>) orderedRealmCollectionChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForRemoveListener(realmChangeListener, true);
        this.osResults.removeListener((OsResults) this, (RealmChangeListener<OsResults>) realmChangeListener);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return super.set(i, obj);
    }

    public void setBlob(String str, @Nullable byte[] bArr) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.BINARY);
        this.osResults.setBlob(mapFieldNameToInternalName, bArr);
    }

    public void setBoolean(String str, boolean z) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.BOOLEAN);
        this.osResults.setBoolean(mapFieldNameToInternalName, z);
    }

    public void setByte(String str, byte b) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, b);
    }

    public void setDate(String str, @Nullable Date date) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.DATE);
        this.osResults.setDate(mapFieldNameToInternalName, date);
    }

    public void setDecimal128(String str, @Nullable Decimal128 decimal128) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.DECIMAL128);
        this.osResults.setDecimal128(mapFieldNameToInternalName, decimal128);
    }

    public void setDouble(String str, double d) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.DOUBLE);
        this.osResults.setDouble(mapFieldNameToInternalName, d);
    }

    public void setFloat(String str, float f) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.FLOAT);
        this.osResults.setFloat(mapFieldNameToInternalName, f);
    }

    public void setInt(String str, int i) {
        checkNonEmptyFieldName(str);
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.baseRealm.checkIfValidAndInTransaction();
        this.osResults.setInt(mapFieldNameToInternalName, i);
    }

    public <T> void setList(String str, RealmList<T> realmList) {
        checkNonEmptyFieldName(str);
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        if (realmList != null) {
            RealmFieldType fieldType = this.baseRealm.getSchema().getSchemaForClass(this.osResults.getTable().getClassName()).getFieldType(mapFieldNameToInternalName);
            switch (C23901.$SwitchMap$io$realm$RealmFieldType[fieldType.ordinal()]) {
                case 8:
                    checkTypeOfListElements(realmList, RealmModel.class);
                    checkRealmObjectConstraints(mapFieldNameToInternalName, (RealmModel) realmList.first(null));
                    this.osResults.setModelList(mapFieldNameToInternalName, realmList);
                    return;
                case 9:
                    Class<?> listType = getListType(realmList);
                    if (listType.equals(Integer.class)) {
                        this.osResults.setIntegerList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (listType.equals(Long.class)) {
                        this.osResults.setLongList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (listType.equals(Short.class)) {
                        this.osResults.setShortList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (!listType.equals(Byte.class)) {
                        throw new IllegalArgumentException(String.format("List contained the wrong type of elements. Elements that can be mapped to Integers was expected, but the actual type is '%s'", listType));
                    } else {
                        this.osResults.setByteList(mapFieldNameToInternalName, realmList);
                        return;
                    }
                case 10:
                    checkTypeOfListElements(realmList, Boolean.class);
                    this.osResults.setBooleanList(mapFieldNameToInternalName, realmList);
                    return;
                case 11:
                    checkTypeOfListElements(realmList, String.class);
                    this.osResults.setStringList(mapFieldNameToInternalName, realmList);
                    return;
                case 12:
                    checkTypeOfListElements(realmList, byte[].class);
                    this.osResults.setByteArrayList(mapFieldNameToInternalName, realmList);
                    return;
                case 13:
                    checkTypeOfListElements(realmList, Date.class);
                    this.osResults.setDateList(mapFieldNameToInternalName, realmList);
                    return;
                case 14:
                    checkTypeOfListElements(realmList, Decimal128.class);
                    this.osResults.setDecimal128List(mapFieldNameToInternalName, realmList);
                    return;
                case 15:
                    checkTypeOfListElements(realmList, ObjectId.class);
                    this.osResults.setObjectIdList(mapFieldNameToInternalName, realmList);
                    return;
                case 16:
                    checkTypeOfListElements(realmList, Float.class);
                    this.osResults.setFloatList(mapFieldNameToInternalName, realmList);
                    return;
                case 17:
                    checkTypeOfListElements(realmList, Double.class);
                    this.osResults.setDoubleList(mapFieldNameToInternalName, realmList);
                    return;
                default:
                    throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", mapFieldNameToInternalName, fieldType));
            }
        }
        throw new IllegalArgumentException("Non-null 'list' required");
    }

    public void setLong(String str, long j) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, j);
    }

    public void setNull(String str) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        this.osResults.setNull(str);
    }

    public void setObject(String str, @Nullable RealmModel realmModel) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.OBJECT);
        this.osResults.setObject(mapFieldNameToInternalName, checkRealmObjectConstraints(mapFieldNameToInternalName, realmModel));
    }

    public void setObjectId(String str, @Nullable ObjectId objectId) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.OBJECT_ID);
        this.osResults.setObjectId(mapFieldNameToInternalName, objectId);
    }

    public void setShort(String str, short s) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, s);
    }

    public void setString(String str, @Nullable String str2) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.STRING);
        this.osResults.setString(mapFieldNameToInternalName, str2);
    }

    public void setValue(String str, @Nullable Object obj) {
        checkNonEmptyFieldName(str);
        this.baseRealm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        String className = this.osResults.getTable().getClassName();
        RealmObjectSchema realmObjectSchema = getRealm().getSchema().get(className);
        if (realmObjectSchema.hasField(mapFieldNameToInternalName)) {
            if (obj == null) {
                this.osResults.setNull(mapFieldNameToInternalName);
                return;
            }
            RealmFieldType fieldType = realmObjectSchema.getFieldType(mapFieldNameToInternalName);
            ObjectId objectId = obj;
            if (z) {
                objectId = obj;
                if (fieldType != RealmFieldType.STRING) {
                    switch (C23901.$SwitchMap$io$realm$RealmFieldType[fieldType.ordinal()]) {
                        case 1:
                            objectId = Boolean.valueOf(Boolean.parseBoolean(str2));
                            break;
                        case 2:
                            objectId = Long.valueOf(Long.parseLong(str2));
                            break;
                        case 3:
                            objectId = Float.valueOf(Float.parseFloat(str2));
                            break;
                        case 4:
                            objectId = Double.valueOf(Double.parseDouble(str2));
                            break;
                        case 5:
                            objectId = JsonUtils.stringToDate(str2);
                            break;
                        case 6:
                            objectId = Decimal128.parse(str2);
                            break;
                        case 7:
                            objectId = new ObjectId(str2);
                            break;
                        default:
                            throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", mapFieldNameToInternalName, obj));
                    }
                }
            }
            Class<?> cls = objectId.getClass();
            if (cls == Boolean.class) {
                setBoolean(mapFieldNameToInternalName, ((Boolean) objectId).booleanValue());
                return;
            } else if (cls == Short.class) {
                setShort(mapFieldNameToInternalName, ((Short) objectId).shortValue());
                return;
            } else if (cls == Integer.class) {
                setInt(mapFieldNameToInternalName, ((Integer) objectId).intValue());
                return;
            } else if (cls == Long.class) {
                setLong(mapFieldNameToInternalName, ((Long) objectId).longValue());
                return;
            } else if (cls == Byte.class) {
                setByte(mapFieldNameToInternalName, ((Byte) objectId).byteValue());
                return;
            } else if (cls == Float.class) {
                setFloat(mapFieldNameToInternalName, ((Float) objectId).floatValue());
                return;
            } else if (cls == Double.class) {
                setDouble(mapFieldNameToInternalName, ((Double) objectId).doubleValue());
                return;
            } else if (cls == String.class) {
                setString(mapFieldNameToInternalName, (String) objectId);
                return;
            } else if (objectId instanceof Date) {
                setDate(mapFieldNameToInternalName, (Date) objectId);
                return;
            } else if (objectId instanceof Decimal128) {
                setDecimal128(mapFieldNameToInternalName, (Decimal128) objectId);
                return;
            } else if (objectId instanceof ObjectId) {
                setObjectId(mapFieldNameToInternalName, (ObjectId) objectId);
                return;
            } else if (objectId instanceof byte[]) {
                setBlob(mapFieldNameToInternalName, (byte[]) objectId);
                return;
            } else if (objectId instanceof RealmModel) {
                setObject(mapFieldNameToInternalName, (RealmModel) objectId);
                return;
            } else if (cls == RealmList.class) {
                setList(mapFieldNameToInternalName, (RealmList) objectId);
                return;
            } else {
                throw new IllegalArgumentException("Value is of a type not supported: " + objectId.getClass());
            }
        }
        throw new IllegalArgumentException(String.format("Field '%s' could not be found in class '%s'", mapFieldNameToInternalName, className));
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String str) {
        return super.sort(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String str, Sort sort) {
        return super.sort(str, sort);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String[] strArr, Sort[] sortArr) {
        return super.sort(strArr, sortArr);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number sum(String str) {
        return super.sum(str);
    }

    @Override // io.realm.RealmCollection
    public RealmQuery<E> where() {
        this.baseRealm.checkIfValid();
        return RealmQuery.createQueryFromResult(this);
    }
}
