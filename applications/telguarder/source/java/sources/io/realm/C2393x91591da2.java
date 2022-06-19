package io.realm;

import android.util.JsonReader;
import android.util.JsonToken;
import com.telguarder.features.postCallStatistics.CallHistoryItem;
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
/* renamed from: io.realm.com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy.class */
public class C2393x91591da2 extends CallHistoryItem implements RealmObjectProxy, AbstractC2394x6078a5b7 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallHistoryItemColumnInfo columnInfo;
    private ProxyState<CallHistoryItem> proxyState;

    /* renamed from: io.realm.com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo.class */
    public static final class CallHistoryItemColumnInfo extends ColumnInfo {
        long dateColKey;
        long durationColKey;
        long numberColKey;
        long typeColKey;

        CallHistoryItemColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        CallHistoryItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberColKey = addColumnDetails("number", "number", objectSchemaInfo);
            this.dateColKey = addColumnDetails("date", "date", objectSchemaInfo);
            this.typeColKey = addColumnDetails("type", "type", objectSchemaInfo);
            this.durationColKey = addColumnDetails("duration", "duration", objectSchemaInfo);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new CallHistoryItemColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallHistoryItemColumnInfo callHistoryItemColumnInfo = (CallHistoryItemColumnInfo) columnInfo;
            CallHistoryItemColumnInfo callHistoryItemColumnInfo2 = (CallHistoryItemColumnInfo) columnInfo2;
            callHistoryItemColumnInfo2.numberColKey = callHistoryItemColumnInfo.numberColKey;
            callHistoryItemColumnInfo2.dateColKey = callHistoryItemColumnInfo.dateColKey;
            callHistoryItemColumnInfo2.typeColKey = callHistoryItemColumnInfo.typeColKey;
            callHistoryItemColumnInfo2.durationColKey = callHistoryItemColumnInfo.durationColKey;
        }
    }

    /* renamed from: io.realm.com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CallHistoryItem";
    }

    public C2393x91591da2() {
        this.proxyState.setConstructionFinished();
    }

    public static CallHistoryItem copy(Realm realm, CallHistoryItemColumnInfo callHistoryItemColumnInfo, CallHistoryItem callHistoryItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(callHistoryItem);
        if (realmObjectProxy != null) {
            return (CallHistoryItem) realmObjectProxy;
        }
        CallHistoryItem callHistoryItem2 = callHistoryItem;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CallHistoryItem.class), set);
        osObjectBuilder.addString(callHistoryItemColumnInfo.numberColKey, callHistoryItem2.realmGet$number());
        osObjectBuilder.addInteger(callHistoryItemColumnInfo.dateColKey, Long.valueOf(callHistoryItem2.realmGet$date()));
        osObjectBuilder.addInteger(callHistoryItemColumnInfo.typeColKey, Integer.valueOf(callHistoryItem2.realmGet$type()));
        osObjectBuilder.addInteger(callHistoryItemColumnInfo.durationColKey, Integer.valueOf(callHistoryItem2.realmGet$duration()));
        C2393x91591da2 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(callHistoryItem, newProxyInstance);
        return newProxyInstance;
    }

    public static CallHistoryItem copyOrUpdate(Realm realm, CallHistoryItemColumnInfo callHistoryItemColumnInfo, CallHistoryItem callHistoryItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((callHistoryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(callHistoryItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callHistoryItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (realm$realm.getPath().equals(realm.getPath())) {
                    return callHistoryItem;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(callHistoryItem);
        return realmObjectProxy2 != null ? (CallHistoryItem) realmObjectProxy2 : copy(realm, callHistoryItemColumnInfo, callHistoryItem, z, map, set);
    }

    public static CallHistoryItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallHistoryItemColumnInfo(osSchemaInfo);
    }

    public static CallHistoryItem createDetachedCopy(CallHistoryItem callHistoryItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CallHistoryItem callHistoryItem2;
        if (i > i2 || callHistoryItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(callHistoryItem);
        if (cacheData == null) {
            CallHistoryItem callHistoryItem3 = new CallHistoryItem();
            map.put(callHistoryItem, new RealmObjectProxy.CacheData<>(i, callHistoryItem3));
            callHistoryItem2 = callHistoryItem3;
        } else if (i >= cacheData.minDepth) {
            return (CallHistoryItem) cacheData.object;
        } else {
            callHistoryItem2 = (CallHistoryItem) cacheData.object;
            cacheData.minDepth = i;
        }
        CallHistoryItem callHistoryItem4 = callHistoryItem2;
        CallHistoryItem callHistoryItem5 = callHistoryItem;
        callHistoryItem4.realmSet$number(callHistoryItem5.realmGet$number());
        callHistoryItem4.realmSet$date(callHistoryItem5.realmGet$date());
        callHistoryItem4.realmSet$type(callHistoryItem5.realmGet$type());
        callHistoryItem4.realmSet$duration(callHistoryItem5.realmGet$duration());
        return callHistoryItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, false, 4, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("date", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("duration", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static CallHistoryItem createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CallHistoryItem callHistoryItem = (CallHistoryItem) realm.createObjectInternal(CallHistoryItem.class, true, Collections.emptyList());
        CallHistoryItem callHistoryItem2 = callHistoryItem;
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                callHistoryItem2.realmSet$number(null);
            } else {
                callHistoryItem2.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("date")) {
            if (jSONObject.isNull("date")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
            }
            callHistoryItem2.realmSet$date(jSONObject.getLong("date"));
        }
        if (jSONObject.has("type")) {
            if (jSONObject.isNull("type")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
            callHistoryItem2.realmSet$type(jSONObject.getInt("type"));
        }
        if (jSONObject.has("duration")) {
            if (jSONObject.isNull("duration")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'duration' to null.");
            }
            callHistoryItem2.realmSet$duration(jSONObject.getInt("duration"));
        }
        return callHistoryItem;
    }

    public static CallHistoryItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CallHistoryItem callHistoryItem = new CallHistoryItem();
        CallHistoryItem callHistoryItem2 = callHistoryItem;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    callHistoryItem2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    callHistoryItem2.realmSet$number(null);
                }
            } else if (nextName.equals("date")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
                }
                callHistoryItem2.realmSet$date(jsonReader.nextLong());
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
                callHistoryItem2.realmSet$type(jsonReader.nextInt());
            } else if (!nextName.equals("duration")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'duration' to null.");
            } else {
                callHistoryItem2.realmSet$duration(jsonReader.nextInt());
            }
        }
        jsonReader.endObject();
        return (CallHistoryItem) realm.copyToRealm((Realm) callHistoryItem, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CallHistoryItem callHistoryItem, Map<RealmModel, Long> map) {
        if ((callHistoryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(callHistoryItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callHistoryItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(CallHistoryItem.class);
        long nativePtr = table.getNativePtr();
        CallHistoryItemColumnInfo callHistoryItemColumnInfo = (CallHistoryItemColumnInfo) realm.getSchema().getColumnInfo(CallHistoryItem.class);
        long createRow = OsObject.createRow(table);
        map.put(callHistoryItem, Long.valueOf(createRow));
        CallHistoryItem callHistoryItem2 = callHistoryItem;
        String realmGet$number = callHistoryItem2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, realmGet$number, false);
        }
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.dateColKey, createRow, callHistoryItem2.realmGet$date(), false);
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.typeColKey, createRow, callHistoryItem2.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.durationColKey, createRow, callHistoryItem2.realmGet$duration(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallHistoryItem.class);
        long nativePtr = table.getNativePtr();
        CallHistoryItemColumnInfo callHistoryItemColumnInfo = (CallHistoryItemColumnInfo) realm.getSchema().getColumnInfo(CallHistoryItem.class);
        while (it.hasNext()) {
            CallHistoryItem callHistoryItem = (CallHistoryItem) it.next();
            if (!map.containsKey(callHistoryItem)) {
                if ((callHistoryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(callHistoryItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callHistoryItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callHistoryItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(callHistoryItem, Long.valueOf(createRow));
                CallHistoryItem callHistoryItem2 = callHistoryItem;
                String realmGet$number = callHistoryItem2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, realmGet$number, false);
                }
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.dateColKey, createRow, callHistoryItem2.realmGet$date(), false);
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.typeColKey, createRow, callHistoryItem2.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.durationColKey, createRow, callHistoryItem2.realmGet$duration(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CallHistoryItem callHistoryItem, Map<RealmModel, Long> map) {
        if ((callHistoryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(callHistoryItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callHistoryItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(CallHistoryItem.class);
        long nativePtr = table.getNativePtr();
        CallHistoryItemColumnInfo callHistoryItemColumnInfo = (CallHistoryItemColumnInfo) realm.getSchema().getColumnInfo(CallHistoryItem.class);
        long createRow = OsObject.createRow(table);
        map.put(callHistoryItem, Long.valueOf(createRow));
        CallHistoryItem callHistoryItem2 = callHistoryItem;
        String realmGet$number = callHistoryItem2.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, false);
        }
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.dateColKey, createRow, callHistoryItem2.realmGet$date(), false);
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.typeColKey, createRow, callHistoryItem2.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.durationColKey, createRow, callHistoryItem2.realmGet$duration(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CallHistoryItem.class);
        long nativePtr = table.getNativePtr();
        CallHistoryItemColumnInfo callHistoryItemColumnInfo = (CallHistoryItemColumnInfo) realm.getSchema().getColumnInfo(CallHistoryItem.class);
        while (it.hasNext()) {
            CallHistoryItem callHistoryItem = (CallHistoryItem) it.next();
            if (!map.containsKey(callHistoryItem)) {
                if ((callHistoryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(callHistoryItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) callHistoryItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(callHistoryItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(callHistoryItem, Long.valueOf(createRow));
                CallHistoryItem callHistoryItem2 = callHistoryItem;
                String realmGet$number = callHistoryItem2.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, callHistoryItemColumnInfo.numberColKey, createRow, false);
                }
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.dateColKey, createRow, callHistoryItem2.realmGet$date(), false);
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.typeColKey, createRow, callHistoryItem2.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, callHistoryItemColumnInfo.durationColKey, createRow, callHistoryItem2.realmGet$duration(), false);
            }
        }
    }

    static C2393x91591da2 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CallHistoryItem.class), false, Collections.emptyList());
        C2393x91591da2 c2393x91591da2 = new C2393x91591da2();
        realmObjectContext.clear();
        return c2393x91591da2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2393x91591da2 c2393x91591da2 = (C2393x91591da2) obj;
        BaseRealm realm$realm = this.proxyState.getRealm$realm();
        BaseRealm realm$realm2 = c2393x91591da2.proxyState.getRealm$realm();
        String path = realm$realm.getPath();
        String path2 = realm$realm2.getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        if (realm$realm.isFrozen() != realm$realm2.isFrozen() || !realm$realm.sharedRealm.getVersionID().equals(realm$realm2.sharedRealm.getVersionID())) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = c2393x91591da2.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getObjectKey() == c2393x91591da2.proxyState.getRow$realm().getObjectKey();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long objectKey = this.proxyState.getRow$realm().getObjectKey();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        this.columnInfo = (CallHistoryItemColumnInfo) realmObjectContext.getColumnInfo();
        ProxyState<CallHistoryItem> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        proxyState.setRealm$realm(realmObjectContext.getRealm());
        this.proxyState.setRow$realm(realmObjectContext.getRow());
        this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public long realmGet$date() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.dateColKey);
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public int realmGet$duration() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.durationColKey);
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberColKey);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeColKey);
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public void realmSet$date(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.dateColKey, j);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.dateColKey, row$realm.getObjectKey(), j, true);
        }
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public void realmSet$duration(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.durationColKey, i);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.durationColKey, row$realm.getObjectKey(), i, true);
        }
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.numberColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.numberColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.numberColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.postCallStatistics.CallHistoryItem, io.realm.AbstractC2394x6078a5b7
    public void realmSet$type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeColKey, i);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeColKey, row$realm.getObjectKey(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("CallHistoryItem = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{date:");
        sb.append(realmGet$date());
        sb.append("}");
        sb.append(",");
        sb.append("{type:");
        sb.append(realmGet$type());
        sb.append("}");
        sb.append(",");
        sb.append("{duration:");
        sb.append(realmGet$duration());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
