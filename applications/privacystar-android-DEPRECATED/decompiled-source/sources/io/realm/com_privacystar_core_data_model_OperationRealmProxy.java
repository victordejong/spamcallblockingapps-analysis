package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.Operation;
import com.privacystar.core.data.model.OperationFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OperationRealmProxy.class */
public class com_privacystar_core_data_model_OperationRealmProxy extends Operation implements RealmObjectProxy, com_privacystar_core_data_model_OperationRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private OperationColumnInfo columnInfo;
    private ProxyState<Operation> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OperationRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Operation";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OperationRealmProxy$OperationColumnInfo.class */
    public static final class OperationColumnInfo extends ColumnInfo {
        long actionCodeIndex;
        long eventCodeIndex;
        long labelIndex;
        long matchValueIndex;
        long maxColumnIndexValue;
        long priorityIndex;

        OperationColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        OperationColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.priorityIndex = addColumnDetails(OperationFields.PRIORITY, OperationFields.PRIORITY, objectSchemaInfo);
            this.labelIndex = addColumnDetails("label", "label", objectSchemaInfo);
            this.matchValueIndex = addColumnDetails(OperationFields.MATCH_VALUE, OperationFields.MATCH_VALUE, objectSchemaInfo);
            this.eventCodeIndex = addColumnDetails(OperationFields.EVENT_CODE, OperationFields.EVENT_CODE, objectSchemaInfo);
            this.actionCodeIndex = addColumnDetails(OperationFields.ACTION_CODE, OperationFields.ACTION_CODE, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new OperationColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OperationColumnInfo operationColumnInfo = (OperationColumnInfo) columnInfo;
            OperationColumnInfo operationColumnInfo2 = (OperationColumnInfo) columnInfo2;
            operationColumnInfo2.priorityIndex = operationColumnInfo.priorityIndex;
            operationColumnInfo2.labelIndex = operationColumnInfo.labelIndex;
            operationColumnInfo2.matchValueIndex = operationColumnInfo.matchValueIndex;
            operationColumnInfo2.eventCodeIndex = operationColumnInfo.eventCodeIndex;
            operationColumnInfo2.actionCodeIndex = operationColumnInfo.actionCodeIndex;
            operationColumnInfo2.maxColumnIndexValue = operationColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_OperationRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static Operation copy(Realm realm, OperationColumnInfo operationColumnInfo, Operation operation, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(operation);
        if (realmObjectProxy != null) {
            return (Operation) realmObjectProxy;
        }
        Operation operation2 = operation;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Operation.class), operationColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(operationColumnInfo.priorityIndex, Integer.valueOf(operation2.realmGet$priority()));
        osObjectBuilder.addString(operationColumnInfo.labelIndex, operation2.realmGet$label());
        osObjectBuilder.addString(operationColumnInfo.matchValueIndex, operation2.realmGet$matchValue());
        osObjectBuilder.addInteger(operationColumnInfo.eventCodeIndex, Integer.valueOf(operation2.realmGet$eventCode()));
        osObjectBuilder.addInteger(operationColumnInfo.actionCodeIndex, Integer.valueOf(operation2.realmGet$actionCode()));
        com_privacystar_core_data_model_OperationRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(operation, newProxyInstance);
        return newProxyInstance;
    }

    public static Operation copyOrUpdate(Realm realm, OperationColumnInfo operationColumnInfo, Operation operation, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (operation instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) operation;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return operation;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(operation);
        return realmObjectProxy2 != null ? (Operation) realmObjectProxy2 : copy(realm, operationColumnInfo, operation, z, map, set);
    }

    public static OperationColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OperationColumnInfo(osSchemaInfo);
    }

    public static Operation createDetachedCopy(Operation operation, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Operation operation2;
        if (i > i2 || operation == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(operation);
        if (cacheData == null) {
            Operation operation3 = new Operation();
            map.put(operation, new RealmObjectProxy.CacheData<>(i, operation3));
            operation2 = operation3;
        } else if (i >= cacheData.minDepth) {
            return (Operation) cacheData.object;
        } else {
            operation2 = (Operation) cacheData.object;
            cacheData.minDepth = i;
        }
        Operation operation4 = operation2;
        Operation operation5 = operation;
        operation4.realmSet$priority(operation5.realmGet$priority());
        operation4.realmSet$label(operation5.realmGet$label());
        operation4.realmSet$matchValue(operation5.realmGet$matchValue());
        operation4.realmSet$eventCode(operation5.realmGet$eventCode());
        operation4.realmSet$actionCode(operation5.realmGet$actionCode());
        return operation2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty(OperationFields.PRIORITY, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("label", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(OperationFields.MATCH_VALUE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(OperationFields.EVENT_CODE, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(OperationFields.ACTION_CODE, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static Operation createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        Operation operation = (Operation) realm.createObjectInternal(Operation.class, true, Collections.emptyList());
        Operation operation2 = operation;
        if (jSONObject.has(OperationFields.PRIORITY)) {
            if (jSONObject.isNull(OperationFields.PRIORITY)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'priority' to null.");
            }
            operation2.realmSet$priority(jSONObject.getInt(OperationFields.PRIORITY));
        }
        if (jSONObject.has("label")) {
            if (jSONObject.isNull("label")) {
                operation2.realmSet$label(null);
            } else {
                operation2.realmSet$label(jSONObject.getString("label"));
            }
        }
        if (jSONObject.has(OperationFields.MATCH_VALUE)) {
            if (jSONObject.isNull(OperationFields.MATCH_VALUE)) {
                operation2.realmSet$matchValue(null);
            } else {
                operation2.realmSet$matchValue(jSONObject.getString(OperationFields.MATCH_VALUE));
            }
        }
        if (jSONObject.has(OperationFields.EVENT_CODE)) {
            if (jSONObject.isNull(OperationFields.EVENT_CODE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'eventCode' to null.");
            }
            operation2.realmSet$eventCode(jSONObject.getInt(OperationFields.EVENT_CODE));
        }
        if (jSONObject.has(OperationFields.ACTION_CODE)) {
            if (jSONObject.isNull(OperationFields.ACTION_CODE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'actionCode' to null.");
            }
            operation2.realmSet$actionCode(jSONObject.getInt(OperationFields.ACTION_CODE));
        }
        return operation;
    }

    @TargetApi(11)
    public static Operation createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        Operation operation = new Operation();
        Operation operation2 = operation;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(OperationFields.PRIORITY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    operation2.realmSet$priority(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'priority' to null.");
                }
            } else if (nextName.equals("label")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    operation2.realmSet$label(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    operation2.realmSet$label(null);
                }
            } else if (nextName.equals(OperationFields.MATCH_VALUE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    operation2.realmSet$matchValue(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    operation2.realmSet$matchValue(null);
                }
            } else if (nextName.equals(OperationFields.EVENT_CODE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    operation2.realmSet$eventCode(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'eventCode' to null.");
                }
            } else if (!nextName.equals(OperationFields.ACTION_CODE)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                operation2.realmSet$actionCode(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'actionCode' to null.");
            }
        }
        jsonReader.endObject();
        return (Operation) realm.copyToRealm((Realm) operation, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, Operation operation, Map<RealmModel, Long> map) {
        if (operation instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) operation;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Operation.class);
        long nativePtr = table.getNativePtr();
        OperationColumnInfo operationColumnInfo = (OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class);
        long createRow = OsObject.createRow(table);
        map.put(operation, Long.valueOf(createRow));
        long j = operationColumnInfo.priorityIndex;
        Operation operation2 = operation;
        Table.nativeSetLong(nativePtr, j, createRow, operation2.realmGet$priority(), false);
        String realmGet$label = operation2.realmGet$label();
        if (realmGet$label != null) {
            Table.nativeSetString(nativePtr, operationColumnInfo.labelIndex, createRow, realmGet$label, false);
        }
        String realmGet$matchValue = operation2.realmGet$matchValue();
        if (realmGet$matchValue != null) {
            Table.nativeSetString(nativePtr, operationColumnInfo.matchValueIndex, createRow, realmGet$matchValue, false);
        }
        Table.nativeSetLong(nativePtr, operationColumnInfo.eventCodeIndex, createRow, operation2.realmGet$eventCode(), false);
        Table.nativeSetLong(nativePtr, operationColumnInfo.actionCodeIndex, createRow, operation2.realmGet$actionCode(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Operation.class);
        long nativePtr = table.getNativePtr();
        OperationColumnInfo operationColumnInfo = (OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class);
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            if (!map.containsKey(operation)) {
                if (operation instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) operation;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(operation, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(operation, Long.valueOf(createRow));
                long j = operationColumnInfo.priorityIndex;
                Operation operation2 = operation;
                Table.nativeSetLong(nativePtr, j, createRow, operation2.realmGet$priority(), false);
                String realmGet$label = operation2.realmGet$label();
                if (realmGet$label != null) {
                    Table.nativeSetString(nativePtr, operationColumnInfo.labelIndex, createRow, realmGet$label, false);
                }
                String realmGet$matchValue = operation2.realmGet$matchValue();
                if (realmGet$matchValue != null) {
                    Table.nativeSetString(nativePtr, operationColumnInfo.matchValueIndex, createRow, realmGet$matchValue, false);
                }
                Table.nativeSetLong(nativePtr, operationColumnInfo.eventCodeIndex, createRow, operation2.realmGet$eventCode(), false);
                Table.nativeSetLong(nativePtr, operationColumnInfo.actionCodeIndex, createRow, operation2.realmGet$actionCode(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, Operation operation, Map<RealmModel, Long> map) {
        if (operation instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) operation;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Operation.class);
        long nativePtr = table.getNativePtr();
        OperationColumnInfo operationColumnInfo = (OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class);
        long createRow = OsObject.createRow(table);
        map.put(operation, Long.valueOf(createRow));
        long j = operationColumnInfo.priorityIndex;
        Operation operation2 = operation;
        Table.nativeSetLong(nativePtr, j, createRow, operation2.realmGet$priority(), false);
        String realmGet$label = operation2.realmGet$label();
        if (realmGet$label != null) {
            Table.nativeSetString(nativePtr, operationColumnInfo.labelIndex, createRow, realmGet$label, false);
        } else {
            Table.nativeSetNull(nativePtr, operationColumnInfo.labelIndex, createRow, false);
        }
        String realmGet$matchValue = operation2.realmGet$matchValue();
        if (realmGet$matchValue != null) {
            Table.nativeSetString(nativePtr, operationColumnInfo.matchValueIndex, createRow, realmGet$matchValue, false);
        } else {
            Table.nativeSetNull(nativePtr, operationColumnInfo.matchValueIndex, createRow, false);
        }
        Table.nativeSetLong(nativePtr, operationColumnInfo.eventCodeIndex, createRow, operation2.realmGet$eventCode(), false);
        Table.nativeSetLong(nativePtr, operationColumnInfo.actionCodeIndex, createRow, operation2.realmGet$actionCode(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Operation.class);
        long nativePtr = table.getNativePtr();
        OperationColumnInfo operationColumnInfo = (OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class);
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            if (!map.containsKey(operation)) {
                if (operation instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) operation;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(operation, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(operation, Long.valueOf(createRow));
                long j = operationColumnInfo.priorityIndex;
                Operation operation2 = operation;
                Table.nativeSetLong(nativePtr, j, createRow, operation2.realmGet$priority(), false);
                String realmGet$label = operation2.realmGet$label();
                if (realmGet$label != null) {
                    Table.nativeSetString(nativePtr, operationColumnInfo.labelIndex, createRow, realmGet$label, false);
                } else {
                    Table.nativeSetNull(nativePtr, operationColumnInfo.labelIndex, createRow, false);
                }
                String realmGet$matchValue = operation2.realmGet$matchValue();
                if (realmGet$matchValue != null) {
                    Table.nativeSetString(nativePtr, operationColumnInfo.matchValueIndex, createRow, realmGet$matchValue, false);
                } else {
                    Table.nativeSetNull(nativePtr, operationColumnInfo.matchValueIndex, createRow, false);
                }
                Table.nativeSetLong(nativePtr, operationColumnInfo.eventCodeIndex, createRow, operation2.realmGet$eventCode(), false);
                Table.nativeSetLong(nativePtr, operationColumnInfo.actionCodeIndex, createRow, operation2.realmGet$actionCode(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_OperationRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(Operation.class), false, Collections.emptyList());
        com_privacystar_core_data_model_OperationRealmProxy com_privacystar_core_data_model_operationrealmproxy = new com_privacystar_core_data_model_OperationRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_operationrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_OperationRealmProxy com_privacystar_core_data_model_operationrealmproxy = (com_privacystar_core_data_model_OperationRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_operationrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_operationrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_operationrealmproxy.proxyState.getRow$realm().getIndex();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
            this.columnInfo = (OperationColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$actionCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.actionCodeIndex);
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$eventCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.eventCodeIndex);
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public String realmGet$label() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.labelIndex);
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public String realmGet$matchValue() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.matchValueIndex);
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public int realmGet$priority() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.priorityIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$actionCode(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.actionCodeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.actionCodeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$eventCode(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.eventCodeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.eventCodeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$label(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.labelIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.labelIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.labelIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.labelIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$matchValue(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.matchValueIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.matchValueIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.matchValueIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.matchValueIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Operation, io.realm.com_privacystar_core_data_model_OperationRealmProxyInterface
    public void realmSet$priority(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.priorityIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.priorityIndex, row$realm.getIndex(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("Operation = proxy[");
        sb.append("{priority:");
        sb.append(realmGet$priority());
        sb.append("}");
        sb.append(",");
        sb.append("{label:");
        sb.append(realmGet$label() != null ? realmGet$label() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{matchValue:");
        sb.append(realmGet$matchValue() != null ? realmGet$matchValue() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{eventCode:");
        sb.append(realmGet$eventCode());
        sb.append("}");
        sb.append(",");
        sb.append("{actionCode:");
        sb.append(realmGet$actionCode());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
