package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.PendingRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.UncheckedRow;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.core.QueryDescriptor;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmQuery.class */
public class RealmQuery<E> {
    private static final String ASYNC_QUERY_WRONG_THREAD_MESSAGE = "Async query cannot be created on current thread.";
    private static final String EMPTY_VALUES = "Non-empty 'values' must be provided.";
    private static final String TYPE_MISMATCH = "Field '%s': type mismatch - %s expected.";
    private String className;
    private Class<E> clazz;
    private final boolean forValues;
    private final OsList osList;
    private final TableQuery query;
    private DescriptorOrdering queryDescriptors;
    private final BaseRealm realm;
    private final RealmObjectSchema schema;
    private final Table table;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.RealmQuery$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmQuery$1.class */
    public static /* synthetic */ class C23891 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            $SwitchMap$io$realm$RealmFieldType = iArr;
            try {
                iArr[RealmFieldType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DECIMAL128.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList, Class<E> cls) {
        this.queryDescriptors = new DescriptorOrdering();
        this.realm = baseRealm;
        this.clazz = cls;
        boolean z = !isClassForRealmModel(cls);
        this.forValues = z;
        if (z) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        RealmObjectSchema schemaForClass = baseRealm.getSchema().getSchemaForClass((Class<? extends RealmModel>) cls);
        this.schema = schemaForClass;
        this.table = schemaForClass.getTable();
        this.osList = osList;
        this.query = osList.getQuery();
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList, String str) {
        this.queryDescriptors = new DescriptorOrdering();
        this.realm = baseRealm;
        this.className = str;
        this.forValues = false;
        RealmObjectSchema schemaForClass = baseRealm.getSchema().getSchemaForClass(str);
        this.schema = schemaForClass;
        this.table = schemaForClass.getTable();
        this.query = osList.getQuery();
        this.osList = osList;
    }

    private RealmQuery(BaseRealm baseRealm, String str) {
        this.queryDescriptors = new DescriptorOrdering();
        this.realm = baseRealm;
        this.className = str;
        this.forValues = false;
        RealmObjectSchema schemaForClass = baseRealm.getSchema().getSchemaForClass(str);
        this.schema = schemaForClass;
        Table table = schemaForClass.getTable();
        this.table = table;
        this.query = table.where();
        this.osList = null;
    }

    private RealmQuery(Realm realm, Class<E> cls) {
        this.queryDescriptors = new DescriptorOrdering();
        this.realm = realm;
        this.clazz = cls;
        boolean z = !isClassForRealmModel(cls);
        this.forValues = z;
        if (z) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        RealmObjectSchema schemaForClass = realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) cls);
        this.schema = schemaForClass;
        Table table = schemaForClass.getTable();
        this.table = table;
        this.osList = null;
        this.query = table.where();
    }

    private RealmQuery(RealmResults<E> realmResults, Class<E> cls) {
        this.queryDescriptors = new DescriptorOrdering();
        BaseRealm baseRealm = realmResults.baseRealm;
        this.realm = baseRealm;
        this.clazz = cls;
        boolean z = !isClassForRealmModel(cls);
        this.forValues = z;
        if (z) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = baseRealm.getSchema().getSchemaForClass((Class<? extends RealmModel>) cls);
        this.table = realmResults.getTable();
        this.osList = null;
        this.query = realmResults.getOsResults().where();
    }

    private RealmQuery(RealmResults<DynamicRealmObject> realmResults, String str) {
        this.queryDescriptors = new DescriptorOrdering();
        BaseRealm baseRealm = realmResults.baseRealm;
        this.realm = baseRealm;
        this.className = str;
        this.forValues = false;
        RealmObjectSchema schemaForClass = baseRealm.getSchema().getSchemaForClass(str);
        this.schema = schemaForClass;
        this.table = schemaForClass.getTable();
        this.query = realmResults.getOsResults().where();
        this.osList = null;
    }

    private RealmQuery<E> beginGroupWithoutThreadValidation() {
        this.query.group();
        return this;
    }

    public static <E extends RealmModel> RealmQuery<E> createDynamicQuery(DynamicRealm dynamicRealm, String str) {
        return new RealmQuery<>(dynamicRealm, str);
    }

    public static <E extends RealmModel> RealmQuery<E> createQuery(Realm realm, Class<E> cls) {
        return new RealmQuery<>(realm, cls);
    }

    public static <E> RealmQuery<E> createQueryFromList(RealmList<E> realmList) {
        return realmList.clazz == null ? new RealmQuery<>(realmList.baseRealm, realmList.getOsList(), realmList.className) : new RealmQuery<>(realmList.baseRealm, realmList.getOsList(), realmList.clazz);
    }

    public static <E> RealmQuery<E> createQueryFromResult(RealmResults<E> realmResults) {
        return realmResults.classSpec == null ? new RealmQuery<>((RealmResults<DynamicRealmObject>) realmResults, realmResults.className) : new RealmQuery<>(realmResults, realmResults.classSpec);
    }

    private RealmResults<E> createRealmResults(TableQuery tableQuery, DescriptorOrdering descriptorOrdering, boolean z) {
        OsResults createFromQuery = OsResults.createFromQuery(this.realm.sharedRealm, tableQuery, descriptorOrdering);
        RealmResults<E> realmResults = isDynamicQuery() ? new RealmResults<>(this.realm, createFromQuery, this.className) : new RealmResults<>(this.realm, createFromQuery, this.clazz);
        if (z) {
            realmResults.load();
        }
        return realmResults;
    }

    private RealmQuery<E> endGroupWithoutThreadValidation() {
        this.query.endGroup();
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Boolean bool) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), bool.booleanValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Byte b) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (b == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), b.byteValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Double d) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        if (d == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d.doubleValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Float f) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        if (f == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f.floatValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Integer num) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), num.intValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Long l) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), l.longValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Short sh) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (sh == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), sh.shortValue());
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable String str2, Case r10) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Date date) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Decimal128 decimal128) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        if (decimal128 == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        }
        return this;
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable ObjectId objectId) {
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        if (objectId == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        }
        return this;
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.realm.getSchema());
    }

    private long getSourceRowIndexForFirstObject() {
        if (!this.queryDescriptors.isEmpty()) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) findAll().first(null);
            if (realmObjectProxy == null) {
                return -1L;
            }
            return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
        }
        return this.query.find();
    }

    private static boolean isClassForRealmModel(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    private boolean isDynamicQuery() {
        return this.className != null;
    }

    private OsResults lazyFindAll() {
        this.realm.checkIfValid();
        return createRealmResults(this.query, this.queryDescriptors, false).osResults;
    }

    private static native String nativeSerializeQuery(long j, long j2);

    private RealmQuery<E> orWithoutThreadValidation() {
        this.query.m406or();
        return this;
    }

    public RealmQuery<E> alwaysFalse() {
        this.realm.checkIfValid();
        this.query.alwaysFalse();
        return this;
    }

    public RealmQuery<E> alwaysTrue() {
        this.realm.checkIfValid();
        this.query.alwaysTrue();
        return this;
    }

    public RealmQuery<E> and() {
        this.realm.checkIfValid();
        return this;
    }

    public double average(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        long andCheckFieldColumnKey = this.schema.getAndCheckFieldColumnKey(str);
        int i = C23891.$SwitchMap$io$realm$RealmFieldType[this.table.getColumnType(andCheckFieldColumnKey).ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.query.averageFloat(andCheckFieldColumnKey);
            }
            if (i != 3) {
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double. For Decimal128 use `averageDecimal128` method."));
            }
            return this.query.averageDouble(andCheckFieldColumnKey);
        }
        return this.query.averageInt(andCheckFieldColumnKey);
    }

    @Nullable
    public Decimal128 averageDecimal128(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        return this.query.averageDecimal128(this.schema.getAndCheckFieldColumnKey(str));
    }

    public RealmQuery<E> beginGroup() {
        this.realm.checkIfValid();
        return beginGroupWithoutThreadValidation();
    }

    public RealmQuery<E> beginsWith(String str, String str2) {
        return beginsWith(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> beginsWith(String str, String str2, Case r10) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        this.query.beginsWith(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
        return this;
    }

    public RealmQuery<E> between(String str, double d, double d2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE).getColumnKeys(), d, d2);
        return this;
    }

    public RealmQuery<E> between(String str, float f, float f2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT).getColumnKeys(), f, f2);
        return this;
    }

    public RealmQuery<E> between(String str, int i, int i2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER).getColumnKeys(), i, i2);
        return this;
    }

    public RealmQuery<E> between(String str, long j, long j2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER).getColumnKeys(), j, j2);
        return this;
    }

    public RealmQuery<E> between(String str, Date date, Date date2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.DATE).getColumnKeys(), date, date2);
        return this;
    }

    public RealmQuery<E> between(String str, Decimal128 decimal128, Decimal128 decimal1282) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128).getColumnKeys(), decimal128, decimal1282);
        return this;
    }

    public RealmQuery<E> contains(String str, String str2) {
        return contains(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> contains(String str, String str2, Case r10) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        this.query.contains(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
        return this;
    }

    public long count() {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        return lazyFindAll().size();
    }

    public RealmQuery<E> distinct(String str) {
        return distinct(str, new String[0]);
    }

    public RealmQuery<E> distinct(String str, String... strArr) {
        QueryDescriptor queryDescriptor;
        this.realm.checkIfValid();
        if (strArr.length == 0) {
            queryDescriptor = QueryDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, str);
        } else {
            String[] strArr2 = new String[strArr.length + 1];
            strArr2[0] = str;
            System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
            queryDescriptor = QueryDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, strArr2);
        }
        this.queryDescriptors.appendDistinct(queryDescriptor);
        return this;
    }

    public RealmQuery<E> endGroup() {
        this.realm.checkIfValid();
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> endsWith(String str, String str2) {
        return endsWith(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> endsWith(String str, String str2, Case r10) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        this.query.endsWith(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Boolean bool) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, bool);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Byte b) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, b);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Double d) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, d);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Float f) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, f);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Integer num) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, num);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Long l) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, l);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Short sh) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, sh);
    }

    public RealmQuery<E> equalTo(String str, @Nullable String str2) {
        return equalTo(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> equalTo(String str, @Nullable String str2, Case r8) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, str2, r8);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Date date) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, date);
    }

    public RealmQuery<E> equalTo(String str, @Nullable Decimal128 decimal128) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, decimal128);
    }

    public RealmQuery<E> equalTo(String str, @Nullable ObjectId objectId) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, objectId);
    }

    public RealmQuery<E> equalTo(String str, @Nullable byte[] bArr) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.BINARY);
        if (bArr == null) {
            this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), bArr);
        }
        return this;
    }

    public RealmResults<E> findAll() {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        return createRealmResults(this.query, this.queryDescriptors, true);
    }

    public RealmResults<E> findAllAsync() {
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
        return createRealmResults(this.query, this.queryDescriptors, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [io.realm.RealmModel] */
    @Nullable
    public E findFirst() {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        E e = null;
        if (this.forValues) {
            return null;
        }
        long sourceRowIndexForFirstObject = getSourceRowIndexForFirstObject();
        if (sourceRowIndexForFirstObject >= 0) {
            e = this.realm.get(this.clazz, this.className, sourceRowIndexForFirstObject);
        }
        return e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [io.realm.RealmModel] */
    /* JADX WARN: Type inference failed for: r0v31, types: [io.realm.DynamicRealmObject] */
    public E findFirstAsync() {
        RealmObjectProxy realmObjectProxy;
        this.realm.checkIfValid();
        if (!this.forValues) {
            this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
            UncheckedRow firstUncheckedRow = this.realm.isInTransaction() ? OsResults.createFromQuery(this.realm.sharedRealm, this.query).firstUncheckedRow() : new PendingRow(this.realm.sharedRealm, this.query, this.queryDescriptors, isDynamicQuery());
            if (isDynamicQuery()) {
                realmObjectProxy = new DynamicRealmObject(this.realm, firstUncheckedRow);
            } else {
                Class<E> cls = this.clazz;
                RealmProxyMediator schemaMediator = this.realm.getConfiguration().getSchemaMediator();
                BaseRealm baseRealm = this.realm;
                realmObjectProxy = schemaMediator.newInstance(cls, baseRealm, firstUncheckedRow, baseRealm.getSchema().getColumnInfo((Class<? extends RealmModel>) cls), false, Collections.emptyList());
            }
            if (firstUncheckedRow instanceof PendingRow) {
                firstUncheckedRow.setFrontEnd(((RealmObjectProxy) realmObjectProxy).realmGet$proxyState());
            }
            return realmObjectProxy;
        }
        throw new UnsupportedOperationException("findFirstAsync() available only when type parameter 'E' is implementing RealmModel.");
    }

    public String getDescription() {
        return nativeSerializeQuery(this.query.getNativePtr(), this.queryDescriptors.getNativePtr());
    }

    public Realm getRealm() {
        BaseRealm baseRealm = this.realm;
        if (baseRealm == null) {
            return null;
        }
        baseRealm.checkIfValid();
        BaseRealm baseRealm2 = this.realm;
        if (!(baseRealm2 instanceof Realm)) {
            throw new IllegalStateException("This method is only available for typed Realms");
        }
        return (Realm) baseRealm2;
    }

    public String getTypeQueried() {
        return this.table.getClassName();
    }

    public RealmQuery<E> greaterThan(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), i);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, Decimal128 decimal128) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, ObjectId objectId) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        this.query.greaterThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), i);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, Decimal128 decimal128) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, ObjectId objectId) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        this.query.greaterThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        return this;
    }

    /* renamed from: in */
    public RealmQuery<E> m417in(String str, @Nullable Boolean[] boolArr) {
        this.realm.checkIfValid();
        if (boolArr == null || boolArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, boolArr[0]);
        for (int i = 1; i < boolArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, boolArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m416in(String str, @Nullable Byte[] bArr) {
        this.realm.checkIfValid();
        if (bArr == null || bArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, bArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m415in(String str, @Nullable Double[] dArr) {
        this.realm.checkIfValid();
        if (dArr == null || dArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, dArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m414in(String str, @Nullable Float[] fArr) {
        this.realm.checkIfValid();
        if (fArr == null || fArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, fArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m413in(String str, @Nullable Integer[] numArr) {
        this.realm.checkIfValid();
        if (numArr == null || numArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, numArr[0]);
        for (int i = 1; i < numArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, numArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m412in(String str, @Nullable Long[] lArr) {
        this.realm.checkIfValid();
        if (lArr == null || lArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, lArr[0]);
        for (int i = 1; i < lArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, lArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m411in(String str, @Nullable Short[] shArr) {
        this.realm.checkIfValid();
        if (shArr == null || shArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, shArr[0]);
        for (int i = 1; i < shArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, shArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m410in(String str, @Nullable String[] strArr) {
        return m409in(str, strArr, Case.SENSITIVE);
    }

    /* renamed from: in */
    public RealmQuery<E> m409in(String str, @Nullable String[] strArr, Case r8) {
        this.realm.checkIfValid();
        if (strArr == null || strArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, strArr[0], r8);
        for (int i = 1; i < strArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, strArr[i], r8);
        }
        return endGroupWithoutThreadValidation();
    }

    /* renamed from: in */
    public RealmQuery<E> m408in(String str, @Nullable Date[] dateArr) {
        this.realm.checkIfValid();
        if (dateArr == null || dateArr.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, dateArr[0]);
        for (int i = 1; i < dateArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, dateArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> isEmpty(String str) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isEmpty(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotEmpty(String str) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isNotEmpty(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotNull(String str) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, new RealmFieldType[0]);
        this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNull(String str) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, new RealmFieldType[0]);
        this.query.isNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        return this;
    }

    public boolean isValid() {
        BaseRealm baseRealm = this.realm;
        boolean z = false;
        if (baseRealm != null) {
            if (baseRealm.isClosed()) {
                z = false;
            } else {
                OsList osList = this.osList;
                if (osList != null) {
                    return osList.isValid();
                }
                Table table = this.table;
                z = false;
                if (table != null) {
                    z = false;
                    if (table.isValid()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public RealmQuery<E> lessThan(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> lessThan(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> lessThan(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), i);
        return this;
    }

    public RealmQuery<E> lessThan(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> lessThan(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> lessThan(String str, Decimal128 decimal128) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        return this;
    }

    public RealmQuery<E> lessThan(String str, ObjectId objectId) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        this.query.lessThan(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), i);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, Decimal128 decimal128) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, ObjectId objectId) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        this.query.lessThanOrEqual(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        return this;
    }

    public RealmQuery<E> like(String str, String str2) {
        return like(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> like(String str, String str2, Case r10) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        this.query.like(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
        return this;
    }

    public RealmQuery<E> limit(long j) {
        this.realm.checkIfValid();
        if (j >= 1) {
            this.queryDescriptors.setLimit(j);
            return this;
        }
        throw new IllegalArgumentException("Only positive numbers above 0 is allowed. Yours was: " + j);
    }

    @Nullable
    public Number max(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        long andCheckFieldColumnKey = this.schema.getAndCheckFieldColumnKey(str);
        int i = C23891.$SwitchMap$io$realm$RealmFieldType[this.table.getColumnType(andCheckFieldColumnKey).ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.query.maximumFloat(andCheckFieldColumnKey);
            }
            if (i == 3) {
                return this.query.maximumDouble(andCheckFieldColumnKey);
            }
            if (i != 4) {
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
            }
            return this.query.maximumDecimal128(andCheckFieldColumnKey);
        }
        return this.query.maximumInt(andCheckFieldColumnKey);
    }

    @Nullable
    public Date maximumDate(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        return this.query.maximumDate(this.schema.getAndCheckFieldColumnKey(str));
    }

    @Nullable
    public Number min(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        long andCheckFieldColumnKey = this.schema.getAndCheckFieldColumnKey(str);
        int i = C23891.$SwitchMap$io$realm$RealmFieldType[this.table.getColumnType(andCheckFieldColumnKey).ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.query.minimumFloat(andCheckFieldColumnKey);
            }
            if (i == 3) {
                return this.query.minimumDouble(andCheckFieldColumnKey);
            }
            if (i != 4) {
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
            }
            return this.query.minimumDecimal128(andCheckFieldColumnKey);
        }
        return this.query.minimumInt(andCheckFieldColumnKey);
    }

    @Nullable
    public Date minimumDate(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        return this.query.minimumDate(this.schema.getAndCheckFieldColumnKey(str));
    }

    public RealmQuery<E> not() {
        this.realm.checkIfValid();
        this.query.not();
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Boolean bool) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.equalTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), !bool.booleanValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Byte b) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (b == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), b.byteValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Double d) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DOUBLE);
        if (d == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), d.doubleValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Float f) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.FLOAT);
        if (f == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), f.floatValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Integer num) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), num.intValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Long l) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), l.longValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Short sh) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.INTEGER);
        if (sh == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), sh.shortValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable String str2) {
        return notEqualTo(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable String str2, Case r10) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.STRING);
        if (fieldDescriptors.length() <= 1 || r10.getValue()) {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), str2, r10);
            return this;
        }
        throw new IllegalArgumentException("Link queries cannot be case insensitive - coming soon.");
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Date date) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DATE);
        if (date == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), date);
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, Decimal128 decimal128) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.DECIMAL128);
        if (decimal128 == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), decimal128);
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, ObjectId objectId) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.OBJECT_ID);
        if (objectId == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), objectId);
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable byte[] bArr) {
        this.realm.checkIfValid();
        FieldDescriptor fieldDescriptors = this.schema.getFieldDescriptors(str, RealmFieldType.BINARY);
        if (bArr == null) {
            this.query.isNotNull(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fieldDescriptors.getColumnKeys(), fieldDescriptors.getNativeTablePointers(), bArr);
        }
        return this;
    }

    /* renamed from: or */
    public RealmQuery<E> m407or() {
        this.realm.checkIfValid();
        return orWithoutThreadValidation();
    }

    public RealmQuery<E> sort(String str) {
        this.realm.checkIfValid();
        return sort(str, Sort.ASCENDING);
    }

    public RealmQuery<E> sort(String str, Sort sort) {
        this.realm.checkIfValid();
        return sort(new String[]{str}, new Sort[]{sort});
    }

    public RealmQuery<E> sort(String str, Sort sort, String str2, Sort sort2) {
        this.realm.checkIfValid();
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    public RealmQuery<E> sort(String[] strArr, Sort[] sortArr) {
        this.realm.checkIfValid();
        this.queryDescriptors.appendSort(QueryDescriptor.getInstanceForSort(getSchemaConnector(), this.query.getTable(), strArr, sortArr));
        return this;
    }

    public Number sum(String str) {
        this.realm.checkIfValid();
        this.realm.checkAllowQueriesOnUiThread();
        long andCheckFieldColumnKey = this.schema.getAndCheckFieldColumnKey(str);
        int i = C23891.$SwitchMap$io$realm$RealmFieldType[this.table.getColumnType(andCheckFieldColumnKey).ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Double.valueOf(this.query.sumFloat(andCheckFieldColumnKey));
            }
            if (i == 3) {
                return Double.valueOf(this.query.sumDouble(andCheckFieldColumnKey));
            }
            if (i != 4) {
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
            }
            return this.query.sumDecimal128(andCheckFieldColumnKey);
        }
        return Long.valueOf(this.query.sumInt(andCheckFieldColumnKey));
    }
}
