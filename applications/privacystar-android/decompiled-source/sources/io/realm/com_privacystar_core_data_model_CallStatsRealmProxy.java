package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.CallStats;
import com.privacystar.core.data.model.CallStatsFields;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.android.JsonUtils;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallStatsRealmProxy.class */
public class com_privacystar_core_data_model_CallStatsRealmProxy extends CallStats implements RealmObjectProxy, com_privacystar_core_data_model_CallStatsRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallStatsColumnInfo columnInfo;
    private ProxyState<CallStats> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallStatsRealmProxy$CallStatsColumnInfo.class */
    public static final class CallStatsColumnInfo extends ColumnInfo {
        long categoryIdIndex;
        long maxColumnIndexValue;
        long numberIndex;
        long occurredIndex;

        CallStatsColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        CallStatsColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.categoryIdIndex = addColumnDetails("categoryId", "categoryId", objectSchemaInfo);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.occurredIndex = addColumnDetails(CallStatsFields.OCCURRED, CallStatsFields.OCCURRED, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new CallStatsColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallStatsColumnInfo callStatsColumnInfo = (CallStatsColumnInfo) columnInfo;
            CallStatsColumnInfo callStatsColumnInfo2 = (CallStatsColumnInfo) columnInfo2;
            callStatsColumnInfo2.categoryIdIndex = callStatsColumnInfo.categoryIdIndex;
            callStatsColumnInfo2.numberIndex = callStatsColumnInfo.numberIndex;
            callStatsColumnInfo2.occurredIndex = callStatsColumnInfo.occurredIndex;
            callStatsColumnInfo2.maxColumnIndexValue = callStatsColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_CallStatsRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CallStats";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_CallStatsRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static CallStats copy(Realm realm, CallStatsColumnInfo callStatsColumnInfo, CallStats callStats, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(callStats);
        if (realmObjectProxy != null) {
            return (CallStats) realmObjectProxy;
        }
        CallStats callStats2 = callStats;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CallStats.class), callStatsColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(callStatsColumnInfo.categoryIdIndex, Integer.valueOf(callStats2.realmGet$categoryId()));
        osObjectBuilder.addString(callStatsColumnInfo.numberIndex, callStats2.realmGet$number());
        osObjectBuilder.addDate(callStatsColumnInfo.occurredIndex, callStats2.realmGet$occurred());
        com_privacystar_core_data_model_CallStatsRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(callStats, newProxyInstance);
        return newProxyInstance;
    }

    public static CallStats copyOrUpdate(Realm realm, CallStatsColumnInfo callStatsColumnInfo, CallStats callStats, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (callStats instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callStats;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return callStats;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(callStats);
        return realmObjectProxy2 != null ? (CallStats) realmObjectProxy2 : copy(realm, callStatsColumnInfo, callStats, z, map, set);
    }

    public static CallStatsColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallStatsColumnInfo(osSchemaInfo);
    }

    public static CallStats createDetachedCopy(CallStats callStats, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CallStats callStats2;
        if (i > i2 || callStats == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(callStats);
        if (cacheData == null) {
            CallStats callStats3 = new CallStats();
            map.put(callStats, new RealmObjectProxy.CacheData<>(i, callStats3));
            callStats2 = callStats3;
        } else if (i >= cacheData.minDepth) {
            return (CallStats) cacheData.object;
        } else {
            callStats2 = (CallStats) cacheData.object;
            cacheData.minDepth = i;
        }
        CallStats callStats4 = callStats2;
        CallStats callStats5 = callStats;
        callStats4.realmSet$categoryId(callStats5.realmGet$categoryId());
        callStats4.realmSet$number(callStats5.realmGet$number());
        callStats4.realmSet$occurred(callStats5.realmGet$occurred());
        return callStats2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("categoryId", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty(CallStatsFields.OCCURRED, RealmFieldType.DATE, false, false, true);
        return builder.build();
    }

    public static CallStats createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CallStats callStats = (CallStats) realm.createObjectInternal(CallStats.class, true, Collections.emptyList());
        CallStats callStats2 = callStats;
        if (jSONObject.has("categoryId")) {
            if (jSONObject.isNull("categoryId")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'categoryId' to null.");
            }
            callStats2.realmSet$categoryId(jSONObject.getInt("categoryId"));
        }
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                callStats2.realmSet$number(null);
            } else {
                callStats2.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has(CallStatsFields.OCCURRED)) {
            if (jSONObject.isNull(CallStatsFields.OCCURRED)) {
                callStats2.realmSet$occurred(null);
            } else {
                Object obj = jSONObject.get(CallStatsFields.OCCURRED);
                if (obj instanceof String) {
                    callStats2.realmSet$occurred(JsonUtils.stringToDate((String) obj));
                } else {
                    callStats2.realmSet$occurred(new Date(jSONObject.getLong(CallStatsFields.OCCURRED)));
                }
            }
        }
        return callStats;
    }

    @TargetApi(11)
    public static CallStats createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CallStats callStats = new CallStats();
        CallStats callStats2 = callStats;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("categoryId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callStats2.realmSet$categoryId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categoryId' to null.");
                }
            } else if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callStats2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callStats2.realmSet$number(null);
                }
            } else if (!nextName.equals(CallStatsFields.OCCURRED)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                callStats2.realmSet$occurred(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    callStats2.realmSet$occurred(new Date(nextLong));
                }
            } else {
                callStats2.realmSet$occurred(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        return (CallStats) realm.copyToRealm((Realm) callStats, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CallStats callStats, Map<RealmModel, Long> map) {
        if (callStats instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callStats;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CallStats.class);
        long nativePtr = table.getNativePtr();
        CallStatsColumnInfo callStatsColumnInfo = (CallStatsColumnInfo) realm.getSchema().getColumnInfo(CallStats.class);
        long createRow = OsObject.createRow(table);
        map.put(callStats, Long.valueOf(createRow));
        long j = callStatsColumnInfo.categoryIdIndex;
        CallStats callStats2 = callStats;
        Table.nativeSetLong(nativePtr, j, createRow, callStats2.realmGet$categoryId(), false);
        String realmGet$number = callStats2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, callStatsColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        Date realmGet$occurred = callStats2.realmGet$occurred();
        if (realmGet$occurred != null) {
            Table.nativeSetTimestamp(nativePtr, callStatsColumnInfo.occurredIndex, createRow, realmGet$occurred.getTime(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallStats.class);
        long nativePtr = table.getNativePtr();
        CallStatsColumnInfo callStatsColumnInfo = (CallStatsColumnInfo) realm.getSchema().getColumnInfo(CallStats.class);
        while (it.hasNext()) {
            CallStats callStats = (CallStats) it.next();
            if (!map.containsKey(callStats)) {
                if (callStats instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callStats;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callStats, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(callStats, Long.valueOf(createRow));
                long j = callStatsColumnInfo.categoryIdIndex;
                CallStats callStats2 = callStats;
                Table.nativeSetLong(nativePtr, j, createRow, callStats2.realmGet$categoryId(), false);
                String realmGet$number = callStats2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, callStatsColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                Date realmGet$occurred = callStats2.realmGet$occurred();
                if (realmGet$occurred != null) {
                    Table.nativeSetTimestamp(nativePtr, callStatsColumnInfo.occurredIndex, createRow, realmGet$occurred.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CallStats callStats, Map<RealmModel, Long> map) {
        if (callStats instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callStats;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(CallStats.class);
        long nativePtr = table.getNativePtr();
        CallStatsColumnInfo callStatsColumnInfo = (CallStatsColumnInfo) realm.getSchema().getColumnInfo(CallStats.class);
        long createRow = OsObject.createRow(table);
        map.put(callStats, Long.valueOf(createRow));
        long j = callStatsColumnInfo.categoryIdIndex;
        CallStats callStats2 = callStats;
        Table.nativeSetLong(nativePtr, j, createRow, callStats2.realmGet$categoryId(), false);
        String realmGet$number = callStats2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, callStatsColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, callStatsColumnInfo.numberIndex, createRow, false);
        }
        Date realmGet$occurred = callStats2.realmGet$occurred();
        if (realmGet$occurred != null) {
            Table.nativeSetTimestamp(nativePtr, callStatsColumnInfo.occurredIndex, createRow, realmGet$occurred.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, callStatsColumnInfo.occurredIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallStats.class);
        long nativePtr = table.getNativePtr();
        CallStatsColumnInfo callStatsColumnInfo = (CallStatsColumnInfo) realm.getSchema().getColumnInfo(CallStats.class);
        while (it.hasNext()) {
            CallStats callStats = (CallStats) it.next();
            if (!map.containsKey(callStats)) {
                if (callStats instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callStats;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callStats, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(callStats, Long.valueOf(createRow));
                long j = callStatsColumnInfo.categoryIdIndex;
                CallStats callStats2 = callStats;
                Table.nativeSetLong(nativePtr, j, createRow, callStats2.realmGet$categoryId(), false);
                String realmGet$number = callStats2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, callStatsColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, callStatsColumnInfo.numberIndex, createRow, false);
                }
                Date realmGet$occurred = callStats2.realmGet$occurred();
                if (realmGet$occurred != null) {
                    Table.nativeSetTimestamp(nativePtr, callStatsColumnInfo.occurredIndex, createRow, realmGet$occurred.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, callStatsColumnInfo.occurredIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_CallStatsRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CallStats.class), false, Collections.emptyList());
        com_privacystar_core_data_model_CallStatsRealmProxy com_privacystar_core_data_model_callstatsrealmproxy = new com_privacystar_core_data_model_CallStatsRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_callstatsrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_CallStatsRealmProxy com_privacystar_core_data_model_callstatsrealmproxy = (com_privacystar_core_data_model_CallStatsRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_callstatsrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_callstatsrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_callstatsrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (CallStatsColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public int realmGet$categoryId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.categoryIdIndex);
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public Date realmGet$occurred() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.occurredIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$categoryId(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.categoryIdIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.categoryIdIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
            }
            this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
            }
            row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
        }
    }

    @Override // com.privacystar.core.data.model.CallStats, io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$occurred(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'occurred' to null.");
            }
            this.proxyState.getRow$realm().setDate(this.columnInfo.occurredIndex, date);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'occurred' to null.");
            }
            row$realm.getTable().setDate(this.columnInfo.occurredIndex, row$realm.getIndex(), date, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "CallStats = proxy[{categoryId:" + realmGet$categoryId() + "},{number:" + realmGet$number() + "},{occurred:" + realmGet$occurred() + "}]";
    }
}
